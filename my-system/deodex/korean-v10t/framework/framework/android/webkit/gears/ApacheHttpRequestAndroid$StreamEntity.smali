.class Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;
.super Ljava/lang/Object;
.source "ApacheHttpRequestAndroid.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/gears/ApacheHttpRequestAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StreamEntity"
.end annotation


# instance fields
.field private mOutputStream:Ljava/io/OutputStream;

.field final synthetic this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;


# direct methods
.method constructor <init>(Landroid/webkit/gears/ApacheHttpRequestAndroid;)V
    .registers 2
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private write(Landroid/webkit/gears/ApacheHttpRequestAndroid$DataPacket;)V
    .registers 7
    .parameter "packet"

    .prologue
    .line 402
    :try_start_0
    iget-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->mOutputStream:Ljava/io/OutputStream;

    if-nez v1, :cond_5

    .line 418
    :goto_4
    return-void

    .line 408
    :cond_5
    iget-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Landroid/webkit/gears/ApacheHttpRequestAndroid$DataPacket;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/webkit/gears/ApacheHttpRequestAndroid$DataPacket;->getLength()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 409
    iget-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_4

    .line 410
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 414
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v1}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$400(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 415
    iget-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$502(Landroid/webkit/gears/ApacheHttpRequestAndroid;Z)Z

    .line 416
    iget-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v1}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$400(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_4
.end method


# virtual methods
.method public consumeContent()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 351
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 343
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v0}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$700(Landroid/webkit/gears/ApacheHttpRequestAndroid;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 347
    const/4 v0, 0x0

    return-object v0
.end method

.method public isChunked()Z
    .registers 2

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .registers 3

    .prologue
    .line 421
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v0}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$800(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 423
    :try_start_9
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->mOutputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_16

    .line 424
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v0}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$900(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_25
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_16} :catch_32

    .line 432
    :cond_16
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v0}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$800(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 434
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->mOutputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_30

    .line 435
    const/4 v0, 0x0

    .line 437
    :goto_24
    return v0

    .line 432
    :catchall_25
    move-exception v0

    iget-object v1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v1}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$800(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 437
    :cond_30
    const/4 v0, 0x1

    goto :goto_24

    .line 426
    :catch_32
    move-exception v0

    .line 432
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v0}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$800(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    goto :goto_1c
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 391
    const/4 v0, 0x1

    return v0
.end method

.method public signalOutputStream()V
    .registers 2

    .prologue
    .line 441
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v0}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$800(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 442
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v0}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$900(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 443
    iget-object v0, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v0}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$800(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 444
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    iget-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v2}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$800(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 361
    iput-object p1, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->mOutputStream:Ljava/io/OutputStream;

    .line 362
    iget-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v2}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$900(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 363
    iget-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v2}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$800(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 366
    const/4 v0, 0x0

    .line 367
    .local v0, finished:Z
    :goto_1e
    if-nez v0, :cond_56

    .line 368
    iget-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v2}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$1000(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Landroid/webkit/gears/ApacheHttpRequestAndroid$Buffer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/gears/ApacheHttpRequestAndroid$Buffer;->get()Landroid/webkit/gears/ApacheHttpRequestAndroid$DataPacket;

    move-result-object v1

    .line 369
    .local v1, packet:Landroid/webkit/gears/ApacheHttpRequestAndroid$DataPacket;
    if-nez v1, :cond_52

    .line 370
    const/4 v0, 0x1

    .line 374
    :goto_2d
    iget-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v2}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$1100(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Landroid/webkit/gears/ApacheHttpRequestAndroid$SignalConsumed;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/gears/ApacheHttpRequestAndroid$SignalConsumed;->packetConsumed()V

    .line 375
    iget-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v2}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$400(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 376
    iget-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v2}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$500(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 380
    const/4 v0, 0x1

    .line 382
    :cond_48
    iget-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->this$0:Landroid/webkit/gears/ApacheHttpRequestAndroid;

    invoke-static {v2}, Landroid/webkit/gears/ApacheHttpRequestAndroid;->access$400(Landroid/webkit/gears/ApacheHttpRequestAndroid;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1e

    .line 372
    :cond_52
    invoke-direct {p0, v1}, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->write(Landroid/webkit/gears/ApacheHttpRequestAndroid$DataPacket;)V

    goto :goto_2d

    .line 387
    .end local v1           #packet:Landroid/webkit/gears/ApacheHttpRequestAndroid$DataPacket;
    :cond_56
    iget-object v2, p0, Landroid/webkit/gears/ApacheHttpRequestAndroid$StreamEntity;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 388
    return-void
.end method
