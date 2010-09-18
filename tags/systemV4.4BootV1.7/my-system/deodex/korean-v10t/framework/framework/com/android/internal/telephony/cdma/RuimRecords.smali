.class public final Lcom/android/internal/telephony/cdma/RuimRecords;
.super Lcom/android/internal/telephony/IccRecords;
.source "RuimRecords.java"


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_GET_ALL_SMS_DONE:I = 0x12

.field private static final EVENT_GET_CDMA_SUBSCRIPTION_DONE:I = 0xa

.field private static final EVENT_GET_DEVICE_IDENTITY_DONE:I = 0x4

.field private static final EVENT_GET_ICCID_DONE:I = 0x5

.field private static final EVENT_GET_SMS_DONE:I = 0x16

.field private static final EVENT_GET_SST_DONE:I = 0x11

.field private static final EVENT_MARK_SMS_READ_DONE:I = 0x13

.field private static final EVENT_NV_READY:I = 0x9

.field private static final EVENT_OTA_PROVISION_STATUS_CHANGE:I = 0x20

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_RUIM_READY:I = 0x1

.field private static final EVENT_RUIM_REFRESH:I = 0x1f

.field private static final EVENT_SMS_ON_RUIM:I = 0x15

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field private mImsi:Ljava/lang/String;

.field private mMin2Min1:Ljava/lang/String;

.field private mMyMobileNumber:Ljava/lang/String;

.field private mPrlVersion:Ljava/lang/String;

.field private m_ota_commited:Z


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .registers 6
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccRecords;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 52
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->m_ota_commited:Z

    .line 84
    new-instance v0, Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/AdnRecordCache;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 86
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsRequested:Z

    .line 89
    iput v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    .line 92
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForRUIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 93
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x9

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForNVReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 94
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 96
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRadioOffOrNotAvailable()V

    .line 100
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x20

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 102
    return-void
.end method

.method private fetchRuimRecords()V
    .registers 4

    .prologue
    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsRequested:Z

    .line 358
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RuimRecords:fetchRuimRecords "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x2fe2

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 362
    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    .line 365
    return-void
.end method

.method private handleRuimRefresh([I)V
    .registers 5
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 394
    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_c

    .line 395
    :cond_6
    const-string v0, "handleRuimRefresh without input"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 426
    :goto_b
    return-void

    .line 399
    :cond_c
    aget v0, p1, v2

    packed-switch v0, :pswitch_data_3c

    .line 423
    const-string v0, "handleRuimRefresh with unknown operation"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_b

    .line 401
    :pswitch_17
    const-string v0, "handleRuimRefresh with SIM_REFRESH_FILE_UPDATED"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 403
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    goto :goto_b

    .line 406
    :pswitch_25
    const-string v0, "handleRuimRefresh with SIM_REFRESH_INIT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 408
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    goto :goto_b

    .line 411
    :pswitch_2e
    const-string v0, "handleRuimRefresh with SIM_REFRESH_RESET"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto :goto_b

    .line 399
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_17
        :pswitch_25
        :pswitch_2e
    .end packed-switch
.end method

.method private onNvReady()V
    .registers 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 353
    return-void
.end method

.method private onRuimReady()V
    .registers 4

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimCard:Lcom/android/internal/telephony/cdma/RuimCard;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/RuimCard;->broadcastRuimStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 348
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRUIMReady(Landroid/os/Handler;)V

    .line 107
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnIccRefresh(Landroid/os/Handler;)V

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNVReady(Landroid/os/Handler;)V

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 111
    return-void
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 115
    const-string v0, "CDMA"

    const-string v1, "RuimRecords finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public getCdmaMin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin2Min1:Ljava/lang/String;

    return-object v0
.end method

.method protected getDisplayRule(Ljava/lang/String;)I
    .registers 3
    .parameter "plmn"

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public getMdnNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPrlVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPrlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRUIMOperatorNumeric()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 174
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 175
    const/4 v1, 0x0

    .line 190
    :goto_6
    return-object v1

    .line 179
    :cond_7
    iget v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mncLength:I

    if-eqz v1, :cond_16

    .line 183
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mncLength:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 189
    :cond_16
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 190
    .local v0, mcc:I
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/MccTable;->smallestDigitsMccForMnc(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_6
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter "msg"

    .prologue
    const/16 v10, 0xa

    const-string v9, "CDMA"

    .line 199
    const/4 v6, 0x0

    .line 201
    .local v6, isRecordLoadResponse:Z
    :try_start_5
    iget v9, p1, Landroid/os/Message;->what:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_24
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_7} :catch_14

    packed-switch v9, :pswitch_data_168

    .line 304
    :cond_a
    :goto_a
    :pswitch_a
    if-eqz v6, :cond_f

    .line 305
    :goto_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRecordLoaded()V

    .line 308
    :cond_f
    return-void

    .line 203
    :pswitch_10
    :try_start_10
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRuimReady()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_24
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_a

    .line 299
    :catch_14
    move-exception v9

    move-object v3, v9

    .line 301
    .local v3, exc:Ljava/lang/RuntimeException;
    :try_start_16
    const-string v9, "CDMA"

    const-string v10, "Exception parsing RUIM record"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_24

    .line 304
    if-eqz v6, :cond_f

    goto :goto_c

    .line 206
    .end local v3           #exc:Ljava/lang/RuntimeException;
    :pswitch_20
    :try_start_20
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onNvReady()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_23} :catch_14

    goto :goto_a

    .line 304
    :catchall_24
    move-exception v9

    if-eqz v6, :cond_2a

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRecordLoaded()V

    .line 304
    :cond_2a
    throw v9

    .line 209
    :pswitch_2b
    :try_start_2b
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onRadioOffOrNotAvailable()V

    goto :goto_a

    .line 213
    :pswitch_2f
    const-string v9, "CDMA"

    const-string v10, "Event EVENT_GET_DEVICE_IDENTITY_DONE Received"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 219
    :pswitch_37
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 220
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/String;

    move-object v0, v9

    check-cast v0, [Ljava/lang/String;

    move-object v7, v0

    .line 221
    .local v7, localTemp:[Ljava/lang/String;
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_a

    .line 224
    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->m_ota_commited:Z

    if-eqz v9, :cond_6f

    .line 225
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v10, v7, v10

    if-eq v9, v10, :cond_6c

    .line 226
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.ACTION_MDN_STATE_CHANGED"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v4, intent:Landroid/content/Intent;
    const-string v9, "mdn"

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v9, "CDMA"

    const-string v10, "Broadcasting intent MDN Change in OTA "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v9, 0x0

    invoke-static {v4, v9}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 231
    .end local v4           #intent:Landroid/content/Intent;
    :cond_6c
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->m_ota_commited:Z

    .line 233
    :cond_6f
    const/4 v9, 0x0

    aget-object v9, v7, v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    .line 234
    const/4 v9, 0x3

    aget-object v9, v7, v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin2Min1:Ljava/lang/String;

    .line 235
    const/4 v9, 0x4

    aget-object v9, v7, v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mPrlVersion:Ljava/lang/String;

    .line 237
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MDN: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMyMobileNumber:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " MIN: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mMin2Min1:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 242
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v7           #localTemp:[Ljava/lang/String;
    :pswitch_a6
    const/4 v6, 0x1

    .line 244
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 245
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [B

    move-object v0, v9

    check-cast v0, [B

    move-object v2, v0

    .line 247
    .local v2, data:[B
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_a

    .line 251
    const/4 v9, 0x0

    array-length v10, v2

    invoke-static {v2, v9, v10}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->iccid:Ljava/lang/String;

    .line 253
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "iccid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->iccid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 258
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #data:[B
    :pswitch_db
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 259
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_a

    .line 260
    const-string v9, "CDMA"

    const-string v10, "RuimRecords update failed"

    iget-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v9, v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 268
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_ee
    const-string v9, "CDMA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Event not supported: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 273
    :pswitch_10a
    const-string v9, "CDMA"

    const-string v10, "Event EVENT_GET_SST_DONE Received"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 277
    :pswitch_113
    const/4 v6, 0x0

    .line 278
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 279
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_a

    .line 280
    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    check-cast v9, [I

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/cdma/RuimRecords;->handleRuimRefresh([I)V

    goto/16 :goto_a

    .line 285
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_127
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->m_ota_commited:Z

    .line 286
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 287
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_a

    .line 288
    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    move-object v0, v9

    check-cast v0, [I

    move-object v5, v0

    .line 289
    .local v5, ints:[I
    const/4 v9, 0x0

    aget v8, v5, v9

    .line 290
    .local v8, otaStatus:I
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v9, 0x8

    if-ne v8, v9, :cond_155

    .line 291
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->m_ota_commited:Z

    .line 292
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v10, 0xa

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    goto/16 :goto_a

    .line 293
    :cond_155
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-ne v8, v10, :cond_a

    .line 294
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v10, 0xa

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/cdma/RuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V
    :try_end_166
    .catchall {:try_start_2b .. :try_end_166} :catchall_24
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_166} :catch_14

    goto/16 :goto_a

    .line 201
    :pswitch_data_168
    .packed-switch 0x1
        :pswitch_10
        :pswitch_2b
        :pswitch_a
        :pswitch_2f
        :pswitch_a6
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_20
        :pswitch_37
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_db
        :pswitch_a
        :pswitch_a
        :pswitch_10a
        :pswitch_ee
        :pswitch_ee
        :pswitch_a
        :pswitch_ee
        :pswitch_ee
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_113
        :pswitch_127
    .end packed-switch
.end method

.method protected log(Ljava/lang/String;)V
    .registers 5
    .parameter "s"

    .prologue
    .line 430
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimRecords] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 326
    const-string v0, "CDMA"

    const-string v1, "RuimRecords: record load complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 332
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimCard:Lcom/android/internal/telephony/cdma/RuimCard;

    const-string v1, "LOADED"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/RuimCard;->broadcastRuimStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method protected onRadioOffOrNotAvailable()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 120
    iput v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->countVoiceMessages:I

    .line 121
    iput v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->mncLength:I

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->iccid:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 129
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsRequested:Z

    .line 130
    return-void
.end method

.method protected onRecordLoaded()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 314
    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    .line 316
    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsRequested:Z

    if-ne v0, v1, :cond_12

    .line 317
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->onAllRecordsLoaded()V

    .line 322
    :cond_11
    :goto_11
    return-void

    .line 318
    :cond_12
    iget v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    if-gez v0, :cond_11

    .line 319
    const-string v0, "CDMA"

    const-string v1, "RuimRecords: recordsToLoad <0, programmer error suspected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->recordsToLoad:I

    goto :goto_11
.end method

.method public onRefresh(Z[I)V
    .registers 3
    .parameter "fileChanged"
    .parameter "fileList"

    .prologue
    .line 161
    if-eqz p1, :cond_5

    .line 165
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->fetchRuimRecords()V

    .line 167
    :cond_5
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .registers 7
    .parameter "alphaTag"
    .parameter "voiceNumber"
    .parameter "onComplete"

    .prologue
    .line 148
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/IccException;

    const-string v2, "setVoiceMailNumber not implemented"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/IccException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 150
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 151
    const-string v0, "CDMA"

    const-string v1, "method setVoiceMailNumber is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .registers 4
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    .line 375
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    .line 391
    .end local p0
    :goto_3
    return-void

    .line 381
    .restart local p0
    :cond_4
    if-gez p2, :cond_11

    .line 382
    const/4 p2, -0x1

    .line 388
    :cond_7
    :goto_7
    iput p2, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->countVoiceMessages:I

    .line 390
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyMessageWaitingIndicator()V

    goto :goto_3

    .line 383
    .restart local p0
    :cond_11
    const/16 v0, 0xff

    if-le p2, v0, :cond_7

    .line 386
    const/16 p2, 0xff

    goto :goto_7
.end method
