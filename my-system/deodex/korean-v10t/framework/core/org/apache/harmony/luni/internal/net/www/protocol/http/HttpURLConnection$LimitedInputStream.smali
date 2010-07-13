.class Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;
.super Ljava/io/InputStream;
.source "HttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LimitedInputStream"
.end annotation


# instance fields
.field bytesRemaining:I

.field final synthetic this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;I)V
    .registers 3
    .parameter
    .parameter "length"

    .prologue
    .line 231
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 232
    iput p2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->bytesRemaining:I

    .line 233
    return-void
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
    .line 255
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->bytesRemaining:I

    if-gtz v1, :cond_6

    .line 257
    const/4 v1, 0x0

    .line 264
    :goto_5
    return v1

    .line 260
    :cond_6
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$000(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 261
    .local v0, result:I
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->bytesRemaining:I

    if-le v0, v1, :cond_17

    .line 262
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->bytesRemaining:I

    goto :goto_5

    :cond_17
    move v1, v0

    .line 264
    goto :goto_5
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 237
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->bytesRemaining:I

    if-lez v0, :cond_27

    .line 238
    iput v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->bytesRemaining:I

    .line 239
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$700(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;Z)V

    .line 247
    :goto_d
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$800(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$600(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 248
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$600(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/CacheRequest;->abort()V

    .line 250
    :cond_26
    return-void

    .line 241
    :cond_27
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$700(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;Z)V

    goto :goto_d
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 269
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->bytesRemaining:I

    if-gtz v1, :cond_c

    .line 270
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$700(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;Z)V

    .line 271
    const/4 v1, -0x1

    .line 283
    :goto_b
    return v1

    .line 273
    :cond_c
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$000(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 276
    .local v0, result:I
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$900(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$200(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 277
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$200(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 279
    :cond_2f
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->bytesRemaining:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->bytesRemaining:I

    .line 280
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->bytesRemaining:I

    if-gtz v1, :cond_3e

    .line 281
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$700(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;Z)V

    :cond_3e
    move v1, v0

    .line 283
    goto :goto_b
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
    const/4 v2, 0x0

    .line 288
    if-nez p1, :cond_9

    .line 289
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 292
    :cond_9
    if-ltz p2, :cond_14

    if-ltz p3, :cond_14

    array-length v1, p1

    if-gt p2, v1, :cond_14

    array-length v1, p1

    sub-int/2addr v1, p2

    if-ge v1, p3, :cond_1a

    .line 294
    :cond_14
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 296
    :cond_1a
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->bytesRemaining:I

    if-gtz v1, :cond_25

    .line 297
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$700(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;Z)V

    .line 298
    const/4 v1, -0x1

    .line 315
    :goto_24
    return v1

    .line 300
    :cond_25
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->bytesRemaining:I

    if-le p3, v1, :cond_2b

    .line 301
    iget p3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->bytesRemaining:I

    .line 303
    :cond_2b
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$000(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 304
    .local v0, result:I
    if-lez v0, :cond_55

    .line 305
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->bytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->bytesRemaining:I

    .line 308
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$1000(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$200(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_55

    .line 309
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$200(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 312
    :cond_55
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->bytesRemaining:I

    if-gtz v1, :cond_5e

    .line 313
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$700(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;Z)V

    :cond_5e
    move v1, v0

    .line 315
    goto :goto_24
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
    const/4 v5, 0x0

    .line 319
    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->bytesRemaining:I

    if-gtz v2, :cond_d

    .line 320
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v2, v5}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$700(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;Z)V

    .line 321
    const-wide/16 v2, -0x1

    .line 333
    :goto_c
    return-wide v2

    .line 323
    :cond_d
    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->bytesRemaining:I

    if-le p1, v2, :cond_13

    .line 324
    iget p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->bytesRemaining:I

    .line 326
    :cond_13
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$000(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v2

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 327
    .local v0, result:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2b

    .line 328
    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->bytesRemaining:I

    int-to-long v2, v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->bytesRemaining:I

    .line 330
    :cond_2b
    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->bytesRemaining:I

    if-gtz v2, :cond_34

    .line 331
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$LimitedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v2, v5}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$700(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;Z)V

    :cond_34
    move-wide v2, v0

    .line 333
    goto :goto_c
.end method
