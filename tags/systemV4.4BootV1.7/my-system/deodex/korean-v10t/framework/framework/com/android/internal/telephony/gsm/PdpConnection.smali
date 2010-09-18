.class public Lcom/android/internal/telephony/gsm/PdpConnection;
.super Lcom/android/internal/telephony/DataConnection;
.source "PdpConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/PdpConnection$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final PDP_FAIL_ACTIVATION_REJECT_GGSN:I = 0x1e

.field private static final PDP_FAIL_ACTIVATION_REJECT_UNSPECIFIED:I = 0x1f

.field private static final PDP_FAIL_ERROR_UNSPECIFIED:I = 0xffff

.field private static final PDP_FAIL_GPRS_REGISTRATION_FAIL:I = -0x2

.field private static final PDP_FAIL_INSUFFICIENT_RESOURCES:I = 0x1a

.field private static final PDP_FAIL_MISSING_UKNOWN_APN:I = 0x1b

.field private static final PDP_FAIL_NSAPI_IN_USE:I = 0x23

.field private static final PDP_FAIL_OPERATOR_BARRED:I = 0x8

.field private static final PDP_FAIL_PROTOCOL_ERRORS:I = 0x6f

.field private static final PDP_FAIL_REGISTRATION_FAIL:I = -0x1

.field private static final PDP_FAIL_SERVICE_OPTION_NOT_SUBSCRIBED:I = 0x21

.field private static final PDP_FAIL_SERVICE_OPTION_NOT_SUPPORTED:I = 0x20

.field private static final PDP_FAIL_SERVICE_OPTION_OUT_OF_ORDER:I = 0x22

.field private static final PDP_FAIL_UNKNOWN_PDP_ADDRESS_TYPE:I = 0x1c

.field private static final PDP_FAIL_USER_AUTHENTICATION:I = 0x1d


# instance fields
.field private apn:Lcom/android/internal/telephony/gsm/ApnSetting;

.field private pdp_name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .registers 2
    .parameter "phone"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 65
    return-void
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .registers 4
    .parameter "address"

    .prologue
    .line 324
    if-nez p1, :cond_4

    const/4 v0, 0x0

    .line 326
    :goto_3
    return v0

    :cond_4
    sget-object v0, Landroid/text/util/Regex;->IP_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_3
.end method

.method private tearDownData(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 96
    sget-object v0, Lcom/android/internal/telephony/DataConnection$State;->INACTIVATING:Lcom/android/internal/telephony/DataConnection$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->cid:I

    const/4 v2, 0x4

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/gsm/PdpConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(ILandroid/os/Message;)V

    .line 100
    :cond_20
    return-void
.end method


# virtual methods
.method public clearSettings()V
    .registers 2

    .prologue
    .line 122
    invoke-super {p0}, Lcom/android/internal/telephony/DataConnection;->clearSettings()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 124
    return-void
.end method

.method connect(Lcom/android/internal/telephony/gsm/ApnSetting;Landroid/os/Message;)V
    .registers 10
    .parameter "apn"
    .parameter "onCompleted"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connecting to carrier: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/gsm/ApnSetting;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' APN: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/gsm/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' proxy: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/gsm/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' port: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/gsm/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/PdpConnection;->log(Ljava/lang/String;)V

    .line 77
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/ApnSetting;->proxy:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/gsm/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/PdpConnection;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/android/internal/telephony/DataConnection$State;->ACTIVATING:Lcom/android/internal/telephony/DataConnection$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    .line 80
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    .line 81
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->onConnectCompleted:Landroid/os/Message;

    .line 82
    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->createTime:J

    .line 83
    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->lastFailTime:J

    .line 84
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 85
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->receivedDisconnectReq:Z

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/ApnSetting;->apn:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/telephony/gsm/ApnSetting;->user:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/internal/telephony/gsm/ApnSetting;->password:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/PdpConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setupDataCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 90
    return-void
.end method

.method protected disconnect(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->onDisconnect:Landroid/os/Message;

    .line 105
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnection$State;->ACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    if-ne v0, v1, :cond_c

    .line 106
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/PdpConnection;->tearDownData(Landroid/os/Message;)V

    .line 119
    :cond_b
    :goto_b
    return-void

    .line 107
    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnection$State;->ACTIVATING:Lcom/android/internal/telephony/DataConnection$State;

    if-ne v0, v1, :cond_16

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->receivedDisconnectReq:Z

    goto :goto_b

    .line 111
    :cond_16
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnection$State;->INACTIVATING:Lcom/android/internal/telephony/DataConnection$State;

    if-eq v0, v1, :cond_b

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/PdpConnection;->notifyDisconnect(Landroid/os/Message;)V

    goto :goto_b
.end method

.method public getApn()Lcom/android/internal/telephony/gsm/ApnSetting;
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    return-object v0
.end method

.method protected getFailCauseFromRequest(I)Lcom/android/internal/telephony/DataConnection$FailCause;
    .registers 3
    .parameter "rilCause"

    .prologue
    .line 193
    sparse-switch p1, :sswitch_data_34

    .line 240
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 242
    .local v0, cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :goto_5
    return-object v0

    .line 195
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_6
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 196
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_5

    .line 198
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_9
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 199
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_5

    .line 201
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_c
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 202
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_5

    .line 204
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_f
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN_PDP_ADDRESS:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 205
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_5

    .line 207
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_12
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 208
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_5

    .line 210
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_15
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 211
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_5

    .line 213
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_18
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 214
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_5

    .line 216
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_1b
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 217
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_5

    .line 219
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_1e
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 220
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_5

    .line 222
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_21
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 223
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_5

    .line 225
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_24
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 226
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_5

    .line 228
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_27
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 229
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_5

    .line 231
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_2a
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 232
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_5

    .line 234
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_2d
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 235
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_5

    .line 237
    .end local v0           #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    :sswitch_30
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 238
    .restart local v0       #cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    goto :goto_5

    .line 193
    nop

    :sswitch_data_34
    .sparse-switch
        -0x2 -> :sswitch_30
        -0x1 -> :sswitch_2d
        0x8 -> :sswitch_6
        0x1a -> :sswitch_9
        0x1b -> :sswitch_c
        0x1c -> :sswitch_f
        0x1d -> :sswitch_12
        0x1e -> :sswitch_15
        0x1f -> :sswitch_18
        0x20 -> :sswitch_1e
        0x21 -> :sswitch_21
        0x22 -> :sswitch_1b
        0x23 -> :sswitch_24
        0x6f -> :sswitch_27
        0xffff -> :sswitch_2a
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .registers 5
    .parameter "s"

    .prologue
    .line 246
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PdpConnection] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void
.end method

.method protected notifyDisconnect(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 167
    const-string v0, "Notify PDP disconnect"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/PdpConnection;->log(Ljava/lang/String;)V

    .line 169
    if-eqz p1, :cond_d

    .line 170
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 171
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 173
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/PdpConnection;->clearSettings()V

    .line 174
    return-void
.end method

.method protected notifyFail(Lcom/android/internal/telephony/DataConnection$FailCause;Landroid/os/Message;)V
    .registers 6
    .parameter "cause"
    .parameter "onCompleted"

    .prologue
    .line 134
    if-nez p2, :cond_3

    .line 148
    :goto_2
    return-void

    .line 136
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/DataConnection$State;->INACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    .line 137
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->lastFailTime:J

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->onConnectCompleted:Landroid/os/Message;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notify PDP fail at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->lastFailTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/PdpConnection;->log(Ljava/lang/String;)V

    .line 146
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {p2, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 147
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2
.end method

.method protected notifySuccess(Landroid/os/Message;)V
    .registers 5
    .parameter "onCompleted"

    .prologue
    .line 151
    if-nez p1, :cond_3

    .line 164
    :goto_2
    return-void

    .line 155
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/DataConnection$State;->ACTIVE:Lcom/android/internal/telephony/DataConnection$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->createTime:J

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->onConnectCompleted:Landroid/os/Message;

    .line 158
    iget v0, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->cid:I

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notify PDP success at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/PdpConnection;->log(Ljava/lang/String;)V

    .line 162
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 163
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2
.end method

.method protected onDeactivated(Landroid/os/AsyncResult;)V
    .registers 3
    .parameter "ar"

    .prologue
    .line 251
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/PdpConnection;->notifyDisconnect(Landroid/os/Message;)V

    .line 252
    const-string v0, "PDP Connection Deactivated"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/PdpConnection;->log(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method protected onLinkStateChanged(Lcom/android/internal/telephony/DataLinkInterface$LinkState;)V
    .registers 4
    .parameter "linkState"

    .prologue
    .line 177
    sget-object v0, Lcom/android/internal/telephony/gsm/PdpConnection$1;->$SwitchMap$com$android$internal$telephony$DataLinkInterface$LinkState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    .line 188
    :goto_b
    return-void

    .line 179
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->onConnectCompleted:Landroid/os/Message;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/PdpConnection;->notifySuccess(Landroid/os/Message;)V

    goto :goto_b

    .line 184
    :pswitch_12
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/PdpConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getLastPdpFailCause(Landroid/os/Message;)V

    goto :goto_b

    .line 177
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

    .line 257
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_55

    .line 258
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PDP Context Init failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->receivedDisconnectReq:Z

    if-eqz v3, :cond_2d

    .line 264
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->onDisconnect:Landroid/os/Message;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/PdpConnection;->notifyDisconnect(Landroid/os/Message;)V

    .line 321
    :goto_2c
    return-void

    .line 266
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

    .line 269
    sget-object v3, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->onConnectCompleted:Landroid/os/Message;

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/PdpConnection;->notifyFail(Lcom/android/internal/telephony/DataConnection$FailCause;Landroid/os/Message;)V

    goto :goto_2c

    .line 272
    :cond_49
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/PdpConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getLastPdpFailCause(Landroid/os/Message;)V

    goto :goto_2c

    .line 277
    :cond_55
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->receivedDisconnectReq:Z

    if-eqz v3, :cond_5f

    .line 281
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->onDisconnect:Landroid/os/Message;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/PdpConnection;->tearDownData(Landroid/os/Message;)V

    goto :goto_2c

    .line 283
    :cond_5f
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 284
    .local v2, response:[Ljava/lang/String;
    aget-object v3, v2, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->cid:I

    .line 286
    array-length v3, v2

    if-le v3, v8, :cond_184

    .line 287
    aget-object v3, v2, v7

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->interfaceName:Ljava/lang/String;

    .line 288
    aget-object v3, v2, v8

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->ipAddress:Ljava/lang/String;

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "net."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->interfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
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

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->gatewayAddress:Ljava/lang/String;

    .line 291
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->dnsServers:[Ljava/lang/String;

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

    .line 292
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->dnsServers:[Ljava/lang/String;

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

    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->interfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ipAddress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->ipAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " gateway="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->gatewayAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " DNS1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->dnsServers:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " DNS2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->dnsServers:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/PdpConnection;->log(Ljava/lang/String;)V

    .line 299
    const-string v3, "0.0.0.0"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->dnsServers:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_184

    const-string v3, "0.0.0.0"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->dnsServers:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_184

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->isDnsCheckDisabled()Z

    move-result v3

    if-nez v3, :cond_184

    .line 306
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/ApnSetting;->types:[Ljava/lang/String;

    aget-object v3, v3, v6

    const-string v4, "mms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16a

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/ApnSetting;->mmsProxy:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/PdpConnection;->isIpAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_184

    .line 308
    :cond_16a
    const v3, 0xc3b4

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->dnsServers:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 310
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v4, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->cid:I

    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/PdpConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(ILandroid/os/Message;)V

    goto/16 :goto_2c

    .line 316
    .end local v1           #prefix:Ljava/lang/String;
    :cond_184
    sget-object v3, Lcom/android/internal/telephony/DataLinkInterface$LinkState;->LINK_UP:Lcom/android/internal/telephony/DataLinkInterface$LinkState;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/PdpConnection;->onLinkStateChanged(Lcom/android/internal/telephony/DataLinkInterface$LinkState;)V

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PDP setup on cid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->cid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/PdpConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_2c
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->state:Lcom/android/internal/telephony/DataConnection$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Apn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->apn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " create="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->lastFailTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lastFailCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/PdpConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
