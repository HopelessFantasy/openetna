.class public Lcom/android/mms/transaction/RetryScheduler;
.super Ljava/lang/Object;
.source "RetryScheduler.java"

# interfaces
.implements Lcom/android/mms/transaction/Observer;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "RetryScheduler"

.field private static sInstance:Lcom/android/mms/transaction/RetryScheduler;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    .line 56
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;
    .registers 2
    .parameter "context"

    .prologue
    .line 60
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    if-nez v0, :cond_b

    .line 61
    new-instance v0, Lcom/android/mms/transaction/RetryScheduler;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/RetryScheduler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    .line 63
    :cond_b
    sget-object v0, Lcom/android/mms/transaction/RetryScheduler;->sInstance:Lcom/android/mms/transaction/RetryScheduler;

    return-object v0
.end method

.method private isConnected()Z
    .registers 5

    .prologue
    .line 67
    iget-object v2, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 69
    .local v0, mConnMgr:Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 70
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    return v2
.end method

.method private scheduleRetry(Landroid/net/Uri;)V
    .registers 37
    .parameter "uri"

    .prologue
    .line 102
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v25

    .line 104
    .local v25, msgId:J
    sget-object v5, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v34

    .line 105
    .local v34, uriBuilder:Landroid/net/Uri$Builder;
    const-string v5, "protocol"

    const-string v6, "mms"

    move-object/from16 v0, v34

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 106
    const-string v5, "message"

    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v34

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    move-object v6, v0

    invoke-virtual/range {v34 .. v34}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 111
    .local v19, cursor:Landroid/database/Cursor;
    const-string v5, "RetryScheduler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MMS: scheduleRetry: Count= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " & msgId= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    if-eqz v19, :cond_bc

    .line 115
    :try_start_63
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_261

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_261

    .line 116
    const-string v5, "msg_type"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 120
    .local v27, msgType:I
    const-string v5, "RetryScheduler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MMS: scheduleRetry: msgType= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sparse-switch v27, :sswitch_data_27e

    .line 130
    const-string v5, "RetryScheduler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad message type found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catchall {:try_start_63 .. :try_end_b9} :catchall_227

    .line 211
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 214
    .end local v27           #msgType:I
    :cond_bc
    :goto_bc
    return-void

    .line 123
    .restart local v27       #msgType:I
    :sswitch_bd
    const/16 v20, 0x2

    .line 134
    .local v20, direction:I
    :goto_bf
    :try_start_bf
    const-string v5, "retry_index"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/lit8 v30, v5, 0x1

    .line 137
    .local v30, retryIndex:I
    const-string v5, "RetryScheduler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MMS: scheduleRetry: retryIndex= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/16 v21, 0x1

    .line 142
    .local v21, errorType:I
    new-instance v31, Lcom/android/mms/transaction/DefaultRetryScheme;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, v31

    move-object v1, v5

    move/from16 v2, v20

    move/from16 v3, v30

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/DefaultRetryScheme;-><init>(Landroid/content/Context;III)V

    .line 145
    .local v31, scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    new-instance v12, Landroid/content/ContentValues;

    const/4 v5, 0x4

    invoke-direct {v12, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 146
    .local v12, values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 147
    .local v17, current:J
    const/16 v5, 0x82

    move/from16 v0, v27

    move v1, v5

    if-ne v0, v1, :cond_1cd

    const/4 v5, 0x1

    move/from16 v24, v5

    .line 149
    .local v24, isRetryDownloading:Z
    :goto_115
    invoke-virtual/range {v31 .. v31}, Lcom/android/mms/transaction/DefaultRetryScheme;->getRetryLimit()I

    move-result v5

    move/from16 v0, v30

    move v1, v5

    if-ge v0, v1, :cond_1d2

    .line 150
    invoke-virtual/range {v31 .. v31}, Lcom/android/mms/transaction/DefaultRetryScheme;->getWaitingInterval()J

    move-result-wide v5

    add-long v28, v17, v5

    .line 152
    .local v28, retryAt:J
    const-string v5, "RetryScheduler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Retry for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is scheduled to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "kk:mm:ss."

    move-object v0, v7

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    rem-long v7, v28, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v5, "due_time"

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 158
    if-eqz v24, :cond_172

    .line 160
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v5

    const/16 v6, 0x82

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 197
    .end local v28           #retryAt:J
    :cond_172
    :goto_172
    const-string v5, "err_type"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    const-string v5, "retry_index"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    const-string v5, "last_try"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 201
    const-string v5, "_id"

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 203
    .local v16, columnIndex:I
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 204
    .local v22, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetryScheduler;->mContentResolver:Landroid/content/ContentResolver;

    move-object v10, v0

    sget-object v11, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1c4
    .catchall {:try_start_bf .. :try_end_1c4} :catchall_227

    .line 211
    .end local v12           #values:Landroid/content/ContentValues;
    .end local v16           #columnIndex:I
    .end local v17           #current:J
    .end local v20           #direction:I
    .end local v21           #errorType:I
    .end local v22           #id:J
    .end local v24           #isRetryDownloading:Z
    .end local v27           #msgType:I
    .end local v30           #retryIndex:I
    .end local v31           #scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    :goto_1c4
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_bc

    .line 127
    .restart local v27       #msgType:I
    :sswitch_1c9
    const/16 v20, 0x1

    .line 128
    .restart local v20       #direction:I
    goto/16 :goto_bf

    .line 147
    .restart local v12       #values:Landroid/content/ContentValues;
    .restart local v17       #current:J
    .restart local v21       #errorType:I
    .restart local v30       #retryIndex:I
    .restart local v31       #scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    :cond_1cd
    const/4 v5, 0x0

    move/from16 v24, v5

    goto/16 :goto_115

    .line 164
    .restart local v24       #isRetryDownloading:Z
    :cond_1d2
    const/16 v21, 0xa

    .line 165
    if-eqz v24, :cond_231

    .line 166
    :try_start_1d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v9, "thread_id"

    aput-object v9, v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p1

    invoke-static/range {v5 .. v11}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1f4
    .catchall {:try_start_1d6 .. :try_end_1f4} :catchall_227

    move-result-object v15

    .line 169
    .local v15, c:Landroid/database/Cursor;
    const-wide/16 v32, -0x1

    .line 170
    .local v32, threadId:J
    if-eqz v15, :cond_207

    .line 172
    :try_start_1f9
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_204

    .line 173
    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_203
    .catchall {:try_start_1f9 .. :try_end_203} :catchall_22c

    move-result-wide v32

    .line 176
    :cond_204
    :try_start_204
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_207
    const-wide/16 v5, -0x1

    cmp-long v5, v32, v5

    if-eqz v5, :cond_218

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->notifyDownloadFailed(Landroid/content/Context;J)V

    .line 185
    :cond_218
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v5

    const/16 v6, 0x87

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V
    :try_end_225
    .catchall {:try_start_204 .. :try_end_225} :catchall_227

    goto/16 :goto_172

    .line 211
    .end local v12           #values:Landroid/content/ContentValues;
    .end local v15           #c:Landroid/database/Cursor;
    .end local v17           #current:J
    .end local v20           #direction:I
    .end local v21           #errorType:I
    .end local v24           #isRetryDownloading:Z
    .end local v27           #msgType:I
    .end local v30           #retryIndex:I
    .end local v31           #scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    .end local v32           #threadId:J
    :catchall_227
    move-exception v5

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v5

    .line 176
    .restart local v12       #values:Landroid/content/ContentValues;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v17       #current:J
    .restart local v20       #direction:I
    .restart local v21       #errorType:I
    .restart local v24       #isRetryDownloading:Z
    .restart local v27       #msgType:I
    .restart local v30       #retryIndex:I
    .restart local v31       #scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    .restart local v32       #threadId:J
    :catchall_22c
    move-exception v5

    :try_start_22d
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v5

    .line 189
    .end local v15           #c:Landroid/database/Cursor;
    .end local v32           #threadId:J
    :cond_231
    new-instance v8, Landroid/content/ContentValues;

    const/4 v5, 0x1

    invoke-direct {v8, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 190
    .local v8, readValues:Landroid/content/ContentValues;
    const-string v5, "read"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p1

    invoke-static/range {v5 .. v10}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    goto/16 :goto_172

    .line 208
    .end local v8           #readValues:Landroid/content/ContentValues;
    .end local v12           #values:Landroid/content/ContentValues;
    .end local v17           #current:J
    .end local v20           #direction:I
    .end local v21           #errorType:I
    .end local v24           #isRetryDownloading:Z
    .end local v27           #msgType:I
    .end local v30           #retryIndex:I
    .end local v31           #scheme:Lcom/android/mms/transaction/DefaultRetryScheme;
    :cond_261
    const-string v5, "RetryScheduler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot found correct pending status for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27c
    .catchall {:try_start_22d .. :try_end_27c} :catchall_227

    goto/16 :goto_1c4

    .line 121
    :sswitch_data_27e
    .sparse-switch
        0x80 -> :sswitch_1c9
        0x82 -> :sswitch_bd
        0x87 -> :sswitch_1c9
    .end sparse-switch
.end method

.method public static setRetryAlarm(Landroid/content/Context;)V
    .registers 11
    .parameter "context"

    .prologue
    .line 217
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    const-wide v7, 0x7fffffffffffffffL

    invoke-virtual {v6, v7, v8}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(J)Landroid/database/Cursor;

    move-result-object v1

    .line 219
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_65

    .line 221
    :try_start_f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_62

    .line 223
    const-string v6, "due_time"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 226
    .local v3, retryAt:J
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_ONALARM"

    const/4 v7, 0x0

    const-class v8, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v5, v6, v7, p0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .local v5, service:Landroid/content/Intent;
    const/4 v6, 0x0

    const/high16 v7, 0x4000

    invoke-static {p0, v6, v5, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 230
    .local v2, operation:Landroid/app/PendingIntent;
    const-string v6, "alarm"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 232
    .local v0, am:Landroid/app/AlarmManager;
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 234
    const-string v6, "RetryScheduler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Next retry is scheduled at: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "kk:mm:ss."

    invoke-static {v8, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    rem-long v8, v3, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_f .. :try_end_62} :catchall_66

    .line 239
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v2           #operation:Landroid/app/PendingIntent;
    .end local v3           #retryAt:J
    .end local v5           #service:Landroid/content/Intent;
    :cond_62
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 242
    :cond_65
    return-void

    .line 239
    :catchall_66
    move-exception v6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v6
.end method


# virtual methods
.method public update(Lcom/android/mms/transaction/Observable;)V
    .registers 8
    .parameter "observable"

    .prologue
    .line 75
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    move-object v2, v0

    .line 78
    .local v2, t:Lcom/android/mms/transaction/Transaction;
    instance-of v4, v2, Lcom/android/mms/transaction/NotificationTransaction;

    if-nez v4, :cond_14

    instance-of v4, v2, Lcom/android/mms/transaction/RetrieveTransaction;

    if-nez v4, :cond_14

    instance-of v4, v2, Lcom/android/mms/transaction/ReadRecTransaction;

    if-nez v4, :cond_14

    instance-of v4, v2, Lcom/android/mms/transaction/SendTransaction;
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_3c

    if-eqz v4, :cond_2b

    .line 83
    :cond_14
    :try_start_14
    invoke-virtual {v2}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v1

    .line 84
    .local v1, state:Lcom/android/mms/transaction/TransactionState;
    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_28

    .line 85
    invoke-virtual {v1}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 86
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_28

    .line 87
    invoke-direct {p0, v3}, Lcom/android/mms/transaction/RetryScheduler;->scheduleRetry(Landroid/net/Uri;)V
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_37

    .line 91
    .end local v3           #uri:Landroid/net/Uri;
    :cond_28
    :try_start_28
    invoke-virtual {v2, p0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_3c

    .line 95
    .end local v1           #state:Lcom/android/mms/transaction/TransactionState;
    :cond_2b
    invoke-direct {p0}, Lcom/android/mms/transaction/RetryScheduler;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 96
    iget-object v4, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    .line 99
    :cond_36
    return-void

    .line 91
    :catchall_37
    move-exception v4

    :try_start_38
    invoke-virtual {v2, p0}, Lcom/android/mms/transaction/Transaction;->detach(Lcom/android/mms/transaction/Observer;)V

    throw v4
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3c

    .line 95
    .end local v2           #t:Lcom/android/mms/transaction/Transaction;
    :catchall_3c
    move-exception v4

    invoke-direct {p0}, Lcom/android/mms/transaction/RetryScheduler;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 96
    iget-object v5, p0, Lcom/android/mms/transaction/RetryScheduler;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/transaction/RetryScheduler;->setRetryAlarm(Landroid/content/Context;)V

    :cond_48
    throw v4
.end method
