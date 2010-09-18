.class Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;
.super Landroid/os/AsyncTask;
.source "PushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/PushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceivePushTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/mms/transaction/PushReceiver;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/PushReceiver;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->this$0:Lcom/android/mms/transaction/PushReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 61
    check-cast p1, [Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .registers 22
    .parameter "intents"

    .prologue
    .line 69
    const/4 v3, 0x0

    aget-object v10, p1, v3

    .line 72
    .local v10, intent:Landroid/content/Intent;
    const-string v3, "data"

    invoke-virtual {v10, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v15

    .line 73
    .local v15, pushData:[B
    new-instance v13, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v13, v15}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 75
    .local v13, parser:Lcom/google/android/mms/pdu/PduParser;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v13, v3}, Lcom/google/android/mms/pdu/PduParser;->parse(Landroid/content/Context;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v14

    .line 77
    .local v14, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    if-nez v14, :cond_22

    .line 78
    const-string v3, "PushReceiver"

    const-string v4, "Invalid PUSH data"

    invoke-static {v3, v4}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v3, 0x0

    .line 133
    :goto_21
    return-object v3

    .line 82
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v12

    .line 83
    .local v12, p:Lcom/google/android/mms/pdu/PduPersister;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 84
    .local v4, cr:Landroid/content/ContentResolver;
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v19

    .line 85
    .local v19, type:I
    const-wide/16 v17, -0x1

    .line 88
    .local v17, threadId:J
    sparse-switch v19, :sswitch_data_138

    .line 124
    :try_start_3d
    const-string v3, "PushReceiver"

    const-string v4, "Received unrecognized PDU."

    .end local v4           #cr:Landroid/content/ContentResolver;
    invoke-static {v3, v4}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catch Lcom/google/android/mms/MmsException; {:try_start_3d .. :try_end_44} :catch_9b
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_44} :catch_109

    .line 131
    :cond_44
    :goto_44
    const-string v3, "PushReceiver"

    const-string v4, "PUSH Intent processed."

    invoke-static {v3, v4}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v3, 0x0

    goto :goto_21

    .line 91
    .restart local v4       #cr:Landroid/content/ContentResolver;
    :sswitch_4d
    :try_start_4d
    const-string v3, "PushReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MMS Report recieved: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v14

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/PushReceiver;->access$000(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;I)J

    move-result-wide v17

    .line 93
    const-wide/16 v7, -0x1

    cmp-long v3, v17, v7

    if-eqz v3, :cond_44

    .line 99
    sget-object v3, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12, v14, v3}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 101
    .local v5, uri:Landroid/net/Uri;
    new-instance v6, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 102
    .local v6, values:Landroid/content/ContentValues;
    const-string v3, "thread_id"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object v3, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9a
    .catch Lcom/google/android/mms/MmsException; {:try_start_4d .. :try_end_9a} :catch_9b
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_9a} :catch_109

    goto :goto_44

    .line 126
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v5           #uri:Landroid/net/Uri;
    .end local v6           #values:Landroid/content/ContentValues;
    :catch_9b
    move-exception v3

    move-object v9, v3

    .line 127
    .local v9, e:Lcom/google/android/mms/MmsException;
    const-string v3, "PushReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to save the data from PUSH: type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v9}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_44

    .line 107
    .end local v9           #e:Lcom/google/android/mms/MmsException;
    .restart local v4       #cr:Landroid/content/ContentResolver;
    :sswitch_b9
    :try_start_b9
    move-object v0, v14

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object v11, v0

    .line 108
    .local v11, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    const-string v3, "PushReceiver"

    const-string v4, "MMS Notification recieved--->"

    .end local v4           #cr:Landroid/content/ContentResolver;
    invoke-static {v3, v4}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3, v11}, Lcom/android/mms/transaction/PushReceiver;->access$100(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z

    move-result v3

    if-nez v3, :cond_114

    .line 110
    sget-object v3, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12, v14, v3}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 112
    .restart local v5       #uri:Landroid/net/Uri;
    new-instance v16, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object v3, v0

    const-class v4, Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .local v16, svc:Landroid/content/Intent;
    const-string v3, "uri"

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v3, "type"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/PushReceiver$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_107
    .catch Lcom/google/android/mms/MmsException; {:try_start_b9 .. :try_end_107} :catch_9b
    .catch Ljava/lang/RuntimeException; {:try_start_b9 .. :try_end_107} :catch_109

    goto/16 :goto_44

    .line 128
    .end local v5           #uri:Landroid/net/Uri;
    .end local v11           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .end local v16           #svc:Landroid/content/Intent;
    :catch_109
    move-exception v3

    move-object v9, v3

    .line 129
    .local v9, e:Ljava/lang/RuntimeException;
    const-string v3, "PushReceiver"

    const-string v4, "Unexpected RuntimeException."

    invoke-static {v3, v4, v9}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 118
    .end local v9           #e:Ljava/lang/RuntimeException;
    .restart local v11       #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :cond_114
    :try_start_114
    const-string v3, "PushReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip downloading duplicate message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v11}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_135
    .catch Lcom/google/android/mms/MmsException; {:try_start_114 .. :try_end_135} :catch_9b
    .catch Ljava/lang/RuntimeException; {:try_start_114 .. :try_end_135} :catch_109

    goto/16 :goto_44

    .line 88
    nop

    :sswitch_data_138
    .sparse-switch
        0x82 -> :sswitch_b9
        0x86 -> :sswitch_4d
        0x88 -> :sswitch_4d
    .end sparse-switch
.end method
