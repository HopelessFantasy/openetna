.class public Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;
.super Lcom/android/internal/telephony/IccSmsInterfaceManager;
.source "SimSmsInterfaceManager.java"


# static fields
.field static final DBG:Z = true

.field private static final EVENT_BROADCAST_ACTIVATION_COMPLETE:I = 0x4

.field private static final EVENT_LOAD_DONE:I = 0x1

.field private static final EVENT_READ_DONE:I = 0x3

.field private static final EVENT_SEND_DONE:I = 0x7

.field private static final EVENT_SET_BROADCAST_CONFIG_DONE:I = 0x5

.field private static final EVENT_SET_GWDOMAIN_PREF_DONE:I = 0x6

.field private static final EVENT_UPDATE_DONE:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "GSM"


# instance fields
.field mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mSCAddr:Ljava/lang/String;

.field private mSms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsTemplate:Lcom/android/internal/telephony/gsm/SmsTemplate;

.field private mSuccess:Z

.field private mValidityperiodvalue:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .registers 3
    .parameter "phone"

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    .line 84
    new-instance v0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager$1;-><init>(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    .line 172
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/util/ArrayList;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->markMessagesAsRead(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Lcom/android/internal/telephony/gsm/SmsTemplate;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsTemplate:Lcom/android/internal/telephony/gsm/SmsTemplate;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Lcom/android/internal/telephony/gsm/SmsTemplate;)Lcom/android/internal/telephony/gsm/SmsTemplate;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSmsTemplate:Lcom/android/internal/telephony/gsm/SmsTemplate;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mValidityperiodvalue:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mValidityperiodvalue:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSCAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSCAddr:Ljava/lang/String;

    return-object p1
.end method

.method private markMessagesAsRead(Ljava/util/ArrayList;)V
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .local p1, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 155
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 156
    .local v7, count:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_8
    if-ge v8, v7, :cond_54

    .line 157
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 158
    .local v6, ba:[B
    aget-byte v0, v6, v12

    const/4 v1, 0x3

    if-ne v0, v1, :cond_51

    .line 159
    array-length v9, v6

    .line 160
    .local v9, n:I
    sub-int v0, v9, v11

    new-array v10, v0, [B

    .line 161
    .local v10, nba:[B
    sub-int v0, v9, v11

    invoke-static {v6, v11, v10, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    invoke-virtual {p0, v11, v10}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->makeSmsRecordData(I[B)[B

    move-result-object v3

    .line 163
    .local v3, record:[B
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    const/16 v1, 0x6f3c

    add-int/lit8 v2, v8, 0x1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v8, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " marked as read"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 156
    .end local v3           #record:[B
    .end local v9           #n:I
    .end local v10           #nba:[B
    :cond_51
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 168
    .end local v6           #ba:[B
    :cond_54
    return-void
.end method


# virtual methods
.method public broadcastActivation(I)Z
    .registers 8
    .parameter "prefMode"

    .prologue
    const-string v5, "[SimSmsInterfaceManager]"

    .line 534
    const-string v2, "[SimSmsInterfaceManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " broadcastActivation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 537
    const/4 v3, 0x0

    :try_start_1e
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 538
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 539
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->broadcastActivation(ILandroid/os/Message;)V
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_5b

    .line 541
    :try_start_2e
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_5b
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_33} :catch_51

    .line 545
    :goto_33
    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_5b

    .line 546
    const-string v2, "[SimSmsInterfaceManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Set broadcastActivation: mSuccess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return v2

    .line 542
    :catch_51
    move-exception v3

    move-object v0, v3

    .line 543
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_53
    const-string v3, "[SimSmsInterfaceManager]"

    const-string v4, "interrupted while trying to update by index"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 545
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_5b
    move-exception v3

    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_5b

    throw v3
.end method

.method public copyMessageToIccEf(I[B[B)Z
    .registers 10
    .parameter "status"
    .parameter "pdu"
    .parameter "smsc"

    .prologue
    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyMessageToIccEf: status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "pdu=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), smsm=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 234
    const-string v2, "Copying message to SIM"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 235
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 236
    const/4 v3, 0x0

    :try_start_3f
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 237
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 239
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, p1, v4, v5, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeSmsToSim(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_57
    .catchall {:try_start_3f .. :try_end_57} :catchall_68

    .line 243
    :try_start_57
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_68
    .catch Ljava/lang/InterruptedException; {:try_start_57 .. :try_end_5c} :catch_60

    .line 247
    :goto_5c
    :try_start_5c
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_68

    .line 248
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return v2

    .line 244
    :catch_60
    move-exception v3

    move-object v0, v3

    .line 245
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_62
    const-string v3, "interrupted while trying to update by index"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_5c

    .line 247
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_68
    move-exception v3

    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_62 .. :try_end_6a} :catchall_68

    throw v3
.end method

.method public dispose()V
    .registers 1

    .prologue
    .line 176
    return-void
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 179
    const-string v0, "GSM"

    const-string v1, "SimSmsInterfaceManager finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method public getAllMessagesFromIccEf()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    const-string v3, "getAllMessagesFromEF"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 259
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 261
    .local v0, context:Landroid/content/Context;
    const-string v3, "android.permission.RECEIVE_SMS"

    const-string v4, "Reading messages from SIM"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 265
    :try_start_15
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 266
    .local v2, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    const/16 v5, 0x6f3c

    invoke-virtual {v3, v5, v2}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_3a

    .line 270
    :try_start_29
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_3a
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_2e} :catch_32

    .line 274
    :goto_2e
    :try_start_2e
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_3a

    .line 275
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSms:Ljava/util/List;

    return-object v3

    .line 271
    :catch_32
    move-exception v3

    move-object v1, v3

    .line 272
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_34
    const-string v3, "interrupted while trying to load from the SIM"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_2e

    .line 274
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v2           #response:Landroid/os/Message;
    :catchall_3a
    move-exception v3

    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_3a

    throw v3
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SimSmsInterfaceManager] IMEI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 441
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .registers 3

    .prologue
    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SimSmsInterfaceManager] ICCID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 430
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SimSmsInterfaceManager] IMSI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 419
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected log(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 640
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimSmsInterfaceManager] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    return-void
.end method

.method public readSCAddress()Ljava/lang/String;
    .registers 9

    .prologue
    .line 391
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[RHS0520] readSCAddress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSCAddr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 392
    const-string v3, ""

    .line 393
    .local v3, ret:Ljava/lang/String;
    const/4 v0, 0x0

    .line 394
    .local v0, cur:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSCAddr:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 395
    .local v4, tmp_pdu:[B
    add-int/lit8 v1, v0, 0x1

    .end local v0           #cur:I
    .local v1, cur:I
    aget-byte v6, v4, v0

    and-int/lit16 v2, v6, 0xff

    .line 396
    .local v2, len:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[RHS0520] readSCAddress: len = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 397
    if-eqz v2, :cond_43

    .line 400
    :try_start_3f
    invoke-static {v4, v1, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_42} :catch_44

    move-result-object v3

    .line 406
    :cond_43
    :goto_43
    return-object v3

    .line 402
    :catch_44
    move-exception v5

    .line 403
    .local v5, tr:Ljava/lang/RuntimeException;
    const-string v6, "GSM"

    const-string v7, "invalid SC address: "

    invoke-static {v6, v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43
.end method

.method public readValidityPeriod()I
    .registers 6

    .prologue
    .line 340
    const-string v2, "readSMSTemplate"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 341
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 342
    :try_start_8
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 344
    .local v1, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->readSMSTemplate(Landroid/os/Message;)V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_41

    .line 347
    :try_start_18
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_41
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1d} :catch_39

    .line 351
    :goto_1d
    :try_start_1d
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_41

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RHS0520] readValidityPeriod: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mValidityperiodvalue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 353
    iget v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mValidityperiodvalue:I

    return v2

    .line 348
    :catch_39
    move-exception v2

    move-object v0, v2

    .line 349
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3b
    const-string v2, "interrupted while trying to update by index"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_1d

    .line 351
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_41
    move-exception v2

    monitor-exit v3
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_41

    throw v2
.end method

.method public sendRawPduSync([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 14
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 300
    .local v6, context:Landroid/content/Context;
    const-string v0, "android.permission.SEND_SMS"

    const-string v1, "Sending SMS message"

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendRawPduSync: smsc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pdu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sentIntent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " deliveryIntent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 306
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 307
    :try_start_44
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 308
    .local v5, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Message;)V
    :try_end_58
    .catchall {:try_start_44 .. :try_end_58} :catchall_67

    .line 310
    :try_start_58
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_67
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_5d} :catch_5f

    .line 314
    :goto_5d
    :try_start_5d
    monitor-exit v8

    .line 315
    return-void

    .line 311
    :catch_5f
    move-exception v0

    move-object v7, v0

    .line 312
    .local v7, e:Ljava/lang/InterruptedException;
    const-string v0, "interrupted while trying to send sms"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_5d

    .line 314
    .end local v5           #response:Landroid/os/Message;
    .end local v7           #e:Ljava/lang/InterruptedException;
    :catchall_67
    move-exception v0

    monitor-exit v8
    :try_end_69
    .catchall {:try_start_5d .. :try_end_69} :catchall_67

    throw v0
.end method

.method public setBroadcastConfig(I[I)Z
    .registers 10
    .parameter "size"
    .parameter "entries"

    .prologue
    const-string v6, "[SimSmsInterfaceManager]"

    .line 586
    const-string v3, "[SimSmsInterfaceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setBroadcastConfig] CB entry size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1b
    if-ge v1, p1, :cond_44

    .line 589
    const-string v3, "[SimSmsInterfaceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setBroadcastConfig] CB entry : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "entries: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 592
    :cond_44
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 593
    const/4 v4, 0x0

    :try_start_48
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 594
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 595
    .local v2, response:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p1, p2, v2}, Lcom/android/internal/telephony/CommandsInterface;->setBroadcastConfig(I[ILandroid/os/Message;)V
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_85

    .line 597
    :try_start_58
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_85
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_5d} :catch_7b

    .line 601
    :goto_5d
    :try_start_5d
    monitor-exit v3
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_85

    .line 602
    const-string v3, "[SimSmsInterfaceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Set BroadcastConfig: mSuccess = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return v3

    .line 598
    :catch_7b
    move-exception v4

    move-object v0, v4

    .line 599
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_7d
    const-string v4, "[SimSmsInterfaceManager]"

    const-string v5, "interrupted while trying to update by index"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 601
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v2           #response:Landroid/os/Message;
    :catchall_85
    move-exception v4

    monitor-exit v3
    :try_end_87
    .catchall {:try_start_7d .. :try_end_87} :catchall_85

    throw v4
.end method

.method public setGWDomainPref(I)Z
    .registers 8
    .parameter "domainPref"

    .prologue
    const-string v5, "[SimSmsInterfaceManager]"

    .line 621
    const-string v2, "[SimSmsInterfaceManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setGWDomainPref] GW Domain Pref: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 624
    const/4 v3, 0x0

    :try_start_1e
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 625
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 626
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setGWDomainPref(ILandroid/os/Message;)V
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_5b

    .line 628
    :try_start_2e
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_5b
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_33} :catch_51

    .line 632
    :goto_33
    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_5b

    .line 633
    const-string v2, "[SimSmsInterfaceManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Set GW Domain Pref: mSuccess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return v2

    .line 629
    :catch_51
    move-exception v3

    move-object v0, v3

    .line 630
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_53
    const-string v3, "[SimSmsInterfaceManager]"

    const-string v4, "interrupted while trying to update by index"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 632
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_5b
    move-exception v3

    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_5b

    throw v3
.end method

.method public setMEMemoryFull(I)Z
    .registers 7
    .parameter "bFull"

    .prologue
    .line 465
    const-string v2, "setMEMemoryFull"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 466
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 467
    const/4 v3, 0x0

    :try_start_9
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 468
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 469
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setMemoryFull(ILandroid/os/Message;)V
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_2a

    .line 471
    :try_start_19
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_2a
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1e} :catch_22

    .line 475
    :goto_1e
    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_2a

    .line 476
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return v2

    .line 472
    :catch_22
    move-exception v3

    move-object v0, v3

    .line 473
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_24
    const-string v3, "interrupted while trying to update by index"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_1e

    .line 475
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_2a
    move-exception v3

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2a

    throw v3
.end method

.method public setMultipartTextValidityPeriod(I)V
    .registers 4
    .parameter "validityperiod"

    .prologue
    .line 325
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 326
    .local v0, context:Landroid/content/Context;
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->setMultipartTextValidityPeriod(I)V

    .line 327
    return-void
.end method

.method public setOTAMode(ILandroid/os/Message;)I
    .registers 4
    .parameter "data"
    .parameter "result"

    .prologue
    .line 451
    const-string v0, "[SimSmsInterfaceManager] setOTAMode"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 452
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setOTAMode(ILandroid/os/Message;)I

    move-result v0

    return v0
.end method

.method public setSendingMultiSMS(Z)Z
    .registers 5
    .parameter "bFull"

    .prologue
    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, bReturn:Z
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 522
    .local v1, context:Landroid/content/Context;
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSMS:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->setSendingMultiSMS(Z)Z

    move-result v0

    .line 523
    return v0
.end method

.method public updateCBMIToSim([B)Z
    .registers 8
    .parameter "cbchannel_byte"

    .prologue
    const-string v5, "[SimSmsInterfaceManager]"

    .line 559
    const-string v2, "[SimSmsInterfaceManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateCBMIToSim] CB Channel value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 562
    const/4 v3, 0x0

    :try_start_22
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 563
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 564
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    const/16 v4, 0x6f45

    invoke-virtual {v3, v4, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_36
    .catchall {:try_start_22 .. :try_end_36} :catchall_63

    .line 567
    :try_start_36
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_63
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_3b} :catch_59

    .line 571
    :goto_3b
    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_63

    .line 572
    const-string v2, "[SimSmsInterfaceManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " updateCBMIToSim : mSuccess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return v2

    .line 568
    :catch_59
    move-exception v3

    move-object v0, v3

    .line 569
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_5b
    const-string v3, "[SimSmsInterfaceManager]"

    const-string v4, "[updateCBMIToSim] interrupted while trying to update by index"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 571
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_63
    move-exception v3

    monitor-exit v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_63

    throw v3
.end method

.method public updateMessageOnIccEf(II[B)Z
    .registers 12
    .parameter "index"
    .parameter "status"
    .parameter "pdu"

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMessageOnIccEf: index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 198
    const-string v0, "Updating message on SIM"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 199
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 200
    const/4 v0, 0x0

    :try_start_3f
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 203
    .local v5, response:Landroid/os/Message;
    if-nez p2, :cond_5a

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, v5}, Lcom/android/internal/telephony/CommandsInterface;->deleteSmsOnSim(ILandroid/os/Message;)V
    :try_end_51
    .catchall {:try_start_3f .. :try_end_51} :catchall_6e

    .line 214
    :goto_51
    :try_start_51
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_6e
    .catch Ljava/lang/InterruptedException; {:try_start_51 .. :try_end_56} :catch_71

    .line 218
    :goto_56
    :try_start_56
    monitor-exit v7
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_6e

    .line 219
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return v0

    .line 208
    :cond_5a
    :try_start_5a
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->makeSmsRecordData(I[B)[B

    move-result-object v3

    .line 209
    .local v3, record:[B
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SIMFileHandler;

    const/16 v1, 0x6f3c

    const/4 v4, 0x0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SIMFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_51

    .line 218
    .end local v3           #record:[B
    .end local v5           #response:Landroid/os/Message;
    :catchall_6e
    move-exception v0

    monitor-exit v7
    :try_end_70
    .catchall {:try_start_5a .. :try_end_70} :catchall_6e

    throw v0

    .line 215
    .restart local v5       #response:Landroid/os/Message;
    :catch_71
    move-exception v0

    move-object v6, v0

    .line 216
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_73
    const-string v0, "interrupted while trying to update by index"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_73 .. :try_end_78} :catchall_6e

    goto :goto_56
.end method

.method public updateSCAddress(Ljava/lang/String;)Z
    .registers 10
    .parameter "smsc"

    .prologue
    const/4 v6, 0x0

    .line 489
    const-string v0, ""

    .line 491
    .local v0, bcdsmsc:Ljava/lang/String;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x28

    invoke-direct {v1, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 492
    .local v1, bo:Ljava/io/ByteArrayOutputStream;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v4

    .line 493
    .local v4, smscBytes:[B
    array-length v5, v4

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 494
    array-length v5, v4

    invoke-virtual {v1, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 495
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 496
    const-string v5, "updateSCAddress"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 497
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 498
    const/4 v6, 0x0

    :try_start_27
    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 499
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 500
    .local v3, response:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v7, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mValidityperiodvalue:I

    invoke-interface {v6, v7, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->writeValidityPeriod(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_39
    .catchall {:try_start_27 .. :try_end_39} :catchall_4c

    .line 502
    :try_start_39
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_4c
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_3e} :catch_44

    .line 506
    :goto_3e
    :try_start_3e
    monitor-exit v5
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_4c

    .line 507
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSCAddr:Ljava/lang/String;

    .line 508
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return v5

    .line 503
    :catch_44
    move-exception v6

    move-object v2, v6

    .line 504
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_46
    const-string v6, "interrupted while trying to update SCAddress"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_3e

    .line 506
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v3           #response:Landroid/os/Message;
    :catchall_4c
    move-exception v6

    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_4c

    throw v6
.end method

.method public updateValidityPeriod(I)Z
    .registers 7
    .parameter "validityperiod"

    .prologue
    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RHS0520] updateValidityPeriod: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 365
    const-string v2, "updateValidityPeriod"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->enforceReceiveAndSend(Ljava/lang/String;)V

    .line 366
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 367
    const/4 v3, 0x0

    :try_start_1f
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    .line 368
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 370
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSCAddr:Ljava/lang/String;

    invoke-interface {v3, p1, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->writeValidityPeriod(ILjava/lang/String;Landroid/os/Message;)V
    :try_end_31
    .catchall {:try_start_1f .. :try_end_31} :catchall_5a

    .line 373
    :try_start_31
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_5a
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_36} :catch_52

    .line 377
    :goto_36
    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_5a

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RHS0520] updateValidityPeriod: mSuccess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 379
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->mSuccess:Z

    return v2

    .line 374
    :catch_52
    move-exception v3

    move-object v0, v3

    .line 375
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_54
    const-string v3, "interrupted while trying to update by index"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/SimSmsInterfaceManager;->log(Ljava/lang/String;)V

    goto :goto_36

    .line 377
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_5a
    move-exception v3

    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_5a

    throw v3
.end method
