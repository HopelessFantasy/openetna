.class public Lcom/android/internal/telephony/cdma/CdmaDataConnection;
.super Lcom/android/internal/telephony/DataConnection;
.source "CdmaDataConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaDataConnection$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final PS_NET_DOWN_REASON_ACC_FAIL:I = 0x7d5

.field private static final PS_NET_DOWN_REASON_ACC_IN_PROG:I = 0x7d4

.field private static final PS_NET_DOWN_REASON_ACTIVATION:I = 0x1fa

.field private static final PS_NET_DOWN_REASON_ACTIVATION_REJECT:I = 0x1f

.field private static final PS_NET_DOWN_REASON_ALERT_STOP:I = 0x1f9

.field private static final PS_NET_DOWN_REASON_ALREADY_IN_TC:I = 0x200

.field private static final PS_NET_DOWN_REASON_APN_TYPE_CONFLICT:I = 0x70

.field private static final PS_NET_DOWN_REASON_APP_PREEMPTED:I = 0x3

.field private static final PS_NET_DOWN_REASON_AUTH_FAILED:I = 0x1d

.field private static final PS_NET_DOWN_REASON_CCS_NOT_SUPPORTED_BY_BS:I = 0x1fc

.field private static final PS_NET_DOWN_REASON_CDMA_LOCK:I = 0x1f4

.field private static final PS_NET_DOWN_REASON_CD_BILL_OR_AUTH:I = 0x5dd

.field private static final PS_NET_DOWN_REASON_CD_GEN_OR_BUSY:I = 0x5dc

.field private static final PS_NET_DOWN_REASON_CHG_HDR:I = 0x5de

.field private static final PS_NET_DOWN_REASON_CLIENT_END:I = 0x7d0

.field private static final PS_NET_DOWN_REASON_CLOSE_IN_PROGRESS:I = 0x1

.field private static final PS_NET_DOWN_REASON_CONDITIONAL_IE_ERROR:I = 0x64

.field private static final PS_NET_DOWN_REASON_CONF_FAILED:I = 0x3e8

.field private static final PS_NET_DOWN_REASON_EXIT_HDR:I = 0x5df

.field private static final PS_NET_DOWN_REASON_FADE:I = 0x7d2

.field private static final PS_NET_DOWN_REASON_FILTER_SEMANTIC_ERROR:I = 0x2c

.field private static final PS_NET_DOWN_REASON_FILTER_SYNTAX_ERROR:I = 0x2d

.field private static final PS_NET_DOWN_REASON_GGSN_REJECT:I = 0x1e

.field private static final PS_NET_DOWN_REASON_HDR_CS_TIMEOUT:I = 0x5e2

.field private static final PS_NET_DOWN_REASON_HDR_NO_SESSION:I = 0x5e0

.field private static final PS_NET_DOWN_REASON_HDR_ORIG_DURING_GPS_FIX:I = 0x5e1

.field private static final PS_NET_DOWN_REASON_HDR_RELEASED_BY_CM:I = 0x5e3

.field private static final PS_NET_DOWN_REASON_INCOMPATIBLE:I = 0x1ff

.field private static final PS_NET_DOWN_REASON_INCOM_CALL:I = 0x1f8

.field private static final PS_NET_DOWN_REASON_INCOM_REJ:I = 0x3e9

.field private static final PS_NET_DOWN_REASON_INSUFFICIENT_RESOURCES:I = 0x1a

.field private static final PS_NET_DOWN_REASON_INTERCEPT:I = 0x1f5

.field private static final PS_NET_DOWN_REASON_INTERNAL_CALL_ENDED:I = 0xca

.field private static final PS_NET_DOWN_REASON_INTERNAL_ERROR:I = 0xc9

.field private static final PS_NET_DOWN_REASON_INTERNAL_MAX:I = 0xcc

.field private static final PS_NET_DOWN_REASON_INTERNAL_MIN:I = 0xc8

.field private static final PS_NET_DOWN_REASON_INTERNAL_UNKNOWN_CAUSE_CODE:I = 0xcb

.field private static final PS_NET_DOWN_REASON_INVALID_MANDATORY_INFO:I = 0x60

.field private static final PS_NET_DOWN_REASON_INVALID_TRANSACTION_ID:I = 0x51

.field private static final PS_NET_DOWN_REASON_LLC_SNDCP_FAILURE:I = 0x19

.field private static final PS_NET_DOWN_REASON_MAX_ACCESS_PROBE:I = 0x1fb

.field private static final PS_NET_DOWN_REASON_MESSAGE_INCORRECT_SEMANTIC:I = 0x5f

.field private static final PS_NET_DOWN_REASON_MESSAGE_TYPE_UNSUPPORTED:I = 0x61

.field private static final PS_NET_DOWN_REASON_MSG_AND_PROTOCOL_STATE_UNCOMPATIBLE:I = 0x65

.field private static final PS_NET_DOWN_REASON_MSG_TYPE_NONCOMPATIBLE_STATE:I = 0x62

.field private static final PS_NET_DOWN_REASON_NETWORK_FAILURE:I = 0x26

.field private static final PS_NET_DOWN_REASON_NOT_SPECIFIED:I = 0x0

.field private static final PS_NET_DOWN_REASON_NO_CDMA_SRV:I = 0x203

.field private static final PS_NET_DOWN_REASON_NO_GW_SRV:I = 0x3ea

.field private static final PS_NET_DOWN_REASON_NO_RESPONSE_FROM_BS:I = 0x1fd

.field private static final PS_NET_DOWN_REASON_NO_SRV:I = 0x7d1

.field private static final PS_NET_DOWN_REASON_NSAPI_ALREADY_USED:I = 0x23

.field private static final PS_NET_DOWN_REASON_NW_INITIATED_TERMINATION:I = 0x2

.field private static final PS_NET_DOWN_REASON_OPERATOR_DETERMINED_BARRING:I = 0x8

.field private static final PS_NET_DOWN_REASON_OPTION_NOT_SUPPORTED:I = 0x20

.field private static final PS_NET_DOWN_REASON_OPTION_TEMP_OOO:I = 0x22

.field private static final PS_NET_DOWN_REASON_OPTION_UNSUBSCRIBED:I = 0x21

.field private static final PS_NET_DOWN_REASON_PDP_WITHOUT_ACTIVE_TFT:I = 0x2e

.field private static final PS_NET_DOWN_REASON_PROTOCOL_ERROR:I = 0x6f

.field private static final PS_NET_DOWN_REASON_QOS_NOT_ACCEPTED:I = 0x25

.field private static final PS_NET_DOWN_REASON_REDIR_OR_HANDOFF:I = 0x7d6

.field private static final PS_NET_DOWN_REASON_REGULAR_DEACTIVATION:I = 0x24

.field private static final PS_NET_DOWN_REASON_REJECTED_BY_BS:I = 0x1fe

.field private static final PS_NET_DOWN_REASON_REL_NORMAL:I = 0x7d3

.field private static final PS_NET_DOWN_REASON_REL_SO_REJ:I = 0x1f7

.field private static final PS_NET_DOWN_REASON_REORDER:I = 0x1f6

.field private static final PS_NET_DOWN_REASON_TFT_SEMANTIC_ERROR:I = 0x29

.field private static final PS_NET_DOWN_REASON_TFT_SYNTAX_ERROR:I = 0x2a

.field private static final PS_NET_DOWN_REASON_UMTS_REATTACH_REQ:I = 0x27

.field private static final PS_NET_DOWN_REASON_UNKNOWN_APN:I = 0x1b

.field private static final PS_NET_DOWN_REASON_UNKNOWN_CAUSE_CODE:I = 0x71

.field private static final PS_NET_DOWN_REASON_UNKNOWN_INFO_ELEMENT:I = 0x63

.field private static final PS_NET_DOWN_REASON_UNKNOWN_PDP:I = 0x1c

.field private static final PS_NET_DOWN_REASON_UNKNOWN_PDP_CONTEXT:I = 0x2b

.field private static final PS_NET_DOWN_REASON_USER_CALL_ORIG_DURING_GPS:I = 0x201

.field private static final PS_NET_DOWN_REASON_USER_CALL_ORIG_DURING_SMS:I = 0x202


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .registers 3
    .parameter "phone"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 128
    const-string v0, "CdmaDataConnection <constructor>"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method private tearDownData(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 153
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->cid:I

    const/4 v2, 0x4

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(ILandroid/os/Message;)V

    .line 155
    :cond_1c
    return-void
.end method


# virtual methods
.method connect(Landroid/os/Message;)V
    .registers 9
    .parameter "onCompleted"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 138
    const-string v0, "CdmaDataConnection Connecting..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/android/internal/telephony/DataConnection$State;->ACTIVATING:Lcom/android/internal/telephony/DataConnection$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    .line 141
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->onConnectCompleted:Landroid/os/Message;

    .line 142
    iput-wide v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->createTime:J

    .line 143
    iput-wide v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->lastFailTime:J

    .line 144
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 145
    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->receivedDisconnectReq:Z

    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object v4, v3

    move-object v5, v3

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 149
    return-void
.end method

.method protected disconnect(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->onDisconnect:Landroid/os/Message;

    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnection$State;->ACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    if-ne v0, v1, :cond_c

    .line 160
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->tearDownData(Landroid/os/Message;)V

    .line 167
    :goto_b
    return-void

    .line 161
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnection$State;->ACTIVATING:Lcom/android/internal/telephony/DataConnection$State;

    if-ne v0, v1, :cond_16

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->receivedDisconnectReq:Z

    goto :goto_b

    .line 165
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->notifyDisconnect(Landroid/os/Message;)V

    goto :goto_b
.end method

.method protected getFailCauseFromRequest(I)Lcom/android/internal/telephony/DataConnection$FailCause;
    .registers 3
    .parameter "rilCause"

    .prologue
    .line 236
    sparse-switch p1, :sswitch_data_12

    .line 250
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 252
    .local v0, cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :goto_5
    return-object v0

    .line 238
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_6
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 239
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_5

    .line 241
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_9
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 242
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_5

    .line 244
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_c
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 245
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_5

    .line 247
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_f
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 248
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_5

    .line 236
    :sswitch_data_12
    .sparse-switch
        0x8 -> :sswitch_6
        0x1d -> :sswitch_9
        0x20 -> :sswitch_c
        0x21 -> :sswitch_f
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .registers 5
    .parameter "s"

    .prologue
    .line 256
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDataConnection] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method

.method protected notifyDisconnect(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 211
    const-string v0, "Notify data connection disconnect"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 213
    if-eqz p1, :cond_d

    .line 214
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 215
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 217
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->clearSettings()V

    .line 218
    return-void
.end method

.method protected notifyFail(Lcom/android/internal/telephony/DataConnection$FailCause;Landroid/os/Message;)V
    .registers 6
    .parameter "cause"
    .parameter "onCompleted"

    .prologue
    .line 177
    if-nez p2, :cond_3

    .line 192
    :goto_2
    return-void

    .line 180
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/DataConnection$State;->INACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    .line 181
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->lastFailTime:J

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->onConnectCompleted:Landroid/os/Message;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notify data connection fail at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->lastFailTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 190
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {p2, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 191
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2
.end method

.method protected notifySuccess(Landroid/os/Message;)V
    .registers 5
    .parameter "onCompleted"

    .prologue
    .line 195
    if-nez p1, :cond_3

    .line 208
    :goto_2
    return-void

    .line 199
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/DataConnection$State;->ACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->createTime:J

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->onConnectCompleted:Landroid/os/Message;

    .line 202
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->cid:I

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notify data connection success at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 206
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 207
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2
.end method

.method protected onDeactivated(Landroid/os/AsyncResult;)V
    .registers 3
    .parameter "ar"

    .prologue
    .line 261
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->notifyDisconnect(Landroid/os/Message;)V

    .line 262
    const-string v0, "CDMA Connection Deactivated"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method protected onLinkStateChanged(Lcom/android/internal/telephony/DataLinkInterface$LinkState;)V
    .registers 4
    .parameter "linkState"

    .prologue
    .line 221
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaDataConnection$1;->$SwitchMap$com$android$internal$telephony$DataLinkInterface$LinkState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 231
    :goto_b
    return-void

    .line 223
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->onConnectCompleted:Landroid/os/Message;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->notifySuccess(Landroid/os/Message;)V

    goto :goto_b

    .line 228
    :pswitch_12
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getLastDataCallFailCause(Landroid/os/Message;)V

    goto :goto_b

    .line 221
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_c
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method protected onSetupConnectionCompleted(Landroid/os/AsyncResult;)V
    .registers 12
    .parameter "ar"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "0.0.0.0"

    .line 267
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_55

    .line 268
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CdmaDataConnection Init failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->receivedDisconnectReq:Z

    if-eqz v3, :cond_2d

    .line 274
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->onDisconnect:Landroid/os/Message;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->notifyDisconnect(Landroid/os/Message;)V

    .line 323
    :goto_2c
    return-void

    .line 276
    :cond_2d
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_49

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_49

    .line 279
    sget-object v3, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->onConnectCompleted:Landroid/os/Message;

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->notifyFail(Lcom/android/internal/telephony/DataConnection$FailCause;Landroid/os/Message;)V

    goto :goto_2c

    .line 281
    :cond_49
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getLastDataCallFailCause(Landroid/os/Message;)V

    goto :goto_2c

    .line 285
    :cond_55
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->receivedDisconnectReq:Z

    if-eqz v3, :cond_5f

    .line 289
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->onDisconnect:Landroid/os/Message;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->tearDownData(Landroid/os/Message;)V

    goto :goto_2c

    .line 291
    :cond_5f
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 292
    .local v2, response:[Ljava/lang/String;
    aget-object v3, v2, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->cid:I

    .line 294
    array-length v3, v2

    if-le v3, v8, :cond_16c

    .line 295
    aget-object v3, v2, v7

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->interfaceName:Ljava/lang/String;

    .line 296
    aget-object v3, v2, v8

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->ipAddress:Ljava/lang/String;

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "net."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->interfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, prefix:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gw"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->gatewayAddress:Ljava/lang/String;

    .line 299
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dnsServers:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dns1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 300
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dnsServers:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dns2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->interfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ipAddress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->ipAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " gateway="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->gatewayAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " DNS1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " DNS2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    .line 307
    const-string v3, "0.0.0.0"

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16c

    const-string v3, "0.0.0.0"

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16c

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isDnsCheckDisabled()Z

    move-result v3

    if-nez v3, :cond_16c

    .line 311
    const v3, 0xc3b4

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 313
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->cid:I

    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(ILandroid/os/Message;)V

    goto/16 :goto_2c

    .line 318
    .end local v1           #prefix:Ljava/lang/String;
    :cond_16c
    sget-object v3, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->LINK_UP:Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->onLinkStateChanged(Lcom/android/internal/telephony/DataLinkInterface$LinkState;)V

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CdmaDataConnection setup on cid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->cid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_2c
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " create="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->lastFailTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastFailCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaDataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
