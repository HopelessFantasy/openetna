.class public Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;
.super Ljava/lang/Object;
.source "HttpConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$1;,
        Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;
    }
.end annotation


# static fields
.field private static defaultConnectionManager:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;

.field private static keepAlive:Z

.field private static maxConnections:I


# instance fields
.field private pool:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const/4 v0, 0x5

    sput v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->maxConnections:I

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->keepAlive:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$1;)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->pool:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;

    .line 105
    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 49
    sget-boolean v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->keepAlive:Z

    return v0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 49
    sget v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->maxConnections:I

    return v0
.end method

.method private checkSystemProperties()V
    .registers 5

    .prologue
    .line 92
    new-instance v2, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v3, "http.maxConnections"

    invoke-direct {v2, v3}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    .local v1, httpMaxConnections:Ljava/lang/String;
    new-instance v2, Lorg/apache/harmony/luni/util/PriviAction;

    const-string v3, "http.keepAlive"

    invoke-direct {v2, v3}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    .local v0, httpKeepAlive:Ljava/lang/String;
    if-eqz v1, :cond_22

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->maxConnections:I

    .line 97
    :cond_22
    if-eqz v0, :cond_33

    .line 98
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->keepAlive:Z

    .line 99
    sget-boolean v2, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->keepAlive:Z

    if-nez v2, :cond_33

    .line 100
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->pool:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;

    invoke-virtual {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;->clear()V

    .line 103
    :cond_33
    return-void
.end method

.method public static getDefault()Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->defaultConnectionManager:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;

    if-nez v0, :cond_b

    .line 65
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;

    invoke-direct {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->defaultConnectionManager:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;

    .line 67
    :cond_b
    sget-object v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->defaultConnectionManager:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;

    return-object v0
.end method


# virtual methods
.method public getConnection(Ljava/net/URI;I)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    .registers 5
    .parameter "uri"
    .parameter "connectTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->checkSystemProperties()V

    .line 72
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;

    invoke-direct {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;-><init>(Ljava/net/URI;)V

    .line 73
    .local v0, config:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->pool:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;

    invoke-virtual {v1, v0, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;->getHttpConnection(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;I)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    move-result-object v1

    return-object v1
.end method

.method public getConnection(Ljava/net/URI;Ljava/net/Proxy;I)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    .registers 6
    .parameter "uri"
    .parameter "proxy"
    .parameter "connectTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->checkSystemProperties()V

    .line 78
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;

    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;-><init>(Ljava/net/URI;Ljava/net/Proxy;)V

    .line 79
    .local v0, config:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->pool:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;

    invoke-virtual {v1, v0, p3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;->getHttpConnection(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;I)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    move-result-object v1

    return-object v1
.end method

.method public numFreeConnections()I
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->pool:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;->numFreeConnections()I

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->pool:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;->clear()V

    .line 180
    return-void
.end method

.method public returnConnectionToPool(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;)V
    .registers 3
    .parameter "connection"

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->checkSystemProperties()V

    .line 84
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->pool:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;->returnConnection(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;)V

    .line 85
    return-void
.end method
