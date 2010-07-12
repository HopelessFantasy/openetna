.class public Landroid/webkit/SslErrorHandler;
.super Landroid/os/Handler;
.source "SslErrorHandler.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "network"


# instance fields
.field private final HANDLE_RESPONSE:I

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

.field private mSslPrefTable:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/webkit/Network;)V
    .registers 3
    .parameter "network"

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 60
    const/16 v0, 0x64

    iput v0, p0, Landroid/webkit/SslErrorHandler;->HANDLE_RESPONSE:I

    .line 76
    iput-object p1, p0, Landroid/webkit/SslErrorHandler;->mNetwork:Landroid/webkit/Network;

    .line 78
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/webkit/SslErrorHandler;->mLoaderQueue:Ljava/util/LinkedList;

    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/webkit/SslErrorHandler;->mSslPrefTable:Landroid/os/Bundle;

    .line 80
    return-void
.end method

.method private declared-synchronized processNextLoader()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 150
    monitor-enter p0

    :try_start_2
    iget-object v5, p0, Landroid/webkit/SslErrorHandler;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/LoadListener;

    .line 151
    .local v2, loader:Landroid/webkit/LoadListener;
    if-eqz v2, :cond_42

    .line 153
    invoke-virtual {v2}, Landroid/webkit/LoadListener;->cancelled()Z
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_44

    move-result v5

    if-eqz v5, :cond_15

    move v5, v6

    .line 185
    :goto_13
    monitor-exit p0

    return v5

    .line 158
    :cond_15
    :try_start_15
    invoke-virtual {v2}, Landroid/webkit/LoadListener;->sslError()Landroid/net/http/SslError;

    move-result-object v0

    .line 164
    .local v0, error:Landroid/net/http/SslError;
    invoke-virtual {v0}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v3

    .line 165
    .local v3, primary:I
    invoke-virtual {v2}, Landroid/webkit/LoadListener;->host()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, host:Ljava/lang/String;
    iget-object v5, p0, Landroid/webkit/SslErrorHandler;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 172
    iget-object v5, p0, Landroid/webkit/SslErrorHandler;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-gt v3, v5, :cond_37

    .line 173
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/webkit/SslErrorHandler;->handleSslErrorResponse(Z)V

    move v5, v6

    .line 174
    goto :goto_13

    .line 180
    :cond_37
    invoke-virtual {v2}, Landroid/webkit/LoadListener;->getFrame()Landroid/webkit/BrowserFrame;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v4

    .line 181
    .local v4, proxy:Landroid/webkit/CallbackProxy;
    invoke-virtual {v4, p0, v0}, Landroid/webkit/CallbackProxy;->onReceivedSslError(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    :try_end_42
    .catchall {:try_start_15 .. :try_end_42} :catchall_44

    .line 185
    .end local v0           #error:Landroid/net/http/SslError;
    .end local v1           #host:Ljava/lang/String;
    .end local v3           #primary:I
    .end local v4           #proxy:Landroid/webkit/CallbackProxy;
    :cond_42
    const/4 v5, 0x0

    goto :goto_13

    .line 150
    .end local v2           #loader:Landroid/webkit/LoadListener;
    :catchall_44
    move-exception v5

    monitor-exit p0

    throw v5
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 200
    const/16 v0, 0x64

    invoke-virtual {p0, v0, v1, v1}, Landroid/webkit/SslErrorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/SslErrorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    return-void
.end method

.method declared-synchronized clear()V
    .registers 2

    .prologue
    .line 116
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/SslErrorHandler;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 117
    monitor-exit p0

    return-void

    .line 116
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method fastProcessQueuedSslErrors()V
    .registers 2

    .prologue
    .line 141
    :cond_0
    invoke-direct {p0}, Landroid/webkit/SslErrorHandler;->processNextLoader()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    .line 70
    :goto_6
    return-void

    .line 66
    :pswitch_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_13

    move v0, v1

    :goto_c
    invoke-virtual {p0, v0}, Landroid/webkit/SslErrorHandler;->handleSslErrorResponse(Z)V

    .line 67
    invoke-virtual {p0}, Landroid/webkit/SslErrorHandler;->fastProcessQueuedSslErrors()V

    goto :goto_6

    .line 66
    :cond_13
    const/4 v0, 0x0

    goto :goto_c

    .line 64
    nop

    :pswitch_data_16
    .packed-switch 0x64
        :pswitch_7
    .end packed-switch
.end method

.method declared-synchronized handleSslErrorRequest(Landroid/webkit/LoadListener;)V
    .registers 3
    .parameter "loader"

    .prologue
    .line 128
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Landroid/webkit/LoadListener;->cancelled()Z

    move-result v0

    if-nez v0, :cond_17

    .line 129
    iget-object v0, p0, Landroid/webkit/SslErrorHandler;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Landroid/webkit/SslErrorHandler;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_17

    .line 131
    invoke-virtual {p0}, Landroid/webkit/SslErrorHandler;->fastProcessQueuedSslErrors()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 134
    :cond_17
    monitor-exit p0

    return-void

    .line 128
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized handleSslErrorResponse(Z)V
    .registers 8
    .parameter "proceed"

    .prologue
    .line 207
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Landroid/webkit/SslErrorHandler;->mLoaderQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/LoadListener;

    .line 218
    .local v2, loader:Landroid/webkit/LoadListener;
    invoke-virtual {v2}, Landroid/webkit/LoadListener;->cancelled()Z

    move-result v4

    if-nez v4, :cond_3e

    .line 219
    if-eqz p1, :cond_3b

    .line 221
    invoke-virtual {v2}, Landroid/webkit/LoadListener;->sslError()Landroid/net/http/SslError;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v3

    .line 222
    .local v3, primary:I
    invoke-virtual {v2}, Landroid/webkit/LoadListener;->host()Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, host:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/SslErrorHandler;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 228
    .local v0, hasKey:Z
    if-eqz v0, :cond_2d

    iget-object v4, p0, Landroid/webkit/SslErrorHandler;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-le v3, v4, :cond_3b

    .line 230
    :cond_2d
    iget-object v4, p0, Landroid/webkit/SslErrorHandler;->mSslPrefTable:Landroid/os/Bundle;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 233
    .end local v0           #hasKey:Z
    .end local v1           #host:Ljava/lang/String;
    .end local v3           #primary:I
    :cond_3b
    invoke-virtual {v2, p1}, Landroid/webkit/LoadListener;->handleSslErrorResponse(Z)V
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_40

    .line 235
    :cond_3e
    monitor-exit p0

    return-void

    .line 207
    .end local v2           #loader:Landroid/webkit/LoadListener;
    :catchall_40
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public proceed()V
    .registers 4

    .prologue
    .line 192
    const/16 v0, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/SslErrorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/SslErrorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 193
    return-void
.end method

.method restoreState(Landroid/os/Bundle;)Z
    .registers 5
    .parameter "inState"

    .prologue
    const-string v2, "ssl-error-handler"

    .line 101
    if-eqz p1, :cond_19

    const/4 v1, 0x1

    move v0, v1

    .line 102
    .local v0, success:Z
    :goto_6
    if-eqz v0, :cond_18

    .line 103
    const-string v1, "ssl-error-handler"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 104
    if-eqz v0, :cond_18

    .line 105
    const-string v1, "ssl-error-handler"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/SslErrorHandler;->mSslPrefTable:Landroid/os/Bundle;

    .line 109
    :cond_18
    return v0

    .line 101
    .end local v0           #success:Z
    :cond_19
    const/4 v1, 0x0

    move v0, v1

    goto :goto_6
.end method

.method saveState(Landroid/os/Bundle;)Z
    .registers 5
    .parameter "outState"

    .prologue
    .line 87
    if-eqz p1, :cond_e

    const/4 v1, 0x1

    move v0, v1

    .line 88
    .local v0, success:Z
    :goto_4
    if-eqz v0, :cond_d

    .line 90
    const-string v1, "ssl-error-handler"

    iget-object v2, p0, Landroid/webkit/SslErrorHandler;->mSslPrefTable:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 93
    :cond_d
    return v0

    .line 87
    .end local v0           #success:Z
    :cond_e
    const/4 v1, 0x0

    move v0, v1

    goto :goto_4
.end method
