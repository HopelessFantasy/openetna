.class final Lcom/android/internal/telephony/gsm/RILEventDispatcher;
.super Landroid/os/Handler;
.source "RILEventDispatcher.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final EVENT_FACTORY_RESET:I = 0x397

.field private static final EVENT_OTA_IN_SVC:I = 0x39d

.field private static final EVENT_OTA_NO_SVC:I = 0x39e

.field private static final EVENT_OTA_REG_FAIL:I = 0x39b

.field private static final EVENT_OTA_REG_SUCCESS:I = 0x39c

.field private static final EVENT_REG_FAIL:I = 0x399

.field private static final EVENT_REG_SUCCESS:I = 0x39a

.field private static final EVENT_REMOVED_BATTERY:I = 0x398

.field private static final EVENT_RIL_EVENT_DISPATCHER_BASE:I = 0x396

.field private static final GCF_Off:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RILEventDispatcher"

.field private static final network_Type:I


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .registers 6
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 220
    new-instance v1, Lcom/android/internal/telephony/gsm/RILEventDispatcher$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/RILEventDispatcher$1;-><init>(Lcom/android/internal/telephony/gsm/RILEventDispatcher;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/RILEventDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/RILEventDispatcher;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 62
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/RILEventDispatcher;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.REQUEST_FACTORY_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/RILEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/RILEventDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x397

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnFactoryReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 81
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x398

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnRemovedBattery(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 92
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x399

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnRegFail(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 93
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x39a

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnRegSuccess(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 94
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x39b

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnOTARegFail(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 95
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x39c

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnOTARegSuccess(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 104
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x39d

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnOTAInSvcEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 105
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x39e

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnOTANoSvcEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/RILEventDispatcher;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/RILEventDispatcher;->handleFactoryReset()V

    return-void
.end method

.method private handleFactoryReset()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 163
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/RILEventDispatcher;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setNV_GCFFlag(ILandroid/os/Message;)I

    .line 165
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/RILEventDispatcher;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 166
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/RILEventDispatcher;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 167
    const-string v1, "RILEventDispatcher"

    const-string v2, "Reset settings for Radio"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/RILEventDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MASTER_CLEAR"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method private handleOtaInSvc()V
    .registers 4

    .prologue
    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OTA_IN_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, IntentOtaInSvc:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/RILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 209
    const-string v1, "RILEventDispatcher"

    const-string v2, "Enter OTA_IN_SVC 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void
.end method

.method private handleOtaNoSvc()V
    .registers 4

    .prologue
    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OTA_NO_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, IntentOtaNoSvc:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/RILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 216
    const-string v1, "RILEventDispatcher"

    const-string v2, "Enter OTA_NO_SVC 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void
.end method

.method private handleOtaRegFail()V
    .registers 3

    .prologue
    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OTA_REG_FAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, IntentOtaRegFail:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/RILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 194
    return-void
.end method

.method private handleOtaRegSuccess()V
    .registers 3

    .prologue
    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OTA_REG_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, IntentOtaRegSuccess:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/RILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 200
    return-void
.end method

.method private handleRegFail()V
    .registers 3

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.REG_FAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, IntentRegFail:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/RILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 181
    return-void
.end method

.method private handleRegSuccess()V
    .registers 3

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.REG_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, IntentRegSuccess:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/RILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 187
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    const-string v3, "RILEventDispatcher"

    .line 115
    const-string v1, "RILEventDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New RIL Event Message Received : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_64

    .line 156
    :goto_21
    return-void

    .line 120
    :pswitch_22
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/RILEventDispatcher;->handleFactoryReset()V

    goto :goto_21

    .line 124
    :pswitch_26
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 125
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.lge.large.poweroff"

    const-string v2, "com.lge.large.poweroff.PowerOff"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/RILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_21

    .line 132
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_3d
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/RILEventDispatcher;->handleRegFail()V

    goto :goto_21

    .line 135
    :pswitch_41
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/RILEventDispatcher;->handleRegSuccess()V

    goto :goto_21

    .line 138
    :pswitch_45
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/RILEventDispatcher;->handleOtaRegFail()V

    goto :goto_21

    .line 141
    :pswitch_49
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/RILEventDispatcher;->handleOtaRegSuccess()V

    goto :goto_21

    .line 147
    :pswitch_4d
    const-string v1, "RILEventDispatcher"

    const-string v1, "Enter OTA_IN_SVC"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/RILEventDispatcher;->handleOtaInSvc()V

    goto :goto_21

    .line 151
    :pswitch_58
    const-string v1, "RILEventDispatcher"

    const-string v1, "Enter OTA_NO_SVC"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/RILEventDispatcher;->handleOtaNoSvc()V

    goto :goto_21

    .line 118
    nop

    :pswitch_data_64
    .packed-switch 0x397
        :pswitch_22
        :pswitch_26
        :pswitch_3d
        :pswitch_41
        :pswitch_45
        :pswitch_49
        :pswitch_4d
        :pswitch_58
    .end packed-switch
.end method
