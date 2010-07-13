.class public Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;
.super Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
.source "ServerSessionContext.java"


# instance fields
.field private final persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;

.field private final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;)V
    .registers 5
    .parameter "parameters"
    .parameter "persistentCache"

    .prologue
    .line 50
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;II)V

    .line 37
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext$1;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext$1;-><init>(Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->sessions:Ljava/util/Map;

    .line 51
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;

    .line 52
    return-void
.end method


# virtual methods
.method public getSession([B)Ljavax/net/ssl/SSLSession;
    .registers 8
    .parameter "sessionId"

    .prologue
    const/4 v5, 0x0

    .line 85
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;

    invoke-direct {v1, p1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;-><init>([B)V

    .line 86
    .local v1, key:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v3

    .line 87
    :try_start_9
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSession;

    .line 88
    .local v2, session:Ljavax/net/ssl/SSLSession;
    if-eqz v2, :cond_16

    .line 89
    monitor-exit v3

    move-object v3, v2

    .line 107
    :goto_15
    return-object v3

    .line 91
    :cond_16
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_35

    .line 94
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;

    if-eqz v3, :cond_3b

    .line 95
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;

    invoke-interface {v3, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;->getSessionData([B)[B

    move-result-object v0

    .line 96
    .local v0, data:[B
    if-eqz v0, :cond_3b

    .line 97
    const/4 v3, -0x1

    invoke-virtual {p0, v0, v5, v3}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->toSession([BLjava/lang/String;I)Ljavax/net/ssl/SSLSession;

    move-result-object v2

    .line 98
    if-eqz v2, :cond_3b

    .line 99
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v3

    .line 100
    :try_start_2d
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_38

    move-object v3, v2

    .line 102
    goto :goto_15

    .line 91
    .end local v0           #data:[B
    .end local v2           #session:Ljavax/net/ssl/SSLSession;
    :catchall_35
    move-exception v4

    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v4

    .line 101
    .restart local v0       #data:[B
    .restart local v2       #session:Ljavax/net/ssl/SSLSession;
    :catchall_38
    move-exception v4

    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v4

    .end local v0           #data:[B
    :cond_3b
    move-object v3, v5

    .line 107
    goto :goto_15
.end method

.method putSession(Ljavax/net/ssl/SSLSession;)V
    .registers 6
    .parameter "session"

    .prologue
    .line 111
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;-><init>([B)V

    .line 112
    .local v1, key:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v2

    .line 113
    :try_start_c
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_22

    .line 117
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;

    if-eqz v2, :cond_21

    .line 118
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->toBytes(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v0

    .line 119
    .local v0, data:[B
    if-eqz v0, :cond_21

    .line 120
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;

    invoke-interface {v2, p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;->putSessionData(Ljavax/net/ssl/SSLSession;[B)V

    .line 123
    .end local v0           #data:[B
    :cond_21
    return-void

    .line 114
    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v3
.end method

.method sessionIterator()Ljava/util/Iterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v1

    .line 56
    :try_start_3
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/net/ssl/SSLSession;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/net/ssl/SSLSession;

    .line 58
    .local v0, array:[Ljavax/net/ssl/SSLSession;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 59
    .end local v0           #array:[Ljavax/net/ssl/SSLSession;
    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v2
.end method

.method public setSessionTimeout(I)V
    .registers 4
    .parameter "seconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 78
    if-gez p1, :cond_a

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "seconds < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_a
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->timeout:I

    .line 82
    return-void
.end method

.method trimToSize()V
    .registers 6

    .prologue
    .line 63
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v3

    .line 64
    :try_start_3
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v2

    .line 65
    .local v2, size:I
    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->maximumSize:I

    if-le v2, v4, :cond_25

    .line 66
    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->maximumSize:I

    sub-int v1, v2, v4

    .line 67
    .local v1, removals:I
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 69
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 71
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1b

    .line 73
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    .end local v1           #removals:I
    :cond_25
    monitor-exit v3

    .line 74
    return-void

    .line 73
    .end local v2           #size:I
    :catchall_27
    move-exception v4

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v4
.end method
