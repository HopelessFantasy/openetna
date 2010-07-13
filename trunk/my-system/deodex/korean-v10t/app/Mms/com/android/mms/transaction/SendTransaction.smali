.class public Lcom/android/mms/transaction/SendTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "SendTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "SendTransaction"


# instance fields
.field private final mSendReqURI:Landroid/net/Uri;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "transId"
    .parameter "connectionSettings"
    .parameter "uri"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 68
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    .line 69
    iput-object p4, p0, Lcom/android/mms/transaction/SendTransaction;->mId:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SendTransaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 73
    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    .prologue
    .line 168
    const/4 v0, 0x2

    return v0
.end method

.method public process()V
    .registers 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mThread:Ljava/lang/Thread;

    .line 82
    iget-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    return-void
.end method

.method public run()V
    .registers 26

    .prologue
    .line 87
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/RateController;->getInstance()Lcom/android/mms/util/RateController;

    move-result-object v16

    .line 88
    .local v16, rateCtlr:Lcom/android/mms/util/RateController;
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/util/RateController;->isLimitSurpassed()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/util/RateController;->isAllowedByUser()Z

    move-result v4

    if-nez v4, :cond_44

    .line 89
    const-string v4, "SendTransaction"

    const-string v5, "Sending rate limit surpassed."

    invoke-static {v4, v5}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_29e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_264

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_40

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 160
    const-string v4, "SendTransaction"

    const-string v5, "Delivery failed."

    invoke-static {v4, v5}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_40
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    .line 164
    .end local v16           #rateCtlr:Lcom/android/mms/util/RateController;
    :goto_43
    return-void

    .line 94
    .restart local v16       #rateCtlr:Lcom/android/mms/util/RateController;
    :cond_44
    :try_start_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v15

    .line 95
    .local v15, persister:Lcom/google/android/mms/pdu/PduPersister;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v4, v0

    invoke-virtual {v15, v4}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v20

    check-cast v20, Lcom/google/android/mms/pdu/SendReq;

    .line 98
    .local v20, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v12, v4, v6

    .line 99
    .local v12, date:J
    move-object/from16 v0, v20

    move-wide v1, v12

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 102
    new-instance v7, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v7, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 103
    .local v7, values:Landroid/content/ContentValues;
    const-string v4, "date"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v6, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v4, v0

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v22

    .line 109
    .local v22, tokenKey:J
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/SendingProgressTokenManager;->get(Ljava/lang/Object;)J

    move-result-wide v4

    new-instance v6, Lcom/google/android/mms/pdu/PduComposer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mContext:Landroid/content/Context;

    move-object v7, v0

    .end local v7           #values:Landroid/content/ContentValues;
    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v6

    move-object/from16 v0, p0

    move-wide v1, v4

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/SendTransaction;->sendPdu(J[B)[B

    move-result-object v19

    .line 111
    .local v19, response:[B
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/SendingProgressTokenManager;->remove(Ljava/lang/Object;)V

    .line 113
    new-instance v4, Lcom/google/android/mms/pdu/PduParser;

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/google/android/mms/pdu/PduParser;->parse(Landroid/content/Context;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v10

    check-cast v10, Lcom/google/android/mms/pdu/SendConf;

    .line 115
    .local v10, conf:Lcom/google/android/mms/pdu/SendConf;
    if-nez v10, :cond_109

    .line 116
    const-string v4, "SendTransaction"

    const-string v5, "No M-Send.conf received."

    invoke-static {v4, v5}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_db
    .catchall {:try_start_44 .. :try_end_db} :catchall_29e
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_db} :catch_264

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_104

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 160
    const-string v4, "SendTransaction"

    const-string v5, "Delivery failed."

    invoke-static {v4, v5}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_104
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    goto/16 :goto_43

    .line 122
    :cond_109
    :try_start_109
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/SendReq;->getTransactionId()[B

    move-result-object v17

    .line 123
    .local v17, reqId:[B
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/SendConf;->getTransactionId()[B

    move-result-object v11

    .line 124
    .local v11, confId:[B
    move-object/from16 v0, v17

    move-object v1, v11

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_177

    .line 125
    const-string v4, "SendTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inconsistent Transaction-ID: req="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", conf="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_149
    .catchall {:try_start_109 .. :try_end_149} :catchall_29e
    .catch Ljava/lang/Throwable; {:try_start_109 .. :try_end_149} :catch_264

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_172

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 160
    const-string v4, "SendTransaction"

    const-string v5, "Delivery failed."

    invoke-static {v4, v5}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_172
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    goto/16 :goto_43

    .line 133
    :cond_177
    :try_start_177
    new-instance v7, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v7, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 134
    .restart local v7       #values:Landroid/content/ContentValues;
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/SendConf;->getResponseStatus()I

    move-result v18

    .line 135
    .local v18, respStatus:I
    const-string v4, "resp_st"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    const/16 v4, 0x80

    move/from16 v0, v18

    move v1, v4

    if-eq v0, v1, :cond_1f2

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v6, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 140
    const-string v4, "SendTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Server returned an error code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c4
    .catchall {:try_start_177 .. :try_end_1c4} :catchall_29e
    .catch Ljava/lang/Throwable; {:try_start_177 .. :try_end_1c4} :catch_264

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1ed

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 160
    const-string v4, "SendTransaction"

    const-string v5, "Delivery failed."

    invoke-static {v4, v5}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_1ed
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    goto/16 :goto_43

    .line 144
    :cond_1f2
    :try_start_1f2
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/SendConf;->getMessageId()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v14

    .line 145
    .local v14, messageId:Ljava/lang/String;
    const-string v4, "m_id"

    invoke-virtual {v7, v4, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v6, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v4, v0

    sget-object v5, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15, v4, v5}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v24

    .line 152
    .local v24, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V
    :try_end_236
    .catchall {:try_start_1f2 .. :try_end_236} :catchall_29e
    .catch Ljava/lang/Throwable; {:try_start_1f2 .. :try_end_236} :catch_264

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_25f

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 160
    const-string v4, "SendTransaction"

    const-string v5, "Delivery failed."

    invoke-static {v4, v5}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_25f
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    goto/16 :goto_43

    .line 154
    .end local v7           #values:Landroid/content/ContentValues;
    .end local v10           #conf:Lcom/google/android/mms/pdu/SendConf;
    .end local v11           #confId:[B
    .end local v12           #date:J
    .end local v14           #messageId:Ljava/lang/String;
    .end local v15           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v16           #rateCtlr:Lcom/android/mms/util/RateController;
    .end local v17           #reqId:[B
    .end local v18           #respStatus:I
    .end local v19           #response:[B
    .end local v20           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .end local v22           #tokenKey:J
    .end local v24           #uri:Landroid/net/Uri;
    :catch_264
    move-exception v4

    move-object/from16 v21, v4

    .line 155
    .local v21, t:Ljava/lang/Throwable;
    :try_start_267
    const-string v4, "SendTransaction"

    invoke-static/range {v21 .. v21}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_270
    .catchall {:try_start_267 .. :try_end_270} :catchall_29e

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_299

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 160
    const-string v4, "SendTransaction"

    const-string v5, "Delivery failed."

    invoke-static {v4, v5}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_299
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    goto/16 :goto_43

    .line 157
    .end local v21           #t:Ljava/lang/Throwable;
    :catchall_29e
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2c8

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v5, v0

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 160
    const-string v5, "SendTransaction"

    const-string v6, "Delivery failed."

    invoke-static {v5, v6}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_2c8
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    throw v4
.end method
