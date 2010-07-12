.class public Landroid/webkit/HttpAuthHandler;
.super Landroid/os/Handler;
.source "HttpAuthHandler.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "network"


# instance fields
.field private final AUTH_CANCEL:I

.field private final AUTH_PROCEED:I

.field private mLoaderQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/webkit/LoadListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNetwork:Landroid/webkit/Network;


# direct methods
.method constructor <init>(Landroid/webkit/Network;)V
    .registers 3
    .parameter "network"

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 52
    const/16 v0, 0x64

    iput v0, p0, Landroid/webkit/HttpAuthHandler;->AUTH_PROCEED:I

    .line 53
    const/16 v0, 0xc8

    iput v0, p0, Landroid/webkit/HttpAuthHandler;->AUTH_CANCEL:I

    .line 62
    iput-object p1, p0, Landroid/webkit/HttpAuthHandler;->mNetwork:Landroid/webkit/Network;

    .line 63
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    .line 64
    return-void
.end method

.method private processNextLoader()V
    .registers 8

    .prologue
    .line 152
    const/4 v2, 0x0

    .line 153
    .local v2, loader:Landroid/webkit/LoadListener;
    iget-object v6, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    monitor-enter v6

    .line 154
    :try_start_4
    iget-object v5, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/webkit/LoadListener;

    move-object v2, v0

    .line 155
    monitor-exit v6
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_2e

    .line 156
    if-eqz v2, :cond_2d

    .line 157
    invoke-virtual {v2}, Landroid/webkit/LoadListener;->getFrame()Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v3

    .line 159
    .local v3, proxy:Landroid/webkit/CallbackProxy;
    invoke-virtual {v2}, Landroid/webkit/LoadListener;->proxyAuthenticate()Z

    move-result v5

    if-eqz v5, :cond_31

    iget-object v5, p0, Landroid/webkit/HttpAuthHandler;->mNetwork:Landroid/webkit/Network;

    invoke-virtual {v5}, Landroid/webkit/Network;->getProxyHostname()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 162
    .local v1, hostname:Ljava/lang/String;
    :goto_26
    invoke-virtual {v2}, Landroid/webkit/LoadListener;->realm()Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, realm:Ljava/lang/String;
    invoke-virtual {v3, p0, v1, v4}, Landroid/webkit/CallbackProxy;->onReceivedHttpAuthRequest(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .end local v1           #hostname:Ljava/lang/String;
    .end local v3           #proxy:Landroid/webkit/CallbackProxy;
    .end local v4           #realm:Ljava/lang/String;
    :cond_2d
    return-void

    .line 155
    :catchall_2e
    move-exception v5

    :try_start_2f
    monitor-exit v6
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v5

    .line 159
    .restart local v3       #proxy:Landroid/webkit/CallbackProxy;
    :cond_31
    invoke-virtual {v2}, Landroid/webkit/LoadListener;->host()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    goto :goto_26
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 108
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Landroid/webkit/HttpAuthHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/HttpAuthHandler;->sendMessage(Landroid/os/Message;)Z

    .line 109
    return-void
.end method

.method handleAuthRequest(Landroid/webkit/LoadListener;)V
    .registers 6
    .parameter "loader"

    .prologue
    const/4 v3, 0x1

    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, processNext:Z
    iget-object v1, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 138
    :try_start_5
    iget-object v2, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 139
    iget-object v2, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ne v2, v3, :cond_1a

    move v0, v3

    .line 141
    :goto_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1d

    .line 143
    if-eqz v0, :cond_19

    .line 144
    invoke-direct {p0}, Landroid/webkit/HttpAuthHandler;->processNextLoader()V

    .line 146
    :cond_19
    return-void

    .line 139
    :cond_1a
    const/4 v2, 0x0

    move v0, v2

    goto :goto_13

    .line 141
    :catchall_1d
    move-exception v2

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, loader:Landroid/webkit/LoadListener;
    iget-object v5, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    monitor-enter v5

    .line 71
    :try_start_5
    iget-object v4, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/webkit/LoadListener;

    move-object v1, v0

    .line 72
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_19

    .line 74
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_38

    .line 87
    :goto_15
    invoke-direct {p0}, Landroid/webkit/HttpAuthHandler;->processNextLoader()V

    .line 88
    return-void

    .line 72
    :catchall_19
    move-exception v4

    :try_start_1a
    monitor-exit v5
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v4

    .line 76
    :sswitch_1c
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "username"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, username:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "password"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, password:Ljava/lang/String;
    invoke-virtual {v1, v3, v2}, Landroid/webkit/LoadListener;->handleAuthResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 83
    .end local v2           #password:Ljava/lang/String;
    .end local v3           #username:Ljava/lang/String;
    :sswitch_34
    invoke-virtual {v1, v6, v6}, Landroid/webkit/LoadListener;->handleAuthResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 74
    :sswitch_data_38
    .sparse-switch
        0x64 -> :sswitch_1c
        0xc8 -> :sswitch_34
    .end sparse-switch
.end method

.method public proceed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "username"
    .parameter "password"

    .prologue
    .line 98
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/webkit/HttpAuthHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 99
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v0}, Landroid/webkit/HttpAuthHandler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    return-void
.end method

.method public useHttpAuthUsernamePassword()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, loader:Landroid/webkit/LoadListener;
    iget-object v3, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    monitor-enter v3

    .line 118
    :try_start_5
    iget-object v2, p0, Landroid/webkit/HttpAuthHandler;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/webkit/LoadListener;

    move-object v1, v0

    .line 119
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_1a

    .line 120
    if-eqz v1, :cond_1f

    .line 121
    invoke-virtual {v1}, Landroid/webkit/LoadListener;->authCredentialsInvalid()Z

    move-result v2

    if-nez v2, :cond_1d

    const/4 v2, 0x1

    .line 124
    :goto_19
    return v2

    .line 119
    :catchall_1a
    move-exception v2

    :try_start_1b
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v2

    :cond_1d
    move v2, v4

    .line 121
    goto :goto_19

    :cond_1f
    move v2, v4

    .line 124
    goto :goto_19
.end method
