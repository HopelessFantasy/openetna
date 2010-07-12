.class final Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "GsmSMSDispatcher.java"


# static fields
.field static final KT_FOTA_SMS_PID:I = 0x7d

.field static final SMS_STATUS_REPORT_00:I = 0x0

.field static final SMS_STATUS_REPORT_40:I = 0x40

.field static final SMS_TYPE_0:I = 0x40

.field private static final TAG:Ljava/lang/String; = "GSM"

.field static vp:I


# instance fields
.field private mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->vp:I

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .registers 2
    .parameter "phone"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 80
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 81
    return-void
.end method

.method private dispatchPdus([[BI)V
    .registers 6
    .parameter "pdus"
    .parameter "isCbs"

    .prologue
    .line 398
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 400
    const-string v1, "isCbs"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 401
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 402
    const-string v1, "[SMSDispatcher]"

    const-string v2, "dispatchPdus() Send intent to Mms apk"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-void
.end method

.method private processCBSMessagePart(Lcom/android/internal/telephony/gsm/SmsMessage;III)V
    .registers 24
    .parameter "cbs"
    .parameter "referenceNumber"
    .parameter "sequence"
    .parameter "count"

    .prologue
    .line 338
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v3, "reference_number ="

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    .local v18, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    const-string v3, " AND address = ?"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageIdentifier()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    .line 343
    .local v7, whereArgs:[Ljava/lang/String;
    const/4 v15, 0x0

    check-cast v15, [[B

    .line 344
    .local v15, pdus:[[B
    const/4 v9, 0x0

    .line 347
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 348
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 349
    .local v10, cursorCount:I
    const/4 v3, 0x1

    sub-int v3, p4, v3

    if-eq v10, v3, :cond_b8

    .line 351
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 352
    .local v17, values:Landroid/content/ContentValues;
    const-string v3, "date"

    new-instance v4, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 353
    const-string v3, "pdu"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v3, "address"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageIdentifier()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v3, "reference_number"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    const-string v3, "count"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    const-string v3, "sequence"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v4, v0

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_b2
    .catchall {:try_start_27 .. :try_end_b2} :catchall_11e
    .catch Landroid/database/SQLException; {:try_start_27 .. :try_end_b2} :catch_10f

    .line 384
    if-eqz v9, :cond_b7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 388
    .end local v10           #cursorCount:I
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_b7
    :goto_b7
    return-void

    .line 365
    .restart local v10       #cursorCount:I
    :cond_b8
    :try_start_b8
    const-string v3, "pdu"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 366
    .local v14, pduColumn:I
    const-string v3, "sequence"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 368
    .local v16, sequenceColumn:I
    move/from16 v0, p4

    new-array v0, v0, [[B

    move-object v15, v0

    .line 369
    const/4 v13, 0x0

    .local v13, i:I
    :goto_ca
    if-ge v13, v10, :cond_e7

    .line 370
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 371
    move-object v0, v9

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    long-to-int v11, v3

    .line 372
    .local v11, cursorSequence:I
    const/4 v3, 0x1

    sub-int v3, v11, v3

    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v15, v3

    .line 369
    add-int/lit8 v13, v13, 0x1

    goto :goto_ca

    .line 376
    .end local v11           #cursorSequence:I
    :cond_e7
    const/4 v3, 0x1

    sub-int v3, p3, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v4

    aput-object v4, v15, v3

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v4, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_101
    .catchall {:try_start_b8 .. :try_end_101} :catchall_11e
    .catch Landroid/database/SQLException; {:try_start_b8 .. :try_end_101} :catch_10f

    .line 384
    if-eqz v9, :cond_106

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 387
    :cond_106
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchPdus([[BI)V

    goto :goto_b7

    .line 380
    .end local v10           #cursorCount:I
    .end local v13           #i:I
    .end local v14           #pduColumn:I
    .end local v16           #sequenceColumn:I
    :catch_10f
    move-exception v3

    move-object v12, v3

    .line 381
    .local v12, e:Landroid/database/SQLException;
    :try_start_111
    const-string v3, "GSM"

    const-string v4, "Can\'t access multipart SMS CBS database"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_118
    .catchall {:try_start_111 .. :try_end_118} :catchall_11e

    .line 384
    if-eqz v9, :cond_b7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_b7

    .end local v12           #e:Landroid/database/SQLException;
    :catchall_11e
    move-exception v3

    if-eqz v9, :cond_124

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_124
    throw v3
.end method

.method private resultToCause(I)I
    .registers 3
    .parameter "rc"

    .prologue
    .line 624
    packed-switch p1, :pswitch_data_c

    .line 633
    :pswitch_3
    const/16 v0, 0xff

    :goto_5
    return v0

    .line 628
    :pswitch_6
    const/4 v0, 0x0

    goto :goto_5

    .line 630
    :pswitch_8
    const/16 v0, 0xd3

    goto :goto_5

    .line 624
    nop

    :pswitch_data_c
    .packed-switch -0x1
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method private sendMultipartTextWithPermit(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 25
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 475
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->getState()I

    move-result v15

    .line 476
    .local v15, ss:I
    if-eqz v15, :cond_46

    .line 477
    const/4 v8, 0x0

    .local v8, i:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, count:I
    :goto_15
    if-ge v8, v6, :cond_ff

    .line 478
    const/4 v13, 0x0

    .line 479
    .local v13, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_2c

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move v1, v8

    if-le v0, v1, :cond_2c

    .line 480
    move-object/from16 v0, p4

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    check-cast v13, Landroid/app/PendingIntent;

    .line 482
    .restart local v13       #sentIntent:Landroid/app/PendingIntent;
    :cond_2c
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v13

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v16

    .line 483
    .local v16, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 477
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    .line 488
    .end local v6           #count:I
    .end local v8           #i:I
    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    .end local v16           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_46
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move v12, v0

    .line 490
    .local v12, refNumber:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .local v10, msgCount:I
    :goto_54
    if-ge v8, v10, :cond_ff

    .line 491
    new-instance v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 492
    .local v5, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v12, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 493
    add-int/lit8 v17, v8, 0x1

    move/from16 v0, v17

    move-object v1, v5

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 494
    iput v10, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 495
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object v1, v5

    iput-boolean v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 496
    new-instance v14, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v14}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 497
    .local v14, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v5, v14, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 499
    const/4 v13, 0x0

    .line 500
    .restart local v13       #sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_89

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move v1, v8

    if-le v0, v1, :cond_89

    .line 501
    move-object/from16 v0, p4

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    check-cast v13, Landroid/app/PendingIntent;

    .line 504
    .restart local v13       #sentIntent:Landroid/app/PendingIntent;
    :cond_89
    const/4 v7, 0x0

    .line 505
    .local v7, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_9e

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move v1, v8

    if-le v0, v1, :cond_9e

    .line 506
    move-object/from16 v0, p5

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 510
    .restart local v7       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_9e
    sget v17, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->vp:I

    if-lez v17, :cond_a7

    .line 511
    sget v17, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->vp:I

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/gsm/SmsMessage;->setValidityPeriod(I)V

    .line 514
    :cond_a7
    move-object/from16 v0, p3

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    check-cast v5, Ljava/lang/String;

    if-eqz v7, :cond_fc

    const/16 v17, 0x1

    :goto_b4
    invoke-static {v14}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object v2, v5

    move/from16 v3, v17

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v11

    .line 517
    .local v11, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 518
    .local v9, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v17, "smsc"

    move-object v0, v11

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    move-object/from16 v18, v0

    move-object v0, v9

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    const-string v17, "pdu"

    move-object v0, v11

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    move-object/from16 v18, v0

    move-object v0, v9

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v13

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v16

    .line 522
    .restart local v16       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 490
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_54

    .line 514
    .end local v9           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v16           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_fc
    const/16 v17, 0x0

    goto :goto_b4

    .line 524
    .end local v7           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v10           #msgCount:I
    .end local v12           #refNumber:I
    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    .end local v14           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_ff
    return-void
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .registers 6
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_d

    .line 598
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->resultToCause(I)I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 600
    :cond_d
    return-void
.end method

.method protected activateCellBroadcastSms(ILandroid/os/Message;)V
    .registers 5
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 605
    const-string v0, "GSM"

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 607
    return-void
.end method

.method protected dispatchCBSMessage(Lcom/android/internal/telephony/SmsMessageBase;)V
    .registers 13
    .parameter "cbsb"

    .prologue
    const/4 v9, 0x1

    const-string v10, "[SMSDispatcher]"

    .line 301
    if-nez p1, :cond_6

    .line 330
    :cond_5
    :goto_5
    return-void

    .line 305
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    move-object v1, v0

    .line 308
    .local v1, cbs:Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v3, -0x1

    .line 309
    .local v3, cbsSerialNumber:I
    const/4 v2, -0x1

    .line 310
    .local v2, cbsPageNumber:I
    const/4 v4, 0x0

    .line 311
    .local v4, count:I
    const/4 v6, 0x0

    .line 313
    .local v6, sequence:I
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTotalPageNumber()I

    move-result v2

    .line 314
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSerialNumber()I

    move-result v3

    .line 315
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTotalPageNumber()I

    move-result v4

    .line 316
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getCurrentPageNumber()I

    move-result v6

    .line 318
    const-string v7, "[SMSDispatcher]"

    const-string v7, "dispatchCBSMessage()"

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    if-ne v2, v9, :cond_3b

    .line 321
    new-array v5, v9, [[B

    .line 322
    .local v5, pdus:[[B
    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v8

    aput-object v8, v5, v7

    .line 323
    const-string v7, "[SMSDispatcher]"

    const-string v7, "dispatchCBSMessage() : This is a CBS one page"

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-direct {p0, v5, v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchPdus([[BI)V

    goto :goto_5

    .line 326
    .end local v5           #pdus:[[B
    :cond_3b
    if-le v2, v9, :cond_5

    .line 328
    invoke-direct {p0, v1, v3, v6, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->processCBSMessagePart(Lcom/android/internal/telephony/gsm/SmsMessage;III)V

    goto :goto_5
.end method

.method protected dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .registers 17
    .parameter "smsb"

    .prologue
    .line 134
    if-nez p1, :cond_4

    .line 135
    const/4 v12, 0x2

    .line 289
    :goto_3
    return v12

    .line 137
    :cond_4
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    move-object v10, v0

    .line 138
    .local v10, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v5, 0x0

    .line 141
    .local v5, handled:Z
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v12

    if-eqz v12, :cond_86

    .line 144
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCPHSMWIAddress()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_57

    .line 145
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCPHSMWILine1OrLine2()I

    move-result v12

    if-nez v12, :cond_48

    .line 146
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateMessageWaitingCphsIndicator(IZ)V

    .line 164
    :cond_24
    :goto_24
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v12

    or-int/2addr v5, v12

    .line 166
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received voice mail indicator set SMS shouldStore="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v5, :cond_84

    const/4 v14, 0x1

    :goto_39
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_44
    :goto_44
    if-eqz v5, :cond_d9

    .line 189
    const/4 v12, 0x1

    goto :goto_3

    .line 147
    :cond_48
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCPHSMWILine1OrLine2()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_24

    .line 148
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v13, 0x2

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateMessageWaitingCphsIndicator(IZ)V

    goto :goto_24

    .line 153
    :cond_57
    const/4 v1, -0x1

    .line 154
    .local v1, count:I
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getcountVM()I

    move-result v1

    .line 155
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "dispatchMessage isMWISetMessage count = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    if-ltz v1, :cond_7d

    .line 157
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v13, 0x1

    invoke-virtual {v12, v13, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateMessageWaitingIndicatorwithcount(ZI)V

    goto :goto_24

    .line 159
    :cond_7d
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateMessageWaitingIndicator(Z)V

    goto :goto_24

    .line 166
    .end local v1           #count:I
    :cond_84
    const/4 v14, 0x0

    goto :goto_39

    .line 168
    :cond_86
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v12

    if-eqz v12, :cond_44

    .line 170
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCPHSMWIAddress()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_d0

    .line 172
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCPHSMWILine1OrLine2()I

    move-result v12

    if-nez v12, :cond_c1

    .line 173
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateMessageWaitingCphsIndicator(IZ)V

    .line 182
    :cond_a0
    :goto_a0
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v12

    or-int/2addr v5, v12

    .line 184
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Received voice mail indicator clear SMS shouldStore="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v5, :cond_d7

    const/4 v14, 0x1

    :goto_b5
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 174
    :cond_c1
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCPHSMWILine1OrLine2()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a0

    .line 175
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateMessageWaitingCphsIndicator(IZ)V

    goto :goto_a0

    .line 179
    :cond_d0
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateMessageWaitingIndicator(Z)V

    goto :goto_a0

    .line 184
    :cond_d7
    const/4 v14, 0x0

    goto :goto_b5

    .line 194
    :cond_d9
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getProtocolIdentifier()I

    move-result v8

    .line 195
    .local v8, pid:I
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[RHS1103] pid = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/16 v12, 0x40

    if-ne v8, v12, :cond_103

    .line 197
    const-string v12, "GSM"

    const-string v13, "[RHS1103] PID Message 0"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v12, 0x1

    goto/16 :goto_3

    .line 203
    :cond_103
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v12

    const-string v13, "KTF"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_170

    .line 215
    const-string v12, "SMSFW"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  PID=("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/16 v12, 0x7d

    if-ne v8, v12, :cond_13b

    .line 217
    const-string v12, "SMSFW"

    const-string v13, "  *** discarding KT FOTA SMS ***"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v12, 0x1

    goto/16 :goto_3

    .line 222
    :cond_13b
    and-int/lit16 v9, v8, 0xff

    .line 223
    .local v9, pid_byte:I
    const/16 v12, 0x49

    if-lt v9, v12, :cond_145

    const/16 v12, 0x5d

    if-le v9, v12, :cond_155

    :cond_145
    const/16 v12, 0x60

    if-lt v9, v12, :cond_14d

    const/16 v12, 0x7b

    if-le v9, v12, :cond_155

    :cond_14d
    const/16 v12, 0x80

    if-lt v9, v12, :cond_170

    const/16 v12, 0xbf

    if-gt v9, v12, :cond_170

    .line 226
    :cond_155
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "message discard : [reserved] "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v12, 0x1

    goto/16 :goto_3

    .line 234
    .end local v9           #pid_byte:I
    :cond_170
    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v11

    .line 238
    .local v11, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v12

    const-string v13, "KTF"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f0

    if-eqz v11, :cond_1f0

    .line 239
    and-int/lit16 v12, v8, 0xff

    if-eqz v12, :cond_192

    and-int/lit16 v12, v8, 0xff

    const/16 v13, 0x48

    if-eq v12, v13, :cond_192

    and-int/lit16 v12, v8, 0xff

    const/16 v13, 0x5f

    if-ne v12, v13, :cond_1f0

    .line 241
    :cond_192
    iget-object v12, v11, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_198
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1f0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .line 244
    .local v4, element:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :try_start_1a4
    iget v12, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    packed-switch v12, :pswitch_data_232

    goto :goto_198

    .line 247
    :pswitch_1aa
    iget-object v2, v4, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    .line 248
    .local v2, data:[B
    const/4 v12, 0x0

    aget-byte v12, v2, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0x80

    if-eq v12, v13, :cond_1bc

    const/4 v12, 0x0

    aget-byte v12, v2, v12

    and-int/lit16 v12, v12, 0xff

    if-nez v12, :cond_1d0

    .line 249
    :cond_1bc
    const-string v12, "GSM"

    const-string v13, "KT voicemessage"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1a4 .. :try_end_1c3} :catch_1c4

    goto :goto_198

    .line 259
    .end local v2           #data:[B
    :catch_1c4
    move-exception v12

    move-object v3, v12

    .line 260
    .local v3, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v12, "GSM"

    const-string v13, "Bad element in header"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    const/4 v12, 0x1

    goto/16 :goto_3

    .line 251
    .end local v3           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v2       #data:[B
    :cond_1d0
    :try_start_1d0
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "KT voicemessage : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, v2, v14

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ed
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1d0 .. :try_end_1ed} :catch_1c4

    .line 252
    const/4 v12, 0x1

    goto/16 :goto_3

    .line 270
    .end local v2           #data:[B
    .end local v4           #element:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_1f0
    if-eqz v11, :cond_1f6

    iget-object v12, v11, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v12, :cond_228

    .line 272
    :cond_1f6
    const/4 v12, 0x1

    new-array v7, v12, [[B

    .line 273
    .local v7, pdus:[[B
    const/4 v12, 0x0

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v13

    aput-object v13, v7, v12

    .line 275
    if-eqz v11, :cond_224

    iget-object v12, v11, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v12, :cond_224

    .line 276
    iget-object v12, v11, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v12, v12, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v13, 0xb84

    if-ne v12, v13, :cond_21a

    .line 277
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v12

    goto/16 :goto_3

    .line 280
    :cond_21a
    iget-object v12, v11, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v12, v12, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {p0, v7, v12}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 286
    :goto_221
    const/4 v12, -0x1

    goto/16 :goto_3

    .line 284
    :cond_224
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchPdus([[B)V

    goto :goto_221

    .line 289
    .end local v7           #pdus:[[B
    :cond_228
    iget-object v12, v11, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-object v13, v11, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-virtual {p0, v10, v12, v13}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->processMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;)I

    move-result v12

    goto/16 :goto_3

    .line 244
    :pswitch_data_232
    .packed-switch 0x1
        :pswitch_1aa
    .end packed-switch
.end method

.method protected getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 612
    const-string v0, "GSM"

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 614
    return-void
.end method

.method protected handleStatusReport(Landroid/os/AsyncResult;)V
    .registers 14
    .parameter "ar"

    .prologue
    const/4 v11, 0x1

    .line 91
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 92
    .local v5, pduString:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v6

    .line 94
    .local v6, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    if-eqz v6, :cond_45

    .line 95
    iget v4, v6, Lcom/android/internal/telephony/gsm/SmsMessage;->messageRef:I

    .line 98
    .local v4, messageRef:I
    iget v7, v6, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    .line 101
    .local v7, status:I
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_16
    if-ge v2, v0, :cond_45

    .line 102
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 103
    .local v8, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v9, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    if-ne v9, v4, :cond_52

    .line 107
    if-eqz v7, :cond_2a

    const/16 v9, 0x40

    if-lt v7, v9, :cond_4a

    .line 108
    :cond_2a
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 114
    :goto_2f
    iget-object v3, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 115
    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v1, fillIn:Landroid/content/Intent;
    const-string v9, "pdu"

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 118
    :try_start_3f
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_45
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3f .. :try_end_45} :catch_55

    .line 126
    .end local v0           #count:I
    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v2           #i:I
    .end local v3           #intent:Landroid/app/PendingIntent;
    .end local v4           #messageRef:I
    .end local v7           #status:I
    .end local v8           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_45
    :goto_45
    const/4 v9, 0x0

    invoke-virtual {p0, v11, v11, v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 127
    return-void

    .line 110
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v4       #messageRef:I
    .restart local v7       #status:I
    .restart local v8       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_4a
    const-string v9, "GSM"

    const-string v10, " handleStatusReport - not remove "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 101
    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 119
    .restart local v1       #fillIn:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_55
    move-exception v9

    goto :goto_45
.end method

.method protected sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 9
    .parameter "tracker"

    .prologue
    .line 580
    iget-object v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 582
    .local v6, map:Ljava/util/HashMap;
    const-string v0, "destination"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 583
    .local v1, destinationAddress:Ljava/lang/String;
    const-string v0, "scaddress"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 585
    .local v2, scAddress:Ljava/lang/String;
    const-string v0, "parts"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 586
    .local v3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "sentIntents"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 587
    .local v4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "deliveryIntents"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .local v5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object v0, p0

    .line 589
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendMultipartTextWithPermit(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 592
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 16
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v8

    and-int/lit16 v5, v8, 0xff

    .line 413
    .local v5, refNumber:I
    const/4 v2, 0x0

    .local v2, i:I
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, msgCount:I
    :goto_b
    if-ge v2, v3, :cond_5f

    .line 414
    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 415
    .local v0, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 416
    add-int/lit8 v8, v2, 0x1

    iput v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 417
    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 424
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 425
    new-instance v7, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v7}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 426
    .local v7, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v0, v7, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 428
    const/4 v6, 0x0

    .line 429
    .local v6, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_33

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v2, :cond_33

    .line 430
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #sentIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 433
    .restart local v6       #sentIntent:Landroid/app/PendingIntent;
    :cond_33
    const/4 v1, 0x0

    .line 434
    .local v1, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_42

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v2, :cond_42

    .line 435
    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v1, Landroid/app/PendingIntent;

    .line 438
    .restart local v1       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_42
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_5d

    const/4 v8, 0x1

    :goto_4b
    invoke-static {v7}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    invoke-static {p2, p1, v0, v8, v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v4

    .line 441
    .local v4, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    iget-object v8, v4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v9, v4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    invoke-virtual {p0, v8, v9, v6, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 413
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 438
    .end local v4           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_5d
    const/4 v8, 0x0

    goto :goto_4b

    .line 443
    .end local v1           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v6           #sentIntent:Landroid/app/PendingIntent;
    .end local v7           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_5f
    return-void
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .registers 10
    .parameter "tracker"

    .prologue
    .line 560
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 562
    .local v1, map:Ljava/util/HashMap;
    const-string v5, "smsc"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .line 563
    .local v4, smsc:[B
    const-string v5, "pdu"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0

    .line 565
    .local v2, pdu:[B
    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 566
    .local v3, reply:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 568
    return-void
.end method

.method protected setCellBroadcastConfig([ILandroid/os/Message;)V
    .registers 5
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 619
    const-string v0, "GSM"

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 621
    return-void
.end method

.method setMultipartTextValidityPeriod(I)V
    .registers 5
    .parameter "validityperiod"

    .prologue
    .line 535
    sput p1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->vp:I

    .line 536
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RHS0520] SetValidityPeriod = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->vp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-void
.end method

.method setSendingMultiSMS(Z)Z
    .registers 4
    .parameter "bFull"

    .prologue
    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, bResult:Z
    sget-boolean v1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mMultisending:Z

    if-nez v1, :cond_8

    .line 550
    sput-boolean p1, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mMultisending:Z

    .line 551
    const/4 v0, 0x1

    .line 553
    :cond_8
    return v0
.end method
