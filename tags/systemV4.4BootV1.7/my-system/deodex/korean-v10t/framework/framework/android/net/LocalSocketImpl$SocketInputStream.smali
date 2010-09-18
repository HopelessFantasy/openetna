.class Landroid/net/LocalSocketImpl$SocketInputStream;
.super Ljava/io/InputStream;
.source "LocalSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LocalSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/LocalSocketImpl;


# direct methods
.method constructor <init>(Landroid/net/LocalSocketImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

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
    .line 53
    iget-object v0, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    iget-object v1, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v1}, Landroid/net/LocalSocketImpl;->access$000(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/LocalSocketImpl;->access$100(Landroid/net/LocalSocketImpl;Ljava/io/FileDescriptor;)I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-virtual {v0}, Landroid/net/LocalSocketImpl;->close()V

    .line 60
    return-void
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v2}, Landroid/net/LocalSocketImpl;->access$200(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 67
    :try_start_7
    iget-object v3, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v3}, Landroid/net/LocalSocketImpl;->access$000(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 68
    .local v0, myFd:Ljava/io/FileDescriptor;
    if-nez v0, :cond_1a

    new-instance v3, Ljava/io/IOException;

    const-string v4, "socket closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    .end local v0           #myFd:Ljava/io/FileDescriptor;
    :catchall_17
    move-exception v3

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v3

    .line 70
    .restart local v0       #myFd:Ljava/io/FileDescriptor;
    :cond_1a
    :try_start_1a
    iget-object v3, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v3, v0}, Landroid/net/LocalSocketImpl;->access$300(Landroid/net/LocalSocketImpl;Ljava/io/FileDescriptor;)I

    move-result v1

    .line 71
    .local v1, ret:I
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_17

    return v1
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
    .line 78
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/LocalSocketImpl$SocketInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 9
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v2, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v2}, Landroid/net/LocalSocketImpl;->access$200(Landroid/net/LocalSocketImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 85
    :try_start_7
    iget-object v3, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v3}, Landroid/net/LocalSocketImpl;->access$000(Landroid/net/LocalSocketImpl;)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 86
    .local v0, myFd:Ljava/io/FileDescriptor;
    if-nez v0, :cond_1a

    new-instance v3, Ljava/io/IOException;

    const-string v4, "socket closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    .end local v0           #myFd:Ljava/io/FileDescriptor;
    :catchall_17
    move-exception v3

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v3

    .line 88
    .restart local v0       #myFd:Ljava/io/FileDescriptor;
    :cond_1a
    if-ltz p2, :cond_23

    if-ltz p3, :cond_23

    add-int v3, p2, p3

    :try_start_20
    array-length v4, p1

    if-le v3, v4, :cond_29

    .line 89
    :cond_23
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v3

    .line 92
    :cond_29
    iget-object v3, p0, Landroid/net/LocalSocketImpl$SocketInputStream;->this$0:Landroid/net/LocalSocketImpl;

    invoke-static {v3, p1, p2, p3, v0}, Landroid/net/LocalSocketImpl;->access$400(Landroid/net/LocalSocketImpl;[BIILjava/io/FileDescriptor;)I

    move-result v1

    .line 94
    .local v1, ret:I
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_17

    return v1
.end method
