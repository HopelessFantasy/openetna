.class Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;
.super Ljava/io/OutputStream;
.source "OpenSSLSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSLOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 541
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 546
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->startHandshake()V

    .line 547
    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$400(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 555
    :try_start_7
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    invoke-static {v1, p1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$500(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;I)V

    .line 556
    monitor-exit v0

    .line 557
    return-void

    .line 556
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public write([BII)V
    .registers 6
    .parameter "b"
    .parameter "start"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$400(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 565
    :try_start_7
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    invoke-static {v1, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$600(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;[BII)V

    .line 566
    monitor-exit v0

    .line 567
    return-void

    .line 566
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method
