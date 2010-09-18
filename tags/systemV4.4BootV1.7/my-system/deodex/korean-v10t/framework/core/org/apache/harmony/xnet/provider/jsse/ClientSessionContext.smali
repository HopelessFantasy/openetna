.class public Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
.super Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
.source "ClientSessionContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;
    }
.end annotation


# instance fields
.field final persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

.field final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation
.end field

.field sessionsById:Ljava/util/Map;
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
.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;)V
    .registers 5
    .parameter "parameters"
    .parameter "persistentCache"

    .prologue
    .line 68
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParameters;II)V

    .line 44
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$1;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$1;-><init>(Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessions:Ljava/util/Map;

    .line 69
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    .line 70
    return-void
.end method

.method private indexById()V
    .registers 6

    .prologue
    .line 135
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsById:Ljava/util/Map;

    if-nez v2, :cond_30

    .line 136
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsById:Ljava/util/Map;

    .line 137
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSession;

    .line 138
    .local v1, session:Ljavax/net/ssl/SSLSession;
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsById:Ljava/util/Map;

    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;-><init>([B)V

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 141
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #session:Ljavax/net/ssl/SSLSession;
    :cond_30
    return-void
.end method

.method private indexById(Ljavax/net/ssl/SSLSession;)V
    .registers 5
    .parameter "session"

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsById:Ljava/util/Map;

    if-eqz v0, :cond_12

    .line 149
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsById:Ljava/util/Map;

    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;-><init>([B)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_12
    return-void
.end method


# virtual methods
.method public getSession(Ljava/lang/String;I)Ljavax/net/ssl/SSLSession;
    .registers 8
    .parameter "host"
    .parameter "port"

    .prologue
    .line 161
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v2

    .line 162
    :try_start_3
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessions:Ljava/util/Map;

    new-instance v4, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;

    invoke-direct {v4, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSession;

    .line 163
    .local v1, session:Ljavax/net/ssl/SSLSession;
    if-eqz v1, :cond_15

    .line 164
    monitor-exit v2

    move-object v2, v1

    .line 183
    :goto_14
    return-object v2

    .line 166
    :cond_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_3b

    .line 169
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    if-eqz v2, :cond_41

    .line 170
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    invoke-interface {v2, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;->getSessionData(Ljava/lang/String;I)[B

    move-result-object v0

    .line 171
    .local v0, data:[B
    if-eqz v0, :cond_41

    .line 172
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->toSession([BLjava/lang/String;I)Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_41

    .line 174
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v2

    .line 175
    :try_start_2b
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessions:Ljava/util/Map;

    new-instance v4, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;

    invoke-direct {v4, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-direct {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->indexById(Ljavax/net/ssl/SSLSession;)V

    .line 177
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_3e

    move-object v2, v1

    .line 178
    goto :goto_14

    .line 166
    .end local v0           #data:[B
    .end local v1           #session:Ljavax/net/ssl/SSLSession;
    :catchall_3b
    move-exception v3

    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v3

    .line 177
    .restart local v0       #data:[B
    .restart local v1       #session:Ljavax/net/ssl/SSLSession;
    :catchall_3e
    move-exception v3

    :try_start_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v3

    .line 183
    .end local v0           #data:[B
    :cond_41
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public getSession([B)Ljavax/net/ssl/SSLSession;
    .registers 5
    .parameter "sessionId"

    .prologue
    .line 124
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;

    invoke-direct {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;-><init>([B)V

    .line 125
    .local v0, id:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v1

    .line 126
    :try_start_8
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->indexById()V

    .line 127
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsById:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljavax/net/ssl/SSLSession;

    monitor-exit v1

    return-object p0

    .line 128
    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    throw v2
.end method

.method putSession(Ljavax/net/ssl/SSLSession;)V
    .registers 6
    .parameter "session"

    .prologue
    .line 187
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    .line 189
    .local v1, key:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v2

    .line 190
    :try_start_10
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->indexById(Ljavax/net/ssl/SSLSession;)V

    .line 192
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_29

    .line 195
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    if-eqz v2, :cond_28

    .line 196
    invoke-virtual {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->toBytes(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v0

    .line 197
    .local v0, data:[B
    if-eqz v0, :cond_28

    .line 198
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    invoke-interface {v2, p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;->putSessionData(Ljavax/net/ssl/SSLSession;[B)V

    .line 201
    .end local v0           #data:[B
    :cond_28
    return-void

    .line 192
    :catchall_29
    move-exception v3

    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v3
.end method

.method removeById(Ljavax/net/ssl/SSLSession;)V
    .registers 5
    .parameter "session"

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsById:Ljava/util/Map;

    if-eqz v0, :cond_12

    .line 104
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsById:Ljava/util/Map;

    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$ByteArray;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_12
    return-void
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
    .line 81
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v1

    .line 82
    :try_start_3
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/net/ssl/SSLSession;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/net/ssl/SSLSession;

    .line 84
    .local v0, array:[Ljavax/net/ssl/SSLSession;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 85
    .end local v0           #array:[Ljavax/net/ssl/SSLSession;
    :catchall_21
    move-exception v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v2
.end method

.method public final setSessionTimeout(I)V
    .registers 4
    .parameter "seconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 74
    if-gez p1, :cond_a

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "seconds < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_a
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->timeout:I

    .line 78
    return-void
.end method

.method trimToSize()V
    .registers 6

    .prologue
    .line 89
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v4

    .line 90
    :try_start_3
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    .line 91
    .local v2, size:I
    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->maximumSize:I

    if-le v2, v3, :cond_2b

    .line 92
    iget v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->maximumSize:I

    sub-int v1, v2, v3

    .line 93
    .local v1, removals:I
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 95
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/SSLSession;

    invoke-virtual {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->removeById(Ljavax/net/ssl/SSLSession;)V

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 97
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1b

    .line 99
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    .end local v1           #removals:I
    :cond_2b
    monitor-exit v4

    .line 100
    return-void

    .line 99
    .end local v2           #size:I
    :catchall_2d
    move-exception v3

    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v3
.end method
