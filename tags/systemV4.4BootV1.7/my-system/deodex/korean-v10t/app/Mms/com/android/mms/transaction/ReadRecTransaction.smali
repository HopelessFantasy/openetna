.class public Lcom/android/mms/transaction/ReadRecTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "ReadRecTransaction.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ReadRecTransaction"


# instance fields
.field private final mReadReportURI:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "transId"
    .parameter "connectionSettings"
    .parameter "uri"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 56
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    .line 57
    iput-object p4, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mId:Ljava/lang/String;

    .line 60
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/ReadRecTransaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 61
    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x3

    return v0
.end method

.method public process()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const-string v5, "ReadRecTransaction"

    .line 69
    iget-object v5, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 73
    .local v1, persister:Lcom/google/android/mms/pdu/PduPersister;
    :try_start_a
    iget-object v5, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v1, v5}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    check-cast v3, Lcom/google/android/mms/pdu/ReadRecInd;

    .line 76
    .local v3, readRecInd:Lcom/google/android/mms/pdu/ReadRecInd;
    new-instance v5, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v3}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v2

    .line 77
    .local v2, postingData:[B
    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/ReadRecTransaction;->sendPdu([B)[B

    .line 79
    iget-object v5, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    sget-object v6, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v6}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 80
    .local v4, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 81
    iget-object v5, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V
    :try_end_33
    .catchall {:try_start_a .. :try_end_33} :catchall_ae
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_33} :catch_4b
    .catch Lcom/google/android/mms/MmsException; {:try_start_a .. :try_end_33} :catch_6c
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_33} :catch_8d

    .line 89
    iget-object v5, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    if-eq v5, v7, :cond_47

    .line 90
    iget-object v5, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 91
    iget-object v5, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 93
    :cond_47
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->notifyObservers()V

    .line 95
    .end local v2           #postingData:[B
    .end local v3           #readRecInd:Lcom/google/android/mms/pdu/ReadRecInd;
    .end local v4           #uri:Landroid/net/Uri;
    :goto_4a
    return-void

    .line 82
    :catch_4b
    move-exception v5

    move-object v0, v5

    .line 83
    .local v0, e:Ljava/io/IOException;
    :try_start_4d
    const-string v5, "ReadRecTransaction"

    const-string v6, "Failed to send M-Read-Rec.Ind."

    invoke-static {v5, v6, v0}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_ae

    .line 89
    iget-object v5, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    if-eq v5, v7, :cond_68

    .line 90
    iget-object v5, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 91
    iget-object v5, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 93
    :cond_68
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->notifyObservers()V

    goto :goto_4a

    .line 84
    .end local v0           #e:Ljava/io/IOException;
    :catch_6c
    move-exception v5

    move-object v0, v5

    .line 85
    .local v0, e:Lcom/google/android/mms/MmsException;
    :try_start_6e
    const-string v5, "ReadRecTransaction"

    const-string v6, "Failed to load message from Outbox."

    invoke-static {v5, v6, v0}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_ae

    .line 89
    iget-object v5, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    if-eq v5, v7, :cond_89

    .line 90
    iget-object v5, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 91
    iget-object v5, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 93
    :cond_89
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->notifyObservers()V

    goto :goto_4a

    .line 86
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_8d
    move-exception v5

    move-object v0, v5

    .line 87
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_8f
    const-string v5, "ReadRecTransaction"

    const-string v6, "Unexpected RuntimeException."

    invoke-static {v5, v6, v0}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_96
    .catchall {:try_start_8f .. :try_end_96} :catchall_ae

    .line 89
    iget-object v5, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    if-eq v5, v7, :cond_aa

    .line 90
    iget-object v5, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 91
    iget-object v5, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 93
    :cond_aa
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->notifyObservers()V

    goto :goto_4a

    .line 89
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_ae
    move-exception v5

    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v6

    if-eq v6, v7, :cond_c3

    .line 90
    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v6, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 91
    iget-object v6, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v7, p0, Lcom/android/mms/transaction/ReadRecTransaction;->mReadReportURI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 93
    :cond_c3
    invoke-virtual {p0}, Lcom/android/mms/transaction/ReadRecTransaction;->notifyObservers()V

    throw v5
.end method
