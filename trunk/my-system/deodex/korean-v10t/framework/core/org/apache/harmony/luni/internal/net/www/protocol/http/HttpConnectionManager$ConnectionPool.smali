.class Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;
.super Ljava/lang/Object;
.source "HttpConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionPool"
.end annotation


# instance fields
.field private freeConnectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;->freeConnectionMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 6

    .prologue
    .line 110
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;->freeConnectionMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;>;"
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 111
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 112
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 113
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    .line 114
    .local v0, connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->closeSocketAndStreams()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2b

    goto :goto_1b

    .line 110
    .end local v0           #connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;>;"
    .end local v3           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    :catchall_2b
    move-exception v4

    monitor-exit p0

    throw v4

    .line 117
    .restart local v2       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;>;"
    :cond_2e
    :try_start_2e
    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;->freeConnectionMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_2b

    .line 118
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getHttpConnection(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;I)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    .registers 8
    .parameter "config"
    .parameter "connectTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;->freeConnectionMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 146
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    invoke-static {}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1b

    if-nez v1, :cond_1b

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .restart local v1       #connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;->freeConnectionMap:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_1b
    invoke-static {}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->access$100()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 151
    :cond_27
    new-instance v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;-><init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;I)V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_64

    .local v0, connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    move-object v3, v0

    .line 163
    :goto_2d
    monitor-exit p0

    return-object v3

    .line 154
    .end local v0           #connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    :cond_2f
    const/4 v3, 0x0

    :try_start_30
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;

    .line 155
    .restart local v0       #connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 156
    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->isStale()Z

    move-result v3

    if-nez v3, :cond_5f

    .line 157
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 158
    .local v2, security:Ljava/lang/SecurityManager;
    if-eqz v2, :cond_5d

    .line 159
    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->getSocket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->getSocket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->getPort()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    :cond_5d
    move-object v3, v0

    .line 161
    goto :goto_2d

    .line 163
    .end local v2           #security:Ljava/lang/SecurityManager;
    :cond_5f
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;->getHttpConnection(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;I)Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    :try_end_62
    .catchall {:try_start_30 .. :try_end_62} :catchall_64

    move-result-object v3

    goto :goto_2d

    .line 145
    .end local v0           #connection:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    :catchall_64
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public numFreeConnections()I
    .registers 5

    .prologue
    .line 169
    const/4 v2, 0x0

    .line 170
    .local v2, numFree:I
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;->freeConnectionMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 171
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 172
    .local v0, connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 173
    goto :goto_b

    .line 174
    .end local v0           #connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    :cond_1d
    return v2
.end method

.method public declared-synchronized returnConnection(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;)V
    .registers 6
    .parameter "connection"

    .prologue
    .line 124
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->access$100()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-virtual {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->isEligibleForRecycling()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 125
    invoke-virtual {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->getHttpConfiguration()Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;

    move-result-object v0

    .line 126
    .local v0, config:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;->freeConnectionMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 127
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    if-nez v1, :cond_25

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .restart local v1       #connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager$ConnectionPool;->freeConnectionMap:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_25
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnectionManager;->access$200()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 132
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 133
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3e

    .line 142
    .end local v0           #config:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    :cond_38
    :goto_38
    monitor-exit p0

    return-void

    .line 136
    .restart local v0       #config:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;
    .restart local v1       #connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    :cond_3a
    :try_start_3a
    invoke-virtual {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->closeSocketAndStreams()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_38

    .line 124
    .end local v0           #config:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConfiguration;
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;>;"
    :catchall_3e
    move-exception v2

    monitor-exit p0

    throw v2

    .line 140
    :cond_41
    :try_start_41
    invoke-virtual {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpConnection;->closeSocketAndStreams()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_3e

    goto :goto_38
.end method
