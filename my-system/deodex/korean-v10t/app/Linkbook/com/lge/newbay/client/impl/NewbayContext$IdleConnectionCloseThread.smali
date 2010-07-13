.class Lcom/lge/newbay/client/impl/NewbayContext$IdleConnectionCloseThread;
.super Ljava/lang/Thread;
.source "NewbayContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/impl/NewbayContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleConnectionCloseThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/newbay/client/impl/NewbayContext;


# direct methods
.method private constructor <init>(Lcom/lge/newbay/client/impl/NewbayContext;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/lge/newbay/client/impl/NewbayContext$IdleConnectionCloseThread;->this$0:Lcom/lge/newbay/client/impl/NewbayContext;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/newbay/client/impl/NewbayContext;Lcom/lge/newbay/client/impl/NewbayContext$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/lge/newbay/client/impl/NewbayContext$IdleConnectionCloseThread;-><init>(Lcom/lge/newbay/client/impl/NewbayContext;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x1388

    .line 100
    const-wide/16 v0, 0x2710

    :try_start_4
    invoke-static {v0, v1}, Lcom/lge/newbay/client/impl/NewbayContext$IdleConnectionCloseThread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_34

    .line 103
    :goto_7
    iget-object v0, p0, Lcom/lge/newbay/client/impl/NewbayContext$IdleConnectionCloseThread;->this$0:Lcom/lge/newbay/client/impl/NewbayContext;

    iget-object v0, v0, Lcom/lge/newbay/client/impl/NewbayContext;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 105
    const-wide/16 v0, 0x2710

    :try_start_16
    invoke-static {v0, v1}, Lcom/lge/newbay/client/impl/NewbayContext$IdleConnectionCloseThread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_36

    .line 108
    :goto_19
    iget-object v0, p0, Lcom/lge/newbay/client/impl/NewbayContext$IdleConnectionCloseThread;->this$0:Lcom/lge/newbay/client/impl/NewbayContext;

    iget-object v0, v0, Lcom/lge/newbay/client/impl/NewbayContext;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 110
    iget-object v0, p0, Lcom/lge/newbay/client/impl/NewbayContext$IdleConnectionCloseThread;->this$0:Lcom/lge/newbay/client/impl/NewbayContext;

    monitor-enter v0

    .line 111
    :try_start_29
    iget-object v1, p0, Lcom/lge/newbay/client/impl/NewbayContext$IdleConnectionCloseThread;->this$0:Lcom/lge/newbay/client/impl/NewbayContext;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/lge/newbay/client/impl/NewbayContext;->access$002(Lcom/lge/newbay/client/impl/NewbayContext;Z)Z

    .line 112
    monitor-exit v0

    .line 113
    return-void

    .line 112
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_31

    throw v1

    .line 101
    :catch_34
    move-exception v0

    goto :goto_7

    .line 106
    :catch_36
    move-exception v0

    goto :goto_19
.end method
