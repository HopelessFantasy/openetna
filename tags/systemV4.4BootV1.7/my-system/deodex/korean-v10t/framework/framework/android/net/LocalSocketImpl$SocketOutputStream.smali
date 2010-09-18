.class Landroid/net/LocalSocketImpl$SocketOutputStream;
.super Ljava/io/OutputStream;
.source "LocalSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LocalSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/LocalSocketImpl;


# direct methods
.method constructor <init>(Landroid/net/LocalSocketImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

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
    .line 107
    iget-object v0, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->close()V

    .line 108
    return-void
.end method

.method public write(I)V
    .registers 6
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v1}, Landroid/net/LocalSocketImpl;->access$500(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 134
    :try_start_7
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v2}, Landroid/net/LocalSocketImpl;->access$000(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 135
    .local v0, myFd:Ljava/io/FileDescriptor;
    if-nez v0, :cond_1a

    new-instance v2, Ljava/io/IOException;

    const-string v3, "socket closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 137
    .end local v0           #myFd:Ljava/io/FileDescriptor;
    :catchall_17
    move-exception v2

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v2

    .line 136
    .restart local v0       #myFd:Ljava/io/FileDescriptor;
    :cond_1a
    :try_start_1a
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v2, p1, v0}, Landroid/net/LocalSocketImpl;->access$700(Landroid/net/LocalSocketImpl;ILjava/io/FileDescriptor;)V

    .line 137
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_17

    .line 138
    return-void
.end method

.method public write([B)V
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/LocalSocketImpl$SocketOutputStream;->write([BII)V

    .line 114
    return-void
.end method

.method public write([BII)V
    .registers 8
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v1}, Landroid/net/LocalSocketImpl;->access$500(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 120
    :try_start_7
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v2}, Landroid/net/LocalSocketImpl;->access$000(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 121
    .local v0, myFd:Ljava/io/FileDescriptor;
    if-nez v0, :cond_1a

    new-instance v2, Ljava/io/IOException;

    const-string v3, "socket closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    .end local v0           #myFd:Ljava/io/FileDescriptor;
    :catchall_17
    move-exception v2

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v2

    .line 123
    .restart local v0       #myFd:Ljava/io/FileDescriptor;
    :cond_1a
    if-ltz p2, :cond_23

    if-ltz p3, :cond_23

    add-int v2, p2, p3

    :try_start_20
    array-length v3, p1

    if-le v2, v3, :cond_29

    .line 124
    :cond_23
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 126
    :cond_29
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketOutputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v2, p1, p2, p3, v0}, Landroid/net/LocalSocketImpl;->access$600(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)V

    .line 127
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_17

    .line 128
    return-void
.end method
