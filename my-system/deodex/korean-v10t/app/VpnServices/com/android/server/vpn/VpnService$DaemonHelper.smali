.class Lcom/android/server/vpn/VpnService$DaemonHelper;
.super Ljava/lang/Object;
.source "VpnService.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vpn/VpnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DaemonHelper"
.end annotation


# instance fields
.field private mDaemonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/vpn/DaemonProxy;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/vpn/VpnService;


# direct methods
.method private constructor <init>(Lcom/android/server/vpn/VpnService;)V
    .registers 3
    .parameter

    .prologue
    .line 427
    .local p0, this:Lcom/android/server/vpn/VpnService$DaemonHelper;,"Lcom/android/server/vpn/VpnService<TE;>.DaemonHelper;"
    iput-object p1, p0, Lcom/android/server/vpn/VpnService$DaemonHelper;->this$0:Lcom/android/server/vpn/VpnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vpn/VpnService$DaemonHelper;->mDaemonList:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vpn/VpnService;Lcom/android/server/vpn/VpnService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 427
    .local p0, this:Lcom/android/server/vpn/VpnService$DaemonHelper;,"Lcom/android/server/vpn/VpnService<TE;>.DaemonHelper;"
    invoke-direct {p0, p1}, Lcom/android/server/vpn/VpnService$DaemonHelper;-><init>(Lcom/android/server/vpn/VpnService;)V

    return-void
.end method

.method private getResultFromSocket(Lcom/android/server/vpn/DaemonProxy;)I
    .registers 4
    .parameter "s"

    .prologue
    .line 459
    .local p0, this:Lcom/android/server/vpn/VpnService$DaemonHelper;,"Lcom/android/server/vpn/VpnService<TE;>.DaemonHelper;"
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/vpn/DaemonProxy;->getResultFromSocket()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    .line 461
    :goto_4
    return v1

    .line 460
    :catch_5
    move-exception v0

    .line 461
    .local v0, e:Ljava/io/IOException;
    const/4 v1, -0x1

    goto :goto_4
.end method


# virtual methods
.method declared-synchronized anyDaemonStopped()Z
    .registers 6

    .prologue
    .line 448
    .local p0, this:Lcom/android/server/vpn/VpnService$DaemonHelper;,"Lcom/android/server/vpn/VpnService<TE;>.DaemonHelper;"
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/vpn/VpnService$DaemonHelper;->mDaemonList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vpn/DaemonProxy;

    .line 449
    .local v1, s:Lcom/android/server/vpn/DaemonProxy;
    invoke-virtual {v1}, Lcom/android/server/vpn/DaemonProxy;->isStopped()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 450
    iget-object v2, p0, Lcom/android/server/vpn/VpnService$DaemonHelper;->this$0:Lcom/android/server/vpn/VpnService;

    invoke-static {v2}, Lcom/android/server/vpn/VpnService;->access$200(Lcom/android/server/vpn/VpnService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    VPN daemon gone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/vpn/DaemonProxy;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3e

    .line 451
    const/4 v2, 0x1

    .line 454
    .end local v1           #s:Lcom/android/server/vpn/DaemonProxy;
    :goto_3a
    monitor-exit p0

    return v2

    :cond_3c
    const/4 v2, 0x0

    goto :goto_3a

    .line 448
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_3e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized closeSockets()V
    .registers 4

    .prologue
    .line 444
    .local p0, this:Lcom/android/server/vpn/VpnService$DaemonHelper;,"Lcom/android/server/vpn/VpnService<TE;>.DaemonHelper;"
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/vpn/VpnService$DaemonHelper;->mDaemonList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vpn/DaemonProxy;

    .local v1, s:Lcom/android/server/vpn/DaemonProxy;
    invoke-virtual {v1}, Lcom/android/server/vpn/DaemonProxy;->closeControlSocket()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #s:Lcom/android/server/vpn/DaemonProxy;
    :catchall_17
    move-exception v2

    monitor-exit p0

    throw v2

    .line 445
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1a
    monitor-exit p0

    return-void
.end method

.method declared-synchronized getSocketError()I
    .registers 4

    .prologue
    .line 466
    .local p0, this:Lcom/android/server/vpn/VpnService$DaemonHelper;,"Lcom/android/server/vpn/VpnService<TE;>.DaemonHelper;"
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/vpn/VpnService$DaemonHelper;->mDaemonList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :sswitch_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vpn/DaemonProxy;

    .line 467
    .local v1, s:Lcom/android/server/vpn/DaemonProxy;
    invoke-direct {p0, v1}, Lcom/android/server/vpn/VpnService$DaemonHelper;->getResultFromSocket(Lcom/android/server/vpn/DaemonProxy;)I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_25

    move-result v2

    sparse-switch v2, :sswitch_data_28

    .line 481
    const/4 v2, 0x2

    .line 484
    .end local v1           #s:Lcom/android/server/vpn/DaemonProxy;
    :goto_1b
    monitor-exit p0

    return v2

    .line 472
    .restart local v1       #s:Lcom/android/server/vpn/DaemonProxy;
    :sswitch_1d
    const/4 v2, 0x1

    goto :goto_1b

    .line 475
    :sswitch_1f
    const/4 v2, 0x4

    goto :goto_1b

    .line 478
    :sswitch_21
    const/4 v2, 0x5

    goto :goto_1b

    .line 484
    .end local v1           #s:Lcom/android/server/vpn/DaemonProxy;
    :cond_23
    const/4 v2, 0x0

    goto :goto_1b

    .line 466
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_25
    move-exception v2

    monitor-exit p0

    throw v2

    .line 467
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_7
        0x5 -> :sswitch_1f
        0x7 -> :sswitch_21
        0x33 -> :sswitch_1d
    .end sparse-switch
.end method

.method declared-synchronized startDaemon(Ljava/lang/String;)Lcom/android/server/vpn/DaemonProxy;
    .registers 4
    .parameter "daemonName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    .local p0, this:Lcom/android/server/vpn/VpnService$DaemonHelper;,"Lcom/android/server/vpn/VpnService<TE;>.DaemonHelper;"
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/android/server/vpn/DaemonProxy;

    invoke-direct {v0, p1}, Lcom/android/server/vpn/DaemonProxy;-><init>(Ljava/lang/String;)V

    .line 434
    .local v0, daemon:Lcom/android/server/vpn/DaemonProxy;
    iget-object v1, p0, Lcom/android/server/vpn/VpnService$DaemonHelper;->mDaemonList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-virtual {v0}, Lcom/android/server/vpn/DaemonProxy;->start()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 436
    monitor-exit p0

    return-object v0

    .line 433
    .end local v0           #daemon:Lcom/android/server/vpn/DaemonProxy;
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized stopAll()V
    .registers 4

    .prologue
    .line 440
    .local p0, this:Lcom/android/server/vpn/VpnService$DaemonHelper;,"Lcom/android/server/vpn/VpnService<TE;>.DaemonHelper;"
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/vpn/VpnService$DaemonHelper;->mDaemonList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vpn/DaemonProxy;

    .local v1, s:Lcom/android/server/vpn/DaemonProxy;
    invoke-virtual {v1}, Lcom/android/server/vpn/DaemonProxy;->stop()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #s:Lcom/android/server/vpn/DaemonProxy;
    :catchall_17
    move-exception v2

    monitor-exit p0

    throw v2

    .line 441
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1a
    monitor-exit p0

    return-void
.end method
