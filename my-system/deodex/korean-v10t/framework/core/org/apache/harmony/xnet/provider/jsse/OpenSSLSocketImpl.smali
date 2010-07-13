.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
.super Ljavax/net/ssl/SSLSocket;
.source "OpenSSLSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$1;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$Finalizer;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$LoggerHolder;
    }
.end annotation


# static fields
.field private static SSL_OP_NO_SSLv3:J

.field private static SSL_OP_NO_TLSv1:J

.field private static final instanceCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final supportedProtocols:[Ljava/lang/String;


# instance fields
.field private address:Ljava/net/InetSocketAddress;

.field private autoClose:Z

.field private final handshakeLock:Ljava/lang/Object;

.field private handshakeStarted:Z

.field private is:Ljava/io/InputStream;

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljavax/net/ssl/HandshakeCompletedListener;",
            ">;"
        }
    .end annotation
.end field

.field private os:Ljava/io/OutputStream;

.field private readLock:Ljava/lang/Object;

.field private socket:Ljava/net/Socket;

.field private ssl:I

.field private sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

.field private sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

.field private ssl_ctx:I

.field private ssl_op_no:J

.field private timeout:I

.field private writeLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SSLv3"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "TLSv1"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->supportedProtocols:[Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->instanceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->nativeinitstatic()V

    .line 727
    const-wide/32 v0, 0x2000000

    sput-wide v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->SSL_OP_NO_SSLv3:J

    .line 728
    const-wide/32 v0, 0x4000000

    sput-wide v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->SSL_OP_NO_TLSv1:J

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParameters;)V
    .registers 9
    .parameter "host"
    .parameter "port"
    .parameter "clientAddress"
    .parameter "clientPort"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 203
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 67
    iput-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->ssl_op_no:J

    .line 70
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeout:I

    .line 204
    iput-object p5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    .line 205
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init()V

    .line 206
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->updateInstanceCount(I)V

    .line 207
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/SSLParameters;)V
    .registers 7
    .parameter "host"
    .parameter "port"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;I)V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 67
    iput-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->ssl_op_no:J

    .line 70
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeout:I

    .line 172
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    .line 173
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init()V

    .line 174
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->updateInstanceCount(I)V

    .line 175
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParameters;)V
    .registers 9
    .parameter "address"
    .parameter "port"
    .parameter "clientAddress"
    .parameter "clientPort"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 218
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 67
    iput-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->ssl_op_no:J

    .line 70
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeout:I

    .line 219
    iput-object p5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    .line 220
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init()V

    .line 221
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->updateInstanceCount(I)V

    .line 222
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParameters;)V
    .registers 7
    .parameter "address"
    .parameter "port"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 187
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;I)V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 67
    iput-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->ssl_op_no:J

    .line 70
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeout:I

    .line 188
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    .line 189
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init()V

    .line 190
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->updateInstanceCount(I)V

    .line 191
    return-void
.end method

.method protected constructor <init>(Ljava/net/Socket;Ljava/lang/String;IZLorg/apache/harmony/xnet/provider/jsse/SSLParameters;)V
    .registers 9
    .parameter "socket"
    .parameter "host"
    .parameter "port"
    .parameter "autoClose"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 232
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 67
    iput-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->ssl_op_no:J

    .line 70
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeout:I

    .line 233
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 234
    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeout:I

    .line 235
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->address:Ljava/net/InetSocketAddress;

    .line 236
    iput-boolean p4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->autoClose:Z

    .line 237
    iput-object p5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    .line 238
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init()V

    .line 239
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->updateInstanceCount(I)V

    .line 240
    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;)V
    .registers 5
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 67
    iput-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->ssl_op_no:J

    .line 70
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeout:I

    .line 157
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    .line 158
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init()V

    .line 159
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->updateInstanceCount(I)V

    .line 160
    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;J)V
    .registers 7
    .parameter "sslParameters"
    .parameter "ssl_op_no"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 67
    iput-boolean v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->ssl_op_no:J

    .line 70
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeout:I

    .line 143
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    .line 144
    iput-wide p2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->ssl_op_no:J

    .line 145
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->updateInstanceCount(I)V

    .line 146
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeout:I

    return v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->nativeread(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;[BIII)I
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->nativeread([BIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->nativewrite(I)V

    return-void
.end method

.method static synthetic access$600(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;[BII)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->nativewrite([BII)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/net/Socket;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method private findSuite(Ljava/lang/String;)Z
    .registers 7
    .parameter "suite"

    .prologue
    .line 684
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->nativegetsupportedciphersuites()[Ljava/lang/String;

    move-result-object v1

    .line 685
    .local v1, supportedCipherSuites:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 686
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    return v2

    .line 685
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 687
    :cond_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Protocol "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getCachedClientSession()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    .registers 4

    .prologue
    .line 256
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 259
    :cond_1a
    const/4 v1, 0x0

    .line 263
    .end local p0
    :goto_1b
    return-object v1

    .line 261
    .restart local p0
    :cond_1c
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v0

    .line 263
    .local v0, sessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getPort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->getSession(Ljava/lang/String;I)Ljavax/net/ssl/SSLSession;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-object v1, p0

    goto :goto_1b
.end method

.method public static getInstanceCount()I
    .registers 1

    .prologue
    .line 81
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->instanceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method private init()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x400

    const/4 v12, 0x0

    .line 104
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "RSA"

    aput-object v11, v9, v10

    invoke-interface {v8, v9, v12, v12}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, alias:Ljava/lang/String;
    if-eqz v0, :cond_7e

    .line 106
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v8

    invoke-interface {v8, v0}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v5

    .line 107
    .local v5, privateKey:Ljava/security/PrivateKey;
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v8

    invoke-interface {v8, v0}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 109
    .local v3, certificates:[Ljava/security/cert/X509Certificate;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 110
    .local v6, privateKeyOS:Ljava/io/ByteArrayOutputStream;
    new-instance v7, Lorg/bouncycastle/openssl/PEMWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    invoke-direct {v8, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v7, v8}, Lorg/bouncycastle/openssl/PEMWriter;-><init>(Ljava/io/Writer;)V

    .line 111
    .local v7, privateKeyPEMWriter:Lorg/bouncycastle/openssl/PEMWriter;
    invoke-virtual {v7, v5}, Lorg/bouncycastle/openssl/PEMWriter;->writeObject(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v7}, Lorg/bouncycastle/openssl/PEMWriter;->close()V

    .line 114
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 115
    .local v1, certificateOS:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lorg/bouncycastle/openssl/PEMWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    invoke-direct {v8, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v8}, Lorg/bouncycastle/openssl/PEMWriter;-><init>(Ljava/io/Writer;)V

    .line 117
    .local v2, certificateWriter:Lorg/bouncycastle/openssl/PEMWriter;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_50
    array-length v8, v3

    if-ge v4, v8, :cond_5b

    .line 118
    aget-object v8, v3, v4

    invoke-virtual {v2, v8}, Lorg/bouncycastle/openssl/PEMWriter;->writeObject(Ljava/lang/Object;)V

    .line 117
    add-int/lit8 v4, v4, 0x1

    goto :goto_50

    .line 120
    :cond_5b
    invoke-virtual {v2}, Lorg/bouncycastle/openssl/PEMWriter;->close()V

    .line 122
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v10}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getSecureRandomMember()Ljava/security/SecureRandom;

    move-result-object v10

    if-eqz v10, :cond_7c

    iget-object v10, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v10}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getSecureRandomMember()Ljava/security/SecureRandom;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v10

    :goto_78
    invoke-direct {p0, v8, v9, v10}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->nativeinit(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 130
    .end local v1           #certificateOS:Ljava/io/ByteArrayOutputStream;
    .end local v2           #certificateWriter:Lorg/bouncycastle/openssl/PEMWriter;
    .end local v3           #certificates:[Ljava/security/cert/X509Certificate;
    .end local v4           #i:I
    .end local v5           #privateKey:Ljava/security/PrivateKey;
    .end local v6           #privateKeyOS:Ljava/io/ByteArrayOutputStream;
    .end local v7           #privateKeyPEMWriter:Lorg/bouncycastle/openssl/PEMWriter;
    :goto_7b
    return-void

    .restart local v1       #certificateOS:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #certificateWriter:Lorg/bouncycastle/openssl/PEMWriter;
    .restart local v3       #certificates:[Ljava/security/cert/X509Certificate;
    .restart local v4       #i:I
    .restart local v5       #privateKey:Ljava/security/PrivateKey;
    .restart local v6       #privateKeyOS:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #privateKeyPEMWriter:Lorg/bouncycastle/openssl/PEMWriter;
    :cond_7c
    move-object v10, v12

    .line 122
    goto :goto_78

    .line 126
    .end local v1           #certificateOS:Ljava/io/ByteArrayOutputStream;
    .end local v2           #certificateWriter:Lorg/bouncycastle/openssl/PEMWriter;
    .end local v3           #certificates:[Ljava/security/cert/X509Certificate;
    .end local v4           #i:I
    .end local v5           #privateKey:Ljava/security/PrivateKey;
    .end local v6           #privateKeyOS:Ljava/io/ByteArrayOutputStream;
    .end local v7           #privateKeyPEMWriter:Lorg/bouncycastle/openssl/PEMWriter;
    :cond_7e
    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getSecureRandomMember()Ljava/security/SecureRandom;

    move-result-object v8

    if-eqz v8, :cond_94

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getSecureRandomMember()Ljava/security/SecureRandom;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v8

    :goto_90
    invoke-direct {p0, v12, v12, v8}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->nativeinit(Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_7b

    :cond_94
    move-object v8, v12

    goto :goto_90
.end method

.method private native nativecipherauthenticationmethod()Ljava/lang/String;
.end method

.method private native nativeclose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native nativeconnect(ILjava/net/Socket;ZI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native nativefree()V
.end method

.method private native nativegetenabledciphersuites()[Ljava/lang/String;
.end method

.method private native nativegetsslsession(I)I
.end method

.method static native nativegetsupportedciphersuites()[Ljava/lang/String;
.end method

.method private native nativeinit(Ljava/lang/String;Ljava/lang/String;[B)V
.end method

.method private static native nativeinitstatic()V
.end method

.method private native nativeinterrupt()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native nativeread(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native nativeread([BIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native nativesetenabledciphersuites(Ljava/lang/String;)V
.end method

.method private native nativesetenabledprotocols(J)V
.end method

.method private static native nativeverifysignature([B[BLjava/lang/String;[B[B)I
.end method

.method private native nativewrite(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native nativewrite([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static updateInstanceCount(I)V
    .registers 2
    .parameter "amount"

    .prologue
    .line 85
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->instanceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 86
    return-void
.end method

.method public static verifySignature([B[BLjava/lang/String;Ljava/security/interfaces/RSAPublicKey;)Z
    .registers 8
    .parameter "message"
    .parameter "signature"
    .parameter "algorithm"
    .parameter "key"

    .prologue
    const/4 v3, 0x1

    .line 1042
    invoke-interface {p3}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 1043
    .local v1, modulus:[B
    invoke-interface {p3}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 1045
    .local v0, exponent:[B
    invoke-static {p0, p1, p2, v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->nativeverifysignature([B[BLjava/lang/String;[B[B)I

    move-result v2

    if-ne v2, v3, :cond_19

    move v2, v3

    :goto_18
    return v2

    :cond_19
    const/4 v2, 0x0

    goto :goto_18
.end method

.method private verify_callback([[B)I
    .registers 10
    .parameter "bytes"

    .prologue
    const/4 v7, 0x0

    .line 409
    :try_start_1
    array-length v3, p1

    new-array v2, v3, [Ljava/security/cert/X509Certificate;

    .line 411
    .local v2, peerCertificateChain:[Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    array-length v3, p1

    if-ge v1, v3, :cond_1c

    .line 412
    new-instance v3, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    aget-object v4, p1, v1

    invoke-static {v4}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    aput-object v3, v2, v1
    :try_end_19
    .catch Ljavax/security/cert/CertificateException; {:try_start_1 .. :try_end_19} :catch_3a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_19} :catch_3e

    .line 411
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 418
    :cond_1c
    :try_start_1c
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    const-string v4, "null"

    invoke-interface {v3, v2, v4}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/security/cert/CertificateException; {:try_start_1c .. :try_end_27} :catch_29
    .catch Ljavax/security/cert/CertificateException; {:try_start_1c .. :try_end_27} :catch_3a
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_27} :catch_3e

    .line 428
    const/4 v3, 0x1

    .end local v1           #i:I
    .end local v2           #peerCertificateChain:[Ljava/security/cert/X509Certificate;
    :goto_28
    return v3

    .line 419
    .restart local v1       #i:I
    .restart local v2       #peerCertificateChain:[Ljava/security/cert/X509Certificate;
    :catch_29
    move-exception v3

    move-object v0, v3

    .line 420
    .local v0, e:Ljava/security/cert/CertificateException;
    :try_start_2b
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v4, 0x2a

    new-instance v5, Ljavax/net/ssl/SSLException;

    const-string v6, "Not trusted server certificate"

    invoke-direct {v5, v6, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v3
    :try_end_3a
    .catch Ljavax/security/cert/CertificateException; {:try_start_2b .. :try_end_3a} :catch_3a
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_3a} :catch_3e

    .line 423
    .end local v0           #e:Ljava/security/cert/CertificateException;
    .end local v1           #i:I
    .end local v2           #peerCertificateChain:[Ljava/security/cert/X509Certificate;
    :catch_3a
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljavax/security/cert/CertificateException;
    move v3, v7

    .line 424
    goto :goto_28

    .line 425
    .end local v0           #e:Ljavax/security/cert/CertificateException;
    :catch_3e
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/io/IOException;
    move v3, v7

    .line 426
    goto :goto_28
.end method


# virtual methods
.method protected accept(IZ)V
    .registers 9
    .parameter "m_ctx"
    .parameter "client_mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 388
    invoke-virtual {p0, p0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->nativeaccept(Ljava/net/Socket;IZ)V

    .line 390
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v5

    .line 392
    .local v5, sessionContext:Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->ssl:I

    invoke-direct {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->nativegetsslsession(I)I

    move-result v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->getPort()I

    move-result v4

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;-><init>(ILorg/apache/harmony/xnet/provider/jsse/SSLParameters;Ljava/lang/String;ILjavax/net/ssl/SSLSessionContext;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    .line 395
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->lastAccessedTime:J

    .line 396
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-virtual {v5, v0}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    .line 397
    return-void
.end method

.method public addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 600
    if-nez p1, :cond_a

    .line 601
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_15

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    .line 606
    :cond_15
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    return-void
.end method

.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 893
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 894
    :try_start_3
    iget-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    if-nez v3, :cond_36

    .line 895
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 897
    monitor-enter p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_33

    .line 898
    :try_start_b
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->nativefree()V

    .line 900
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v3, :cond_26

    .line 901
    iget-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->autoClose:Z

    if-eqz v3, :cond_23

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 905
    :cond_23
    :goto_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_30

    .line 907
    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_33

    .line 953
    :goto_25
    return-void

    .line 903
    :cond_26
    :try_start_26
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_23

    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V

    goto :goto_23

    .line 905
    :catchall_30
    move-exception v3

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_30

    :try_start_32
    throw v3

    .line 909
    :catchall_33
    move-exception v3

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_33

    throw v3

    :cond_36
    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_33

    .line 911
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->nativeinterrupt()V

    .line 913
    monitor-enter p0

    .line 914
    :try_start_3b
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_6a

    .line 915
    :try_start_3e
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_67

    .line 917
    const/4 v1, 0x0

    .line 921
    .local v1, pendingException:Ljava/io/IOException;
    :try_start_42
    iget-boolean v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    if-eqz v4, :cond_49

    .line 922
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->nativeclose()V
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_64
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_49} :catch_6d

    .line 937
    :cond_49
    :goto_49
    :try_start_49
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->nativefree()V

    .line 939
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-eqz v4, :cond_71

    .line 940
    iget-boolean v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->autoClose:Z

    if-eqz v4, :cond_61

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_61

    .line 941
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    .line 947
    :cond_61
    :goto_61
    if-eqz v1, :cond_7b

    .line 948
    throw v1

    .line 950
    :catchall_64
    move-exception v4

    monitor-exit v3
    :try_end_66
    .catchall {:try_start_49 .. :try_end_66} :catchall_64

    :try_start_66
    throw v4

    .line 951
    .end local v1           #pendingException:Ljava/io/IOException;
    :catchall_67
    move-exception v3

    monitor-exit v2
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_67

    :try_start_69
    throw v3

    .line 952
    :catchall_6a
    move-exception v2

    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6a

    throw v2

    .line 924
    .restart local v1       #pendingException:Ljava/io/IOException;
    :catch_6d
    move-exception v4

    move-object v0, v4

    .line 929
    .local v0, ex:Ljava/io/IOException;
    move-object v1, v0

    goto :goto_49

    .line 943
    .end local v0           #ex:Ljava/io/IOException;
    :cond_71
    :try_start_71
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_61

    .line 944
    invoke-super {p0}, Ljavax/net/ssl/SSLSocket;->close()V

    goto :goto_61

    .line 950
    :cond_7b
    monitor-exit v3
    :try_end_7c
    .catchall {:try_start_71 .. :try_end_7c} :catchall_64

    .line 951
    :try_start_7c
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_67

    .line 952
    :try_start_7d
    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_6a

    goto :goto_25
.end method

.method protected finalize()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 958
    const/4 v3, -0x1

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->updateInstanceCount(I)V

    .line 960
    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->ssl:I

    if-nez v3, :cond_9

    .line 999
    :cond_8
    :goto_8
    return-void

    .line 969
    :cond_9
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 972
    .local v2, underlyingSocket:Ljava/net/Socket;
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$Finalizer;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$Finalizer;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$1;)V

    .line 973
    .local v1, f:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$Finalizer;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$Finalizer;->setDaemon(Z)V

    .line 974
    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$Finalizer;->start()V

    .line 984
    const-wide/16 v3, 0x3e8

    :try_start_1a
    invoke-virtual {v1, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$Finalizer;->join(J)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_5c

    .line 990
    :goto_1d
    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$Finalizer;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 991
    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$Finalizer;->interrupt()V

    .line 992
    sget-object v3, Ljava/util/logging/Logger;->global:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Slow finalization of SSL socket ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 995
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_8

    .line 996
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    goto :goto_8

    .line 985
    :catch_5c
    move-exception v0

    .line 987
    .local v0, ex:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1d
.end method

.method public getEnableSessionCreation()Z
    .registers 2

    .prologue
    .line 635
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 674
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->nativegetenabledciphersuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .registers 8

    .prologue
    const-wide/16 v5, 0x0

    .line 738
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 740
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-wide v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->ssl_op_no:J

    sget-wide v3, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->SSL_OP_NO_SSLv3:J

    and-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-nez v1, :cond_18

    .line 741
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->supportedProtocols:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    :cond_18
    iget-wide v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->ssl_op_no:J

    sget-wide v3, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->SSL_OP_NO_TLSv1:J

    and-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-nez v1, :cond_29

    .line 744
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->supportedProtocols:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    :cond_29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    monitor-enter p0

    .line 442
    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->is:Ljava/io/InputStream;

    if-nez v0, :cond_c

    .line 443
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->is:Ljava/io/InputStream;

    .line 446
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->is:Ljava/io/InputStream;

    monitor-exit p0

    return-object v0

    .line 447
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public getNeedClientAuth()Z
    .registers 2

    .prologue
    .line 823
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    monitor-enter p0

    .line 460
    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->os:Ljava/io/OutputStream;

    if-nez v0, :cond_c

    .line 461
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->os:Ljava/io/OutputStream;

    .line 464
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->os:Ljava/io/OutputStream;

    monitor-exit p0

    return-object v0

    .line 465
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .registers 5

    .prologue
    .line 581
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->startHandshake()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_6

    .line 590
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    :goto_5
    return-object v1

    .line 582
    :catch_6
    move-exception v0

    .line 583
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Error negotiating SSL connection."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 588
    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->NULL_SESSION:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    goto :goto_5
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 662
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->nativegetsupportedciphersuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 720
    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->supportedProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getUseClientMode()Z
    .registers 2

    .prologue
    .line 787
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .registers 2

    .prologue
    .line 813
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method synchronized native declared-synchronized nativeaccept(Ljava/net/Socket;IZ)V
.end method

.method public removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    const-string v2, "Provided listener is not registered"

    .line 615
    if-nez p1, :cond_c

    .line 616
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_18

    .line 619
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is not registered"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_18
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 623
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is not registered"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :cond_28
    return-void
.end method

.method public sendUrgentData(I)V
    .registers 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 854
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Method sendUrgentData() is not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnableSessionCreation(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 647
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->setEnableSessionCreation(Z)V

    .line 648
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .registers 6
    .parameter "suites"

    .prologue
    .line 702
    if-nez p1, :cond_a

    .line 703
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Provided parameter is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 705
    :cond_a
    const-string v0, ""

    .line 706
    .local v0, controlString:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    array-length v2, p1

    if-ge v1, v2, :cond_36

    .line 707
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->findSuite(Ljava/lang/String;)Z

    .line 708
    if-nez v1, :cond_1c

    aget-object v0, p1, v1

    .line 706
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 709
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 711
    :cond_36
    invoke-direct {p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->nativesetenabledciphersuites(Ljava/lang/String;)V

    .line 712
    return-void
.end method

.method public declared-synchronized setEnabledProtocols([Ljava/lang/String;)V
    .registers 7
    .parameter "protocols"

    .prologue
    .line 763
    monitor-enter p0

    if-nez p1, :cond_e

    .line 764
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provided parameter is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 763
    :catchall_b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 767
    :cond_e
    :try_start_e
    sget-wide v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->SSL_OP_NO_SSLv3:J

    sget-wide v3, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->SSL_OP_NO_TLSv1:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->ssl_op_no:J

    .line 769
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    array-length v1, p1

    if-ge v0, v1, :cond_60

    .line 770
    aget-object v1, p1, v0

    const-string v2, "SSLv3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 771
    iget-wide v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->ssl_op_no:J

    sget-wide v3, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->SSL_OP_NO_SSLv3:J

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->ssl_op_no:J

    .line 769
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 772
    :cond_2d
    aget-object v1, p1, v0

    const-string v2, "TLSv1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 773
    iget-wide v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->ssl_op_no:J

    sget-wide v3, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->SSL_OP_NO_TLSv1:J

    xor-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->ssl_op_no:J

    goto :goto_2a

    .line 774
    :cond_3f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Protocol "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 778
    :cond_60
    iget-wide v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->ssl_op_no:J

    invoke-direct {p0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->nativesetenabledprotocols(J)V
    :try_end_65
    .catchall {:try_start_e .. :try_end_65} :catchall_b

    .line 779
    monitor-exit p0

    return-void
.end method

.method public setNeedClientAuth(Z)V
    .registers 3
    .parameter "need"

    .prologue
    .line 834
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->setNeedClientAuth(Z)V

    .line 835
    return-void
.end method

.method public setOOBInline(Z)V
    .registers 4
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 862
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Methods sendUrgentData, setOOBInline are not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized setSoTimeout(I)V
    .registers 3
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 875
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 876
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeout:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 877
    monitor-exit p0

    return-void

    .line 875
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUseClientMode(Z)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 799
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    if-eqz v0, :cond_10

    .line 800
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not change the mode after the initial handshake has begun."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 799
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 803
    :cond_10
    :try_start_10
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->setUseClientMode(Z)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_d

    .line 804
    monitor-exit p0

    return-void
.end method

.method public setWantClientAuth(Z)V
    .registers 3
    .parameter "want"

    .prologue
    .line 847
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->setWantClientAuth(Z)V

    .line 848
    return-void
.end method

.method public shutdownInput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method shutdownInput() is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shutdownOutput()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method shutdownOutput() is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized startHandshake()V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v5, "."

    const-class v5, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    .line 287
    monitor-enter p0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    move-object v5, v0

    monitor-enter v5
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_32

    .line 288
    :try_start_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    move v7, v0

    if-nez v7, :cond_35

    .line 289
    const/4 v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 293
    monitor-exit v5
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_38

    .line 295
    :try_start_19
    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getCachedClientSession()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-result-object v17

    .line 298
    .local v17, session:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    if-nez v17, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getEnableSessionCreation()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 299
    new-instance v5, Ljavax/net/ssl/SSLHandshakeException;

    const-string v7, "SSL Session may not be created"

    invoke-direct {v5, v7}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_32
    .catchall {:try_start_19 .. :try_end_32} :catchall_32

    .line 287
    .end local v17           #session:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    :catchall_32
    move-exception v5

    monitor-exit p0

    throw v5

    .line 291
    :cond_35
    :try_start_35
    monitor-exit v5
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_38

    .line 374
    :cond_36
    monitor-exit p0

    return-void

    .line 293
    :catchall_38
    move-exception v7

    :try_start_39
    monitor-exit v5
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    throw v7

    .line 301
    .restart local v17       #session:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    move-object v5, v0

    if-eqz v5, :cond_da

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    move-object v5, v0

    move-object/from16 v19, v5

    .line 302
    .local v19, socket:Ljava/net/Socket;
    :goto_49
    if-eqz v17, :cond_de

    move-object/from16 v0, v17

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->session:I

    move v5, v0

    move v6, v5

    .line 304
    .local v6, sessionId:I
    :goto_51
    const-class v5, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    monitor-enter v5
    :try_end_54
    .catchall {:try_start_3a .. :try_end_54} :catchall_32

    .line 305
    :try_start_54
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->ssl_ctx:I

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getUseClientMode()Z

    move-result v8

    move-object/from16 v0, p0

    move v1, v7

    move-object/from16 v2, v19

    move v3, v8

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->nativeconnect(ILjava/net/Socket;ZI)Z

    move-result v16

    .line 307
    .local v16, reusedSession:Z
    monitor-exit v5
    :try_end_6e
    .catchall {:try_start_54 .. :try_end_6e} :catchall_e2

    .line 308
    if-eqz v16, :cond_e5

    .line 311
    :try_start_70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-wide v0, v7

    move-object/from16 v2, v17

    iput-wide v0, v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->lastAccessedTime:J

    .line 312
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    .line 314
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$LoggerHolder;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reused cached session for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 365
    :goto_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_36

    .line 367
    new-instance v13, Ljavax/net/ssl/HandshakeCompletedEvent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-object v5, v0

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Ljavax/net/ssl/HandshakeCompletedEvent;-><init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V

    .line 369
    .local v13, event:Ljavax/net/ssl/HandshakeCompletedEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 370
    .local v18, size:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_c4
    move v0, v14

    move/from16 v1, v18

    if-ge v0, v1, :cond_36

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/net/ssl/HandshakeCompletedListener;

    invoke-interface {v5, v13}, Ljavax/net/ssl/HandshakeCompletedListener;->handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    :try_end_d7
    .catchall {:try_start_70 .. :try_end_d7} :catchall_32

    .line 370
    add-int/lit8 v14, v14, 0x1

    goto :goto_c4

    .end local v6           #sessionId:I
    .end local v13           #event:Ljavax/net/ssl/HandshakeCompletedEvent;
    .end local v14           #i:I
    .end local v16           #reusedSession:Z
    .end local v18           #size:I
    .end local v19           #socket:Ljava/net/Socket;
    :cond_da
    move-object/from16 v19, p0

    .line 301
    goto/16 :goto_49

    .line 302
    .restart local v19       #socket:Ljava/net/Socket;
    :cond_de
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_51

    .line 307
    .restart local v6       #sessionId:I
    :catchall_e2
    move-exception v7

    :try_start_e3
    monitor-exit v5
    :try_end_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_e2

    :try_start_e4
    throw v7

    .line 317
    .restart local v16       #reusedSession:Z
    :cond_e5
    if-eqz v17, :cond_16e

    .line 318
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$LoggerHolder;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reuse of cached session for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 325
    :goto_10d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v10

    .line 327
    .local v10, sessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
    const-class v5, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    monitor-enter v5
    :try_end_119
    .catchall {:try_start_e4 .. :try_end_119} :catchall_32

    .line 328
    :try_start_119
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->ssl:I

    move v7, v0

    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->nativegetsslsession(I)I

    move-result v6

    .line 329
    monitor-exit v5
    :try_end_126
    .catchall {:try_start_119 .. :try_end_126} :catchall_196

    .line 330
    :try_start_126
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->address:Ljava/net/InetSocketAddress;

    move-object v5, v0

    if-nez v5, :cond_199

    .line 331
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object v7, v0

    invoke-super/range {p0 .. p0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v8

    invoke-super/range {p0 .. p0}, Ljavax/net/ssl/SSLSocket;->getPort()I

    move-result v9

    invoke-direct/range {v5 .. v10}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;-><init>(ILorg/apache/harmony/xnet/provider/jsse/SSLParameters;Ljava/lang/String;ILjavax/net/ssl/SSLSessionContext;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    :try_end_148
    .catchall {:try_start_126 .. :try_end_148} :catchall_32

    .line 343
    :goto_148
    :try_start_148
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;

    move-object v0, v5

    check-cast v0, [Ljava/security/cert/X509Certificate;

    move-object v15, v0

    .line 346
    .local v15, peerCertificates:[Ljava/security/cert/X509Certificate;
    if-eqz v15, :cond_15c

    array-length v5, v15

    if-nez v5, :cond_1bb

    .line 348
    :cond_15c
    new-instance v5, Ljavax/net/ssl/SSLException;

    const-string v7, "Server sends no certificate"

    invoke-direct {v5, v7}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_164
    .catchall {:try_start_148 .. :try_end_164} :catchall_32
    .catch Ljava/security/cert/CertificateException; {:try_start_148 .. :try_end_164} :catch_164

    .line 359
    .end local v15           #peerCertificates:[Ljava/security/cert/X509Certificate;
    :catch_164
    move-exception v5

    move-object v12, v5

    .line 360
    .local v12, e:Ljava/security/cert/CertificateException;
    :try_start_166
    new-instance v5, Ljavax/net/ssl/SSLException;

    const-string v7, "Not trusted server certificate"

    invoke-direct {v5, v7, v12}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 321
    .end local v10           #sessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
    .end local v12           #e:Ljava/security/cert/CertificateException;
    :cond_16e
    sget-object v5, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$LoggerHolder;->logger:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Created new session for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V
    :try_end_194
    .catchall {:try_start_166 .. :try_end_194} :catchall_32

    goto/16 :goto_10d

    .line 329
    .restart local v10       #sessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
    :catchall_196
    move-exception v7

    :try_start_197
    monitor-exit v5
    :try_end_198
    .catchall {:try_start_197 .. :try_end_198} :catchall_196

    :try_start_198
    throw v7

    .line 336
    :cond_199
    new-instance v5, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->address:Ljava/net/InetSocketAddress;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->address:Ljava/net/InetSocketAddress;

    move-object v9, v0

    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v9

    invoke-direct/range {v5 .. v10}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;-><init>(ILorg/apache/harmony/xnet/provider/jsse/SSLParameters;Ljava/lang/String;ILjavax/net/ssl/SSLSessionContext;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    :try_end_1ba
    .catchall {:try_start_198 .. :try_end_1ba} :catchall_32

    goto :goto_148

    .line 352
    .restart local v15       #peerCertificates:[Ljava/security/cert/X509Certificate;
    :cond_1bb
    :try_start_1bb
    const-class v5, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    monitor-enter v5
    :try_end_1be
    .catchall {:try_start_1bb .. :try_end_1be} :catchall_32
    .catch Ljava/security/cert/CertificateException; {:try_start_1bb .. :try_end_1be} :catch_164

    .line 353
    :try_start_1be
    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->nativecipherauthenticationmethod()Ljava/lang/String;

    move-result-object v11

    .line 354
    .local v11, authMethod:Ljava/lang/String;
    monitor-exit v5
    :try_end_1c3
    .catchall {:try_start_1be .. :try_end_1c3} :catchall_1d9

    .line 355
    :try_start_1c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v5

    invoke-interface {v5, v15, v11}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-object v5, v0

    invoke-virtual {v10, v5}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V
    :try_end_1d7
    .catchall {:try_start_1c3 .. :try_end_1d7} :catchall_32
    .catch Ljava/security/cert/CertificateException; {:try_start_1c3 .. :try_end_1d7} :catch_164

    goto/16 :goto_a5

    .line 354
    .end local v11           #authMethod:Ljava/lang/String;
    :catchall_1d9
    move-exception v7

    :try_start_1da
    monitor-exit v5
    :try_end_1db
    .catchall {:try_start_1da .. :try_end_1db} :catchall_1d9

    :try_start_1db
    throw v7
    :try_end_1dc
    .catchall {:try_start_1db .. :try_end_1dc} :catchall_32
    .catch Ljava/security/cert/CertificateException; {:try_start_1db .. :try_end_1dc} :catch_164
.end method
