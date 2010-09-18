.class public abstract Lcom/android/internal/telephony/DataConnection;
.super Landroid/os/Handler;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataConnection$1;,
        Lcom/android/internal/telephony/DataConnection$FailCause;,
        Lcom/android/internal/telephony/DataConnection$State;
    }
.end annotation


# static fields
.field protected static final EVENT_DEACTIVATE_DONE:I = 0x4

.field protected static final EVENT_FORCE_RETRY:I = 0x5

.field protected static final EVENT_GET_LAST_FAIL_DONE:I = 0x2

.field protected static final EVENT_LINK_STATE_CHANGED:I = 0x3

.field protected static final EVENT_LOG_BAD_DNS_ADDRESS:I = 0xc3b4

.field protected static final EVENT_SETUP_DATA_CONNECTION_DONE:I = 0x1

.field protected static final NULL_IP:Ljava/lang/String; = "0.0.0.0"


# instance fields
.field protected cid:I

.field protected createTime:J

.field protected dnsServers:[Ljava/lang/String;

.field protected gatewayAddress:Ljava/lang/String;

.field protected interfaceName:Ljava/lang/String;

.field protected ipAddress:Ljava/lang/String;

.field protected lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

.field protected lastFailTime:J

.field protected onConnectCompleted:Landroid/os/Message;

.field protected onDisconnect:Landroid/os/Message;

.field protected phone:Lcom/android/internal/telephony/PhoneBase;

.field protected receivedDisconnectReq:Z

.field protected state:Lcom/android/internal/telephony/DataConnection$State;

.field userData:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .registers 3
    .parameter "phone"

    .prologue
    const/4 v0, 0x0

    .line 216
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 217
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 218
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->onConnectCompleted:Landroid/os/Message;

    .line 219
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->onDisconnect:Landroid/os/Message;

    .line 220
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnection;->receivedDisconnectReq:Z

    .line 222
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    .line 224
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->clearSettings()V

    .line 225
    return-void
.end method


# virtual methods
.method public clearSettings()V
    .registers 6

    .prologue
    const-wide/16 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 258
    const-string v0, "DataConnection.clearSettings()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 263
    iput-wide v3, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    .line 264
    iput-wide v3, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    .line 265
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 267
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnection;->receivedDisconnectReq:Z

    .line 268
    iput-object v2, p0, Lcom/android/internal/telephony/DataConnection;->onConnectCompleted:Landroid/os/Message;

    .line 269
    iput-object v2, p0, Lcom/android/internal/telephony/DataConnection;->interfaceName:Ljava/lang/String;

    .line 270
    iput-object v2, p0, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    .line 271
    iput-object v2, p0, Lcom/android/internal/telephony/DataConnection;->gatewayAddress:Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    aput-object v2, v0, v1

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 274
    sget-object v0, Lcom/android/internal/telephony/DataConnection$State;->INACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    .line 276
    return-void
.end method

.method protected abstract disconnect(Landroid/os/Message;)V
.end method

.method public getConnectionTime()J
    .registers 3

    .prologue
    .line 341
    const-string v0, "DataConnection.getConnectionTime()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 342
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    return-wide v0
.end method

.method public getDnsServers()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getFailCauseFromRequest(I)Lcom/android/internal/telephony/DataConnection$FailCause;
.end method

.method public getGatewayAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->gatewayAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getInterface()Ljava/lang/String;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->interfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLastFailCause()Lcom/android/internal/telephony/DataConnection$FailCause;
    .registers 2

    .prologue
    .line 351
    const-string v0, "DataConnection.getLastFailCause()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    return-object v0
.end method

.method public getLastFailTime()J
    .registers 3

    .prologue
    .line 346
    const-string v0, "DataConnection.getLastFailTime()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 347
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    return-wide v0
.end method

.method public getState()Lcom/android/internal/telephony/DataConnection$State;
    .registers 2

    .prologue
    .line 336
    const-string v0, "DataConnection.getState()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 307
    const-string v2, "DataConnection.handleMessage()"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 309
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_34

    .line 333
    :goto_a
    return-void

    .line 312
    :pswitch_b
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->onSetupConnectionCompleted(Landroid/os/AsyncResult;)V

    goto :goto_a

    .line 316
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->onForceRetry()V

    goto :goto_a

    .line 320
    :pswitch_17
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->onGetLastFailCompleted(Landroid/os/AsyncResult;)V

    goto :goto_a

    .line 324
    :pswitch_1f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 325
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    .line 326
    .local v1, ls:Lcom/android/internal/telephony/DataLinkInterface$LinkState;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->onLinkStateChanged(Lcom/android/internal/telephony/DataLinkInterface$LinkState;)V

    goto :goto_a

    .line 330
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #ls:Lcom/android/internal/telephony/DataLinkInterface$LinkState;
    :pswitch_2b
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->onDeactivated(Landroid/os/AsyncResult;)V

    goto :goto_a

    .line 309
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_b
        :pswitch_17
        :pswitch_1f
        :pswitch_2b
        :pswitch_13
    .end packed-switch
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract notifyDisconnect(Landroid/os/Message;)V
.end method

.method protected abstract notifyFail(Lcom/android/internal/telephony/DataConnection$FailCause;Landroid/os/Message;)V
.end method

.method protected abstract onDeactivated(Landroid/os/AsyncResult;)V
.end method

.method protected onForceRetry()V
    .registers 3

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnection;->receivedDisconnectReq:Z

    if-eqz v0, :cond_a

    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->onDisconnect:Landroid/os/Message;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->notifyDisconnect(Landroid/os/Message;)V

    .line 301
    :goto_9
    return-void

    .line 299
    :cond_a
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_ERROR_RETRY:Lcom/android/internal/telephony/DataConnection$FailCause;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->onConnectCompleted:Landroid/os/Message;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->notifyFail(Lcom/android/internal/telephony/DataConnection$FailCause;Landroid/os/Message;)V

    goto :goto_9
.end method

.method protected onGetLastFailCompleted(Landroid/os/AsyncResult;)V
    .registers 6
    .parameter "ar"

    .prologue
    .line 279
    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnection;->receivedDisconnectReq:Z

    if-eqz v2, :cond_a

    .line 283
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->onDisconnect:Landroid/os/Message;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->notifyDisconnect(Landroid/os/Message;)V

    .line 293
    :goto_9
    return-void

    .line 285
    :cond_a
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 287
    .local v0, cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1d

    .line 288
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 289
    .local v1, rilFailCause:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->getFailCauseFromRequest(I)Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v0

    .line 291
    .end local v1           #rilFailCause:I
    :cond_1d
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->onConnectCompleted:Landroid/os/Message;

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/DataConnection;->notifyFail(Lcom/android/internal/telephony/DataConnection$FailCause;Landroid/os/Message;)V

    goto :goto_9
.end method

.method protected abstract onLinkStateChanged(Lcom/android/internal/telephony/DataLinkInterface$LinkState;)V
.end method

.method protected abstract onSetupConnectionCompleted(Landroid/os/AsyncResult;)V
.end method

.method protected setHttpProxy(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "httpProxy"
    .parameter "httpPort"

    .prologue
    const-string v3, "net.gprs.http-proxy"

    .line 228
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_13

    .line 229
    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "net.gprs.http-proxy"

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :goto_12
    return-void

    .line 233
    :cond_13
    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1d

    .line 234
    :cond_1b
    const-string p2, "8080"

    .line 237
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v1, "net.gprs.http-proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12
.end method

.method public abstract toString()Ljava/lang/String;
.end method
