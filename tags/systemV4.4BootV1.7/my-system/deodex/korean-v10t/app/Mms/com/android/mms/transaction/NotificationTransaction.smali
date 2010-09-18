.class public Lcom/android/mms/transaction/NotificationTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "NotificationTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "NotificationTransaction"


# instance fields
.field private mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;)V
    .registers 8
    .parameter "context"
    .parameter "serviceId"
    .parameter "connectionSettings"
    .parameter "ind"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 103
    :try_start_3
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p4, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;
    :try_end_f
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_f} :catch_1d

    .line 110
    iput-object p4, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    .line 111
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mId:Ljava/lang/String;

    .line 112
    return-void

    .line 105
    :catch_1d
    move-exception v1

    move-object v0, v1

    .line 106
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "NotificationTransaction"

    const-string v2, "Failed to save NotificationInd in constructor."

    invoke-static {v1, v2, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .registers 9
    .parameter "context"
    .parameter "serviceId"
    .parameter "connectionSettings"
    .parameter "uriString"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 78
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    .line 81
    :try_start_9
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/NotificationInd;

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_17
    .catch Lcom/google/android/mms/MmsException; {:try_start_9 .. :try_end_17} :catch_2c

    .line 88
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mId:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/NotificationTransaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 92
    return-void

    .line 83
    :catch_2c
    move-exception v1

    move-object v0, v1

    .line 84
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "NotificationTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load NotificationInd from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private sendNotifyRespInd(I)V
    .registers 5
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Lcom/google/android/mms/pdu/NotifyRespInd;

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(I[BI)V

    .line 228
    .local v0, notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    new-instance v1, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/NotificationTransaction;->sendPdu([B)[B

    .line 229
    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public process()V
    .registers 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 121
    return-void
.end method

.method public run()V
    .registers 23

    .prologue
    .line 124
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v6

    .line 125
    .local v6, downloadManager:Lcom/android/mms/util/DownloadManager;
    invoke-virtual {v6}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v3

    .line 126
    .local v3, autoDownload:Z
    const/4 v10, 0x0

    .line 128
    .local v10, lowMemory:Z
    :try_start_9
    const-string v17, "NotificationTransaction"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Notification transaction launched: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/16 v14, 0x83

    .line 136
    .local v14, status:I
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getFreeMemSize()J

    move-result-wide v8

    .line 137
    .local v8, freeMem:J
    const-string v17, "NotificationTransaction"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Free Memsize : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-wide/32 v17, 0x5dc000

    cmp-long v17, v17, v8

    if-ltz v17, :cond_af

    const/16 v17, 0x1

    move/from16 v10, v17

    .line 140
    :goto_51
    if-eqz v3, :cond_55

    if-eqz v10, :cond_b4

    .line 141
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    const/16 v18, 0x80

    move-object v0, v6

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 142
    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/NotificationTransaction;->sendNotifyRespInd(I)V
    :try_end_6b
    .catchall {:try_start_9 .. :try_end_6b} :catchall_1fe
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_6b} :catch_d8

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 207
    if-nez v3, :cond_87

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 212
    :cond_87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_ab

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 214
    const-string v17, "NotificationTransaction"

    const-string v18, "NotificationTransaction failed."

    invoke-static/range {v17 .. v18}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_ab
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    .line 218
    .end local v8           #freeMem:J
    .end local v14           #status:I
    :goto_ae
    return-void

    .line 138
    .restart local v8       #freeMem:J
    .restart local v14       #status:I
    :cond_af
    const/16 v17, 0x0

    move/from16 v10, v17

    goto :goto_51

    .line 146
    :cond_b4
    :try_start_b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    const/16 v18, 0x81

    move-object v0, v6

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v4

    .line 148
    .local v4, clBytes:[B
    if-nez v4, :cond_128

    .line 149
    new-instance v17, Lcom/google/android/mms/MmsException;

    const-string v18, "Content-Location may not be null."

    invoke-direct/range {v17 .. v18}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_d8
    .catchall {:try_start_b4 .. :try_end_d8} :catchall_1fe
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_d8} :catch_d8

    .line 203
    .end local v4           #clBytes:[B
    .end local v8           #freeMem:J
    .end local v14           #status:I
    :catch_d8
    move-exception v17

    move-object/from16 v15, v17

    .line 204
    .local v15, t:Ljava/lang/Throwable;
    :try_start_db
    const-string v17, "NotificationTransaction"

    invoke-static {v15}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e4
    .catchall {:try_start_db .. :try_end_e4} :catchall_1fe

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 207
    if-nez v3, :cond_100

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 212
    :cond_100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_124

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 214
    const-string v17, "NotificationTransaction"

    const-string v18, "NotificationTransaction failed."

    invoke-static/range {v17 .. v18}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_124
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    goto :goto_ae

    .line 152
    .end local v15           #t:Ljava/lang/Throwable;
    .restart local v4       #clBytes:[B
    .restart local v8       #freeMem:J
    .restart local v14       #status:I
    :cond_128
    :try_start_128
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 153
    .local v5, contentLocation:Ljava/lang/String;
    const-string v17, "NotificationTransaction"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Content-Location: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_148
    .catchall {:try_start_128 .. :try_end_148} :catchall_1fe
    .catch Ljava/lang/Throwable; {:try_start_128 .. :try_end_148} :catch_d8

    .line 155
    const/4 v13, 0x0

    .line 159
    .local v13, retrieveConfData:[B
    :try_start_149
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/NotificationTransaction;->getPdu(Ljava/lang/String;)[B
    :try_end_14f
    .catchall {:try_start_149 .. :try_end_14f} :catchall_1fe
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_14f} :catch_1f0
    .catch Ljava/lang/Throwable; {:try_start_149 .. :try_end_14f} :catch_d8

    move-result-object v13

    .line 164
    :goto_150
    if-eqz v13, :cond_186

    .line 166
    :try_start_152
    new-instance v17, Lcom/google/android/mms/pdu/PduParser;

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/google/android/mms/pdu/PduParser;->parse(Landroid/content/Context;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v12

    .line 168
    .local v12, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    if-eqz v12, :cond_172

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v17

    const/16 v18, 0x84

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_243

    .line 169
    :cond_172
    const-string v17, "NotificationTransaction"

    const-string v18, "Invalid M-RETRIEVE.CONF PDU."

    invoke-static/range {v17 .. v18}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 171
    const/16 v14, 0x84

    .line 186
    .end local v12           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_186
    :goto_186
    const-string v17, "NotificationTransaction"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "status=0x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    packed-switch v14, :pswitch_data_2a4

    .line 201
    :cond_1a5
    :goto_1a5
    :pswitch_1a5
    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/NotificationTransaction;->sendNotifyRespInd(I)V
    :try_end_1ab
    .catchall {:try_start_152 .. :try_end_1ab} :catchall_1fe
    .catch Ljava/lang/Throwable; {:try_start_152 .. :try_end_1ab} :catch_d8

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 207
    if-nez v3, :cond_1c7

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 212
    :cond_1c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1eb

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 214
    const-string v17, "NotificationTransaction"

    const-string v18, "NotificationTransaction failed."

    invoke-static/range {v17 .. v18}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_1eb
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    goto/16 :goto_ae

    .line 160
    :catch_1f0
    move-exception v7

    .line 161
    .local v7, e:Ljava/io/IOException;
    :try_start_1f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_1fc
    .catchall {:try_start_1f1 .. :try_end_1fc} :catchall_1fe
    .catch Ljava/lang/Throwable; {:try_start_1f1 .. :try_end_1fc} :catch_d8

    goto/16 :goto_150

    .line 206
    .end local v4           #clBytes:[B
    .end local v5           #contentLocation:Ljava/lang/String;
    .end local v7           #e:Ljava/io/IOException;
    .end local v8           #freeMem:J
    .end local v13           #retrieveConfData:[B
    .end local v14           #status:I
    :catchall_1fe
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 207
    if-nez v3, :cond_21b

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 212
    :cond_21b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_23f

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 214
    const-string v18, "NotificationTransaction"

    const-string v19, "NotificationTransaction failed."

    invoke-static/range {v18 .. v19}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_23f
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    throw v17

    .line 174
    .restart local v4       #clBytes:[B
    .restart local v5       #contentLocation:Ljava/lang/String;
    .restart local v8       #freeMem:J
    .restart local v12       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v13       #retrieveConfData:[B
    .restart local v14       #status:I
    :cond_243
    :try_start_243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v11

    .line 175
    .local v11, p:Lcom/google/android/mms/pdu/PduPersister;
    sget-object v17, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v11

    move-object v1, v12

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v16

    .line 178
    .local v16, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v21}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 181
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    .line 182
    const/16 v14, 0x81

    goto/16 :goto_186

    .line 191
    .end local v11           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v12           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v16           #uri:Landroid/net/Uri;
    :pswitch_27e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    goto/16 :goto_1a5

    .line 195
    :pswitch_28b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v17

    if-nez v17, :cond_1a5

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/NotificationTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_2a2
    .catchall {:try_start_243 .. :try_end_2a2} :catchall_1fe
    .catch Ljava/lang/Throwable; {:try_start_243 .. :try_end_2a2} :catch_d8

    goto/16 :goto_1a5

    .line 189
    :pswitch_data_2a4
    .packed-switch 0x81
        :pswitch_27e
        :pswitch_1a5
        :pswitch_28b
    .end packed-switch
.end method
