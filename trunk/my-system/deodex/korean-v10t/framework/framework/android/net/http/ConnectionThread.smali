.class Landroid/net/http/ConnectionThread;
.super Ljava/lang/Thread;
.source "ConnectionThread.java"


# static fields
.field static final WAIT_TICK:I = 0x3e8

.field static final WAIT_TIMEOUT:I = 0x1388


# instance fields
.field mConnection:Landroid/net/http/Connection;

.field private mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

.field private mContext:Landroid/content/Context;

.field mCurrentThreadTime:J

.field private mId:I

.field private mRequestFeeder:Landroid/net/http/RequestFeeder;

.field private volatile mRunning:Z

.field mStartThreadTime:J

.field private mWaiting:Z


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/net/http/RequestQueue$ConnectionManager;Landroid/net/http/RequestFeeder;)V
    .registers 7
    .parameter "context"
    .parameter "id"
    .parameter "connectionManager"
    .parameter "requestFeeder"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/http/ConnectionThread;->mRunning:Z

    .line 52
    iput-object p1, p0, Landroid/net/http/ConnectionThread;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/http/ConnectionThread;->setName(Ljava/lang/String;)V

    .line 54
    iput p2, p0, Landroid/net/http/ConnectionThread;->mId:I

    .line 55
    iput-object p3, p0, Landroid/net/http/ConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    .line 56
    iput-object p4, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    .line 57
    return-void
.end method


# virtual methods
.method requestStop()V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    monitor-enter v0

    .line 61
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Landroid/net/http/ConnectionThread;->mRunning:Z

    .line 62
    iget-object v1, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 63
    monitor-exit v0

    .line 64
    return-void

    .line 63
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public run()V
    .registers 9

    .prologue
    const-wide/16 v6, -0x1

    const/4 v3, 0x1

    .line 71
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 74
    iput-wide v6, p0, Landroid/net/http/ConnectionThread;->mStartThreadTime:J

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 77
    :goto_e
    iget-boolean v3, p0, Landroid/net/http/ConnectionThread;->mRunning:Z

    if-eqz v3, :cond_ac

    .line 81
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-interface {v3}, Landroid/net/http/RequestFeeder;->getRequest()Landroid/net/http/Request;

    move-result-object v2

    .line 84
    .local v2, request:Landroid/net/http/Request;
    if-nez v2, :cond_3e

    .line 85
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    monitor-enter v3

    .line 86
    :try_start_1d
    const-string v4, "ConnectionThread: Waiting for work"

    invoke-static {v4}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 87
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/net/http/ConnectionThread;->mWaiting:Z
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_3b

    .line 89
    :try_start_25
    iget-wide v4, p0, Landroid/net/http/ConnectionThread;->mStartThreadTime:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_31

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .line 93
    :cond_31
    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_3b
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_36} :catch_ad

    .line 96
    :goto_36
    const/4 v4, 0x0

    :try_start_37
    iput-boolean v4, p0, Landroid/net/http/ConnectionThread;->mWaiting:Z

    .line 97
    monitor-exit v3

    goto :goto_e

    :catchall_3b
    move-exception v4

    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_3b

    throw v4

    .line 99
    :cond_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConnectionThread: new request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 102
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    invoke-interface {v3}, Landroid/net/http/RequestQueue$ConnectionManager;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 111
    .local v1, proxy:Lorg/apache/http/HttpHost;
    if-eqz v1, :cond_76

    iget-object v3, v2, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a4

    :cond_76
    iget-object v3, v2, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    move-object v0, v3

    .line 115
    .local v0, host:Lorg/apache/http/HttpHost;
    :goto_79
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mContext:Landroid/content/Context;

    invoke-interface {v3, v4, v0}, Landroid/net/http/RequestQueue$ConnectionManager;->getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;)Landroid/net/http/Connection;

    move-result-object v3

    iput-object v3, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    .line 116
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v3, v2}, Landroid/net/http/Connection;->processRequests(Landroid/net/http/Request;)V

    .line 117
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v3}, Landroid/net/http/Connection;->getCanPersist()Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 118
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-interface {v3, v0, v4}, Landroid/net/http/RequestQueue$ConnectionManager;->recycleConnection(Lorg/apache/http/HttpHost;Landroid/net/http/Connection;)Z

    move-result v3

    if-nez v3, :cond_9f

    .line 120
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v3}, Landroid/net/http/Connection;->closeConnection()V

    .line 125
    :cond_9f
    :goto_9f
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    goto/16 :goto_e

    .end local v0           #host:Lorg/apache/http/HttpHost;
    :cond_a4
    move-object v0, v1

    .line 111
    goto :goto_79

    .line 123
    .restart local v0       #host:Lorg/apache/http/HttpHost;
    :cond_a6
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v3}, Landroid/net/http/Connection;->closeConnection()V

    goto :goto_9f

    .line 129
    .end local v0           #host:Lorg/apache/http/HttpHost;
    .end local v1           #proxy:Lorg/apache/http/HttpHost;
    .end local v2           #request:Landroid/net/http/Request;
    :cond_ac
    return-void

    .line 94
    .restart local v2       #request:Landroid/net/http/Request;
    :catch_ad
    move-exception v4

    goto :goto_36
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 5

    .prologue
    const-string v2, " "

    .line 132
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    if-nez v2, :cond_3c

    const-string v2, ""

    move-object v1, v2

    .line 133
    .local v1, con:Ljava/lang/String;
    :goto_a
    iget-boolean v2, p0, Landroid/net/http/ConnectionThread;->mWaiting:Z

    if-eqz v2, :cond_44

    const-string v2, "w"

    move-object v0, v2

    .line 134
    .local v0, active:Ljava/lang/String;
    :goto_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/http/ConnectionThread;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_48

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 132
    .end local v0           #active:Ljava/lang/String;
    .end local v1           #con:Ljava/lang/String;
    :cond_3c
    :try_start_3c
    iget-object v2, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v2}, Landroid/net/http/Connection;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_a

    .line 133
    .restart local v1       #con:Ljava/lang/String;
    :cond_44
    const-string v2, "a"
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_48

    move-object v0, v2

    goto :goto_11

    .line 132
    .end local v1           #con:Ljava/lang/String;
    :catchall_48
    move-exception v2

    monitor-exit p0

    throw v2
.end method
