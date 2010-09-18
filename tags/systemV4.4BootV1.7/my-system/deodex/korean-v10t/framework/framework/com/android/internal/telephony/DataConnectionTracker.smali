.class public abstract Lcom/android/internal/telephony/DataConnectionTracker;
.super Landroid/os/Handler;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataConnectionTracker$1;,
        Lcom/android/internal/telephony/DataConnectionTracker$Activity;,
        Lcom/android/internal/telephony/DataConnectionTracker$State;
    }
.end annotation


# static fields
.field protected static final APN_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field private static final DBG:Z = true

.field protected static final DEFAULT_MAX_PDP_RESET_FAIL:I = 0x3

.field protected static final EVENT_APN_CHANGED:I = 0x1d

.field protected static final EVENT_CDMA_DATA_DETACHED:I = 0x1e

.field public static final EVENT_CLEAN_UP_CONNECTION:I = 0x22

.field protected static final EVENT_DATA_SETUP_COMPLETE:I = 0x1

.field protected static final EVENT_DATA_STATE_CHANGED:I = 0x6

.field protected static final EVENT_DISCONNECT_DONE:I = 0x19

.field protected static final EVENT_ENABLE_NEW_APN:I = 0x17

.field protected static final EVENT_GET_PDP_LIST_COMPLETE:I = 0xb

.field protected static final EVENT_GPRS_ATTACHED:I = 0x1a

.field protected static final EVENT_GPRS_DETACHED:I = 0x13

.field protected static final EVENT_LINK_STATE_CHANGED:I = 0x14

.field protected static final EVENT_NV_READY:I = 0x1f

.field protected static final EVENT_POLL_PDP:I = 0x7

.field protected static final EVENT_PS_RESTRICT_DISABLED:I = 0x21

.field protected static final EVENT_PS_RESTRICT_ENABLED:I = 0x20

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x3

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0xc

.field protected static final EVENT_RECORDS_LOADED:I = 0x4

.field protected static final EVENT_RESTORE_DEFAULT_APN:I = 0x18

.field protected static final EVENT_ROAMING_OFF:I = 0x16

.field protected static final EVENT_ROAMING_ON:I = 0x15

.field protected static final EVENT_START_NETSTAT_POLL:I = 0x1b

.field protected static final EVENT_START_RECOVERY:I = 0x1c

.field protected static final EVENT_TRY_SETUP_DATA:I = 0x5

.field protected static final EVENT_VOICE_CALL_ENDED:I = 0xf

.field protected static final EVENT_VOICE_CALL_STARTED:I = 0xe

.field protected static final NULL_IP:Ljava/lang/String; = "0.0.0.0"

.field protected static final POLL_LONGEST_RTT:I = 0x1d4c0

.field protected static final POLL_NETSTAT_MILLIS:I = 0x3e8

.field protected static final POLL_NETSTAT_SCREEN_OFF_MILLIS:I = 0x927c0

.field protected static final RECONNECT_DELAY_INITIAL_MILLIS:I = 0x1388

.field protected static final RECONNECT_DELAY_MAX_MILLIS:I = 0x1b7740

.field protected static final RESTORE_DEFAULT_APN_DELAY:I = 0xea60


# instance fields
.field protected activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

.field protected cidActive:I

.field protected mDataConnectionTracker:Landroid/os/Handler;

.field protected mIsWifiConnected:Z

.field protected mReconnectIntent:Landroid/app/PendingIntent;

.field protected netStatPollEnabled:Z

.field protected netStatPollPeriod:I

.field protected netstat:Landroid/os/INetStatService;

.field protected phone:Lcom/android/internal/telephony/PhoneBase;

.field protected rxPkts:J

.field protected sentSinceLastRecv:J

.field protected state:Lcom/android/internal/telephony/DataConnectionTracker$State;

.field protected txPkts:J


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .registers 5
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 123
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 124
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 125
    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    .line 131
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z

    .line 134
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    .line 137
    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 147
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 148
    return-void
.end method


# virtual methods
.method public abstract findIndexWithField(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method public abstract getAnyDataEnabled()Z
.end method

.method public abstract getDataEnabled()Z
.end method

.method public getDataOnRoamingEnabled()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 198
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_10
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_10} :catch_17

    move-result v1

    if-lez v1, :cond_15

    const/4 v1, 0x1

    .line 201
    :goto_14
    return v1

    :cond_15
    move v1, v3

    .line 198
    goto :goto_14

    .line 200
    :catch_17
    move-exception v1

    move-object v0, v1

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    move v1, v3

    .line 201
    goto :goto_14
.end method

.method public getSocketDataCallEnabled()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const-string v4, "socket_data_call_enable"

    .line 207
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "socket_data_call_enable"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_12
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_12} :catch_19

    move-result v1

    if-lez v1, :cond_17

    move v1, v3

    .line 218
    :goto_16
    return v1

    .line 207
    :cond_17
    const/4 v1, 0x0

    goto :goto_16

    .line 209
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 214
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "socket_data_call_enable"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v1, v3

    .line 218
    goto :goto_16
.end method

.method public getState()Lcom/android/internal/telephony/DataConnectionTracker$State;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method public getStateInString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 159
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$1;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 167
    const-string v0, "ERRO"

    :goto_f
    return-object v0

    .line 160
    :pswitch_10
    const-string v0, "IDLE"

    goto :goto_f

    .line 161
    :pswitch_13
    const-string v0, "INIT"

    goto :goto_f

    .line 162
    :pswitch_16
    const-string v0, "CING"

    goto :goto_f

    .line 163
    :pswitch_19
    const-string v0, "SCAN"

    goto :goto_f

    .line 164
    :pswitch_1c
    const-string v0, "CNTD"

    goto :goto_f

    .line 165
    :pswitch_1f
    const-string v0, "DING"

    goto :goto_f

    .line 166
    :pswitch_22
    const-string v0, "FAIL"

    goto :goto_f

    .line 159
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 236
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_6c

    .line 285
    const-string v2, "DATA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unidentified event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :goto_1f
    return-void

    .line 239
    :sswitch_20
    const/4 v0, 0x0

    .line 240
    .local v0, reason:Ljava/lang/String;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2b

    .line 241
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #reason:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 243
    .restart local v0       #reason:Ljava/lang/String;
    :cond_2b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->onTrySetupData(Ljava/lang/String;)V

    goto :goto_1f

    .line 247
    .end local v0           #reason:Ljava/lang/String;
    :sswitch_2f
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRoamingOff()V

    goto :goto_1f

    .line 251
    :sswitch_33
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRoamingOn()V

    goto :goto_1f

    .line 255
    :sswitch_37
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRadioAvailable()V

    goto :goto_1f

    .line 259
    :sswitch_3b
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRadioOffOrNotAvailable()V

    goto :goto_1f

    .line 263
    :sswitch_3f
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->cidActive:I

    .line 264
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->onDataSetupComplete(Landroid/os/AsyncResult;)V

    goto :goto_1f

    .line 268
    :sswitch_4b
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->onDisconnectDone(Landroid/os/AsyncResult;)V

    goto :goto_1f

    .line 272
    :sswitch_53
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onVoiceCallStarted()V

    goto :goto_1f

    .line 276
    :sswitch_57
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onVoiceCallEnded()V

    goto :goto_1f

    .line 280
    :sswitch_5b
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_69

    const/4 v2, 0x0

    move v1, v2

    .line 281
    .local v1, tearDown:Z
    :goto_61
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpConnection(ZLjava/lang/String;)V

    goto :goto_1f

    .line 280
    .end local v1           #tearDown:Z
    :cond_69
    const/4 v2, 0x1

    move v1, v2

    goto :goto_61

    .line 236
    :sswitch_data_6c
    .sparse-switch
        0x1 -> :sswitch_3f
        0x3 -> :sswitch_37
        0x5 -> :sswitch_20
        0xc -> :sswitch_3b
        0xe -> :sswitch_53
        0xf -> :sswitch_57
        0x15 -> :sswitch_33
        0x16 -> :sswitch_2f
        0x19 -> :sswitch_4b
        0x22 -> :sswitch_5b
    .end sparse-switch
.end method

.method public abstract isDataConnectionAsDesired()Z
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract onCleanUpConnection(ZLjava/lang/String;)V
.end method

.method protected abstract onDataSetupComplete(Landroid/os/AsyncResult;)V
.end method

.method protected abstract onDisconnectDone(Landroid/os/AsyncResult;)V
.end method

.method protected abstract onRadioAvailable()V
.end method

.method protected abstract onRadioOffOrNotAvailable()V
.end method

.method protected abstract onRoamingOff()V
.end method

.method protected abstract onRoamingOn()V
.end method

.method protected abstract onTrySetupData(Ljava/lang/String;)V
.end method

.method protected abstract onVoiceCallEnded()V
.end method

.method protected abstract onVoiceCallStarted()V
.end method

.method protected abstract restartRadio()V
.end method

.method public abstract setDataEnabled(Z)Z
.end method

.method public setDataOnRoamingEnabled(Z)V
    .registers 6
    .parameter "enabled"

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v1

    if-eq v1, p1, :cond_18

    .line 187
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    if-eqz p1, :cond_2f

    const/4 v3, 0x1

    :goto_15
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 190
    :cond_18
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eqz v1, :cond_31

    const/16 v1, 0x15

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    move-object v0, v1

    .line 192
    .local v0, roamingMsg:Landroid/os/Message;
    :goto_2b
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 193
    return-void

    .line 187
    .end local v0           #roamingMsg:Landroid/os/Message;
    :cond_2f
    const/4 v3, 0x0

    goto :goto_15

    .line 190
    :cond_31
    const/16 v1, 0x16

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    move-object v0, v1

    goto :goto_2b
.end method

.method protected abstract startNetStatPoll()V
.end method

.method protected abstract stopNetStatPoll()V
.end method
