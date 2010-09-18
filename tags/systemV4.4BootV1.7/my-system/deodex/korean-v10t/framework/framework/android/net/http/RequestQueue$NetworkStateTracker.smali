.class Landroid/net/http/RequestQueue$NetworkStateTracker;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/RequestQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkStateTracker"
.end annotation


# static fields
.field static final EVENT_DATA_STATE_CHANGED:I = 0x64


# instance fields
.field mConnectivityListener:Landroid/net/NetworkConnectivityListener;

.field mContext:Landroid/content/Context;

.field mCurrentNetworkType:I

.field private mHandler:Landroid/os/Handler;

.field mLastNetworkState:Landroid/net/NetworkInfo$State;

.field final synthetic this$0:Landroid/net/http/RequestQueue;


# direct methods
.method constructor <init>(Landroid/net/http/RequestQueue;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 100
    iput-object p1, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->this$0:Landroid/net/http/RequestQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->mLastNetworkState:Landroid/net/NetworkInfo$State;

    .line 138
    new-instance v0, Landroid/net/http/RequestQueue$NetworkStateTracker$1;

    invoke-direct {v0, p0}, Landroid/net/http/RequestQueue$NetworkStateTracker$1;-><init>(Landroid/net/http/RequestQueue$NetworkStateTracker;)V

    iput-object v0, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->mHandler:Landroid/os/Handler;

    .line 101
    iput-object p2, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->mContext:Landroid/content/Context;

    .line 102
    return-void
.end method


# virtual methods
.method broadcastState(Z)V
    .registers 4
    .parameter "connected"

    .prologue
    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.http.NETWORK_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "up"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    iget-object v1, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 200
    return-void
.end method

.method protected disable()V
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->mConnectivityListener:Landroid/net/NetworkConnectivityListener;

    if-eqz v0, :cond_13

    .line 132
    iget-object v0, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->mConnectivityListener:Landroid/net/NetworkConnectivityListener;

    iget-object v1, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/net/NetworkConnectivityListener;->unregisterHandler(Landroid/os/Handler;)V

    .line 133
    iget-object v0, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->mConnectivityListener:Landroid/net/NetworkConnectivityListener;

    invoke-virtual {v0}, Landroid/net/NetworkConnectivityListener;->stopListening()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->mConnectivityListener:Landroid/net/NetworkConnectivityListener;

    .line 136
    :cond_13
    return-void
.end method

.method protected enable()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 108
    iget-object v0, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->mConnectivityListener:Landroid/net/NetworkConnectivityListener;

    if-nez v0, :cond_22

    .line 122
    iput v1, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->mCurrentNetworkType:I

    .line 123
    iget-object v0, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->this$0:Landroid/net/http/RequestQueue;

    iput-boolean v1, v0, Landroid/net/http/RequestQueue;->mNetworkUnInit:Z

    .line 124
    new-instance v0, Landroid/net/NetworkConnectivityListener;

    invoke-direct {v0}, Landroid/net/NetworkConnectivityListener;-><init>()V

    iput-object v0, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->mConnectivityListener:Landroid/net/NetworkConnectivityListener;

    .line 125
    iget-object v0, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->mConnectivityListener:Landroid/net/NetworkConnectivityListener;

    iget-object v1, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkConnectivityListener;->registerHandler(Landroid/os/Handler;I)V

    .line 126
    iget-object v0, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->mConnectivityListener:Landroid/net/NetworkConnectivityListener;

    iget-object v1, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/net/NetworkConnectivityListener;->startListening(Landroid/content/Context;)V

    .line 128
    :cond_22
    return-void
.end method

.method getCurrentNetworkType()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->mCurrentNetworkType:I

    return v0
.end method

.method networkStateChanged()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 153
    iget-object v4, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->mConnectivityListener:Landroid/net/NetworkConnectivityListener;

    if-nez v4, :cond_7

    .line 194
    :cond_6
    :goto_6
    return-void

    .line 156
    :cond_7
    iget-object v4, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->this$0:Landroid/net/http/RequestQueue;

    iput-boolean v6, v4, Landroid/net/http/RequestQueue;->mNetworkUnInit:Z

    .line 157
    iget-object v4, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->mConnectivityListener:Landroid/net/NetworkConnectivityListener;

    invoke-virtual {v4}, Landroid/net/NetworkConnectivityListener;->getState()Landroid/net/NetworkConnectivityListener$State;

    move-result-object v0

    .line 158
    .local v0, connectivityState:Landroid/net/NetworkConnectivityListener$State;
    iget-object v4, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->mConnectivityListener:Landroid/net/NetworkConnectivityListener;

    invoke-virtual {v4}, Landroid/net/NetworkConnectivityListener;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 159
    .local v1, info:Landroid/net/NetworkInfo;
    if-nez v1, :cond_1f

    .line 165
    const-string v4, "NetworkStateTracker: connectivity broadcast has null network info - ignoring"

    invoke-static {v4}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    goto :goto_6

    .line 169
    :cond_1f
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 172
    .local v3, state:Landroid/net/NetworkInfo$State;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NetworkStateTracker "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " last= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->mLastNetworkState:Landroid/net/NetworkInfo$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " connectivityState= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/NetworkConnectivityListener$State;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 177
    iget-object v4, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->mLastNetworkState:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_89

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_89

    move v2, v7

    .line 180
    .local v2, newConnection:Z
    :goto_6a
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_79

    .line 181
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    iput v4, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->mCurrentNetworkType:I

    .line 182
    iget-object v4, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->this$0:Landroid/net/http/RequestQueue;

    invoke-static {v4}, Landroid/net/http/RequestQueue;->access$000(Landroid/net/http/RequestQueue;)V

    .line 185
    :cond_79
    iput-object v3, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->mLastNetworkState:Landroid/net/NetworkInfo$State;

    .line 186
    sget-object v4, Landroid/net/NetworkConnectivityListener$State;->NOT_CONNECTED:Landroid/net/NetworkConnectivityListener$State;

    if-ne v0, v4, :cond_8b

    .line 187
    iget-object v4, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->this$0:Landroid/net/http/RequestQueue;

    invoke-virtual {v4, v6}, Landroid/net/http/RequestQueue;->setNetworkState(Z)V

    .line 188
    invoke-virtual {p0, v6}, Landroid/net/http/RequestQueue$NetworkStateTracker;->broadcastState(Z)V

    goto/16 :goto_6

    .end local v2           #newConnection:Z
    :cond_89
    move v2, v6

    .line 177
    goto :goto_6a

    .line 189
    .restart local v2       #newConnection:Z
    :cond_8b
    if-eqz v2, :cond_6

    .line 190
    iget-object v4, p0, Landroid/net/http/RequestQueue$NetworkStateTracker;->this$0:Landroid/net/http/RequestQueue;

    invoke-virtual {v4, v7}, Landroid/net/http/RequestQueue;->setNetworkState(Z)V

    .line 191
    invoke-virtual {p0, v7}, Landroid/net/http/RequestQueue$NetworkStateTracker;->broadcastState(Z)V

    goto/16 :goto_6
.end method
