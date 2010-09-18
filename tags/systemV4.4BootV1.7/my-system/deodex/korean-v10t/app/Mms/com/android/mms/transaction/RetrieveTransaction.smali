.class public Lcom/android/mms/transaction/RetrieveTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "RetrieveTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "RetrieveTransaction"


# instance fields
.field private final mContentLocation:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .registers 8
    .parameter "context"
    .parameter "serviceId"
    .parameter "connectionSettings"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 68
    const-string v0, "content://"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 69
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    .line 70
    iget-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/android/mms/transaction/RetrieveTransaction;->getContentLocation(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mId:Ljava/lang/String;

    .line 71
    const-string v0, "RetrieveTransaction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X-Mms-Content-Location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/RetrieveTransaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 79
    return-void

    .line 73
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Initializing from X-Mms-Content-Location is abandoned!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getContentLocation(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 11
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "ct_l"

    aput-object v0, v3, v2

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 86
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2f

    .line 88
    :try_start_17
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_2c

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 89
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_48

    move-result-object v0

    .line 92
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_2c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_2f
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get X-Mms-Content-Location from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :catchall_48
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static isDuplicateMessage(Landroid/content/Context;Lcom/google/android/mms/pdu/RetrieveConf;)Z
    .registers 14
    .parameter "context"
    .parameter "rc"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 164
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getMessageId()[B

    move-result-object v9

    .line 165
    .local v9, rawMessageId:[B
    if-eqz v9, :cond_3e

    .line 166
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 167
    .local v8, messageId:Ljava/lang/String;
    const-string v4, "(m_id = ? AND m_type = ?)"

    .line 169
    .local v4, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    aput-object v8, v5, v10

    const/16 v0, 0x84

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v11

    .line 171
    .local v5, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v11, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v10

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 175
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_3e

    .line 177
    :try_start_30
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_40

    move-result v0

    if-lez v0, :cond_3b

    .line 182
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 186
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #messageId:Ljava/lang/String;
    :goto_3a
    return v0

    .line 182
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v5       #selectionArgs:[Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v8       #messageId:Ljava/lang/String;
    :cond_3b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #messageId:Ljava/lang/String;
    :cond_3e
    move v0, v10

    .line 186
    goto :goto_3a

    .line 182
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v5       #selectionArgs:[Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v8       #messageId:Ljava/lang/String;
    :catchall_40
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private sendAcknowledgeInd(Lcom/google/android/mms/pdu/RetrieveConf;)V
    .registers 6
    .parameter "rc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/RetrieveConf;->getTransactionId()[B

    move-result-object v1

    .line 195
    .local v1, tranId:[B
    if-eqz v1, :cond_1b

    .line 197
    new-instance v0, Lcom/google/android/mms/pdu/AcknowledgeInd;

    const/16 v2, 0x12

    invoke-direct {v0, v2, v1}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(I[B)V

    .line 201
    .local v0, acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    new-instance v2, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v3, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/RetrieveTransaction;->sendPdu([B)[B

    .line 203
    .end local v0           #acknowledgeInd:Lcom/google/android/mms/pdu/AcknowledgeInd;
    :cond_1b
    return-void
.end method

.method private static updateContentLocation(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 9
    .parameter "context"
    .parameter "uri"
    .parameter "contentLocation"

    .prologue
    const/4 v4, 0x0

    .line 207
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 208
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "ct_l"

    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 211
    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    .prologue
    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public process()V
    .registers 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 106
    return-void
.end method

.method public run()V
    .registers 15

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const-string v13, "Retrieval failed."

    const-string v12, "RetrieveTransaction"

    .line 111
    :try_start_6
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    const/16 v7, 0x81

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 115
    iget-object v5, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/mms/transaction/RetrieveTransaction;->getPdu(Ljava/lang/String;)[B

    move-result-object v1

    .line 119
    .local v1, resp:[B
    new-instance v5, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v5, v1}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    iget-object v6, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/google/android/mms/pdu/PduParser;->parse(Landroid/content/Context;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    check-cast v2, Lcom/google/android/mms/pdu/RetrieveConf;

    .line 121
    .local v2, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    if-nez v2, :cond_58

    .line 122
    new-instance v5, Lcom/google/android/mms/MmsException;

    const-string v6, "Invalid M-Retrieve.conf PDU."

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_bd
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_2e} :catch_2e

    .line 151
    .end local v1           #resp:[B
    .end local v2           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :catch_2e
    move-exception v5

    move-object v3, v5

    .line 152
    .local v3, t:Ljava/lang/Throwable;
    :try_start_30
    const-string v5, "RetrieveTransaction"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_bd

    .line 154
    iget-object v5, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    if-eq v5, v10, :cond_54

    .line 155
    iget-object v5, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 156
    iget-object v5, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v6, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 157
    const-string v5, "RetrieveTransaction"

    const-string v5, "Retrieval failed."

    invoke-static {v12, v13}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_54
    invoke-virtual {p0}, Lcom/android/mms/transaction/RetrieveTransaction;->notifyObservers()V

    .line 161
    .end local v3           #t:Ljava/lang/Throwable;
    :goto_57
    return-void

    .line 125
    .restart local v1       #resp:[B
    .restart local v2       #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :cond_58
    :try_start_58
    iget-object v5, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/android/mms/transaction/RetrieveTransaction;->isDuplicateMessage(Landroid/content/Context;Lcom/google/android/mms/pdu/RetrieveConf;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 128
    iget-object v5, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 129
    iget-object v5, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v6, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 144
    :goto_6d
    iget-object v5, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 150
    invoke-direct {p0, v2}, Lcom/android/mms/transaction/RetrieveTransaction;->sendAcknowledgeInd(Lcom/google/android/mms/pdu/RetrieveConf;)V
    :try_end_7f
    .catchall {:try_start_58 .. :try_end_7f} :catchall_bd
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_7f} :catch_2e

    .line 154
    iget-object v5, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    if-eq v5, v10, :cond_9a

    .line 155
    iget-object v5, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 156
    iget-object v5, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v6, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 157
    const-string v5, "RetrieveTransaction"

    const-string v5, "Retrieval failed."

    invoke-static {v12, v13}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_9a
    invoke-virtual {p0}, Lcom/android/mms/transaction/RetrieveTransaction;->notifyObservers()V

    goto :goto_57

    .line 132
    :cond_9e
    :try_start_9e
    iget-object v5, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 133
    .local v0, persister:Lcom/google/android/mms/pdu/PduPersister;
    sget-object v5, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v5}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 136
    .local v4, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 137
    iget-object v5, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 140
    iget-object v5, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mContentLocation:Ljava/lang/String;

    invoke-static {v5, v4, v6}, Lcom/android/mms/transaction/RetrieveTransaction;->updateContentLocation(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_bc
    .catchall {:try_start_9e .. :try_end_bc} :catchall_bd
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_bc} :catch_2e

    goto :goto_6d

    .line 154
    .end local v0           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v1           #resp:[B
    .end local v2           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    .end local v4           #uri:Landroid/net/Uri;
    :catchall_bd
    move-exception v5

    iget-object v6, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v6

    if-eq v6, v10, :cond_d9

    .line 155
    iget-object v6, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6, v11}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 156
    iget-object v6, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v7, p0, Lcom/android/mms/transaction/RetrieveTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 157
    const-string v6, "RetrieveTransaction"

    const-string v6, "Retrieval failed."

    invoke-static {v12, v13}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_d9
    invoke-virtual {p0}, Lcom/android/mms/transaction/RetrieveTransaction;->notifyObservers()V

    throw v5
.end method
