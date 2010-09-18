.class public abstract Lcom/android/internal/telephony/IccFileHandler;
.super Landroid/os/Handler;
.source "IccFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    }
.end annotation


# static fields
.field protected static final COMMAND_GET_RESPONSE:I = 0xc0

.field protected static final COMMAND_READ_BINARY:I = 0xb0

.field protected static final COMMAND_READ_RECORD:I = 0xb2

.field protected static final COMMAND_SEEK:I = 0xa2

.field protected static final COMMAND_UPDATE_BINARY:I = 0xd6

.field protected static final COMMAND_UPDATE_RECORD:I = 0xdc

.field protected static final EF_TYPE_CYCLIC:I = 0x3

.field protected static final EF_TYPE_LINEAR_FIXED:I = 0x1

.field protected static final EF_TYPE_TRANSPARENT:I = 0x0

.field protected static final EVENT_GET_ADN_RECORD_SIZE_DONE:I = 0xb

.field protected static final EVENT_GET_BINARY_SIZE_DONE:I = 0x4

.field protected static final EVENT_GET_EF_LINEAR_RECORD_SIZE_DONE:I = 0x8

.field protected static final EVENT_GET_RECORD_SIZE_DONE:I = 0x6

.field protected static final EVENT_READ_ADN_RECORD_DONE:I = 0xc

.field protected static final EVENT_READ_BINARY_DONE:I = 0x5

.field protected static final EVENT_READ_ICON_DONE:I = 0xa

.field protected static final EVENT_READ_IMG_DONE:I = 0x9

.field protected static final EVENT_READ_RECORD_DONE:I = 0x7

.field protected static final GET_RESPONSE_EF_IMG_SIZE_BYTES:I = 0xa

.field protected static final GET_RESPONSE_EF_SIZE_BYTES:I = 0xf

.field protected static final READ_RECORD_MODE_ABSOLUTE:I = 0x4

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_1:I = 0x8

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_2:I = 0x9

.field protected static final RESPONSE_DATA_ACCESS_CONDITION_3:I = 0xa

.field protected static final RESPONSE_DATA_FILE_ID_1:I = 0x4

.field protected static final RESPONSE_DATA_FILE_ID_2:I = 0x5

.field protected static final RESPONSE_DATA_FILE_SIZE_1:I = 0x2

.field protected static final RESPONSE_DATA_FILE_SIZE_2:I = 0x3

.field protected static final RESPONSE_DATA_FILE_STATUS:I = 0xb

.field protected static final RESPONSE_DATA_FILE_TYPE:I = 0x6

.field protected static final RESPONSE_DATA_LENGTH:I = 0xc

.field protected static final RESPONSE_DATA_RECORD_LENGTH:I = 0xe

.field protected static final RESPONSE_DATA_RFU_1:I = 0x0

.field protected static final RESPONSE_DATA_RFU_2:I = 0x1

.field protected static final RESPONSE_DATA_RFU_3:I = 0x7

.field protected static final RESPONSE_DATA_STRUCTURE:I = 0xd

.field protected static final TYPE_DF:I = 0x2

.field protected static final TYPE_EF:I = 0x4

.field protected static final TYPE_MF:I = 0x1

.field protected static final TYPE_RFU:I


# instance fields
.field protected phone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .registers 2
    .parameter "phone"

    .prologue
    .line 136
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 138
    return-void
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "response"
    .parameter "result"
    .parameter "ex"

    .prologue
    .line 389
    if-nez p1, :cond_3

    .line 396
    :goto_2
    return-void

    .line 393
    :cond_3
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 395
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2
.end method


# virtual methods
.method public dispose()V
    .registers 1

    .prologue
    .line 141
    return-void
.end method

.method protected getCommonIccEFPath(I)Ljava/lang/String;
    .registers 3
    .parameter "efid"

    .prologue
    .line 789
    sparse-switch p1, :sswitch_data_e

    .line 804
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 797
    :sswitch_5
    const-string v0, "3F007F10"

    goto :goto_4

    .line 800
    :sswitch_8
    const-string v0, "3F00"

    goto :goto_4

    .line 802
    :sswitch_b
    const-string v0, "3F007F105F50"

    goto :goto_4

    .line 789
    :sswitch_data_e
    .sparse-switch
        0x2fe2 -> :sswitch_8
        0x4f20 -> :sswitch_b
        0x6f3a -> :sswitch_5
        0x6f3b -> :sswitch_5
        0x6f40 -> :sswitch_5
        0x6f49 -> :sswitch_5
        0x6f4a -> :sswitch_5
        0x6f4b -> :sswitch_5
        0x6f4c -> :sswitch_5
    .end sparse-switch
.end method

.method getEFADNLinearRecordSize(ILandroid/os/Message;)V
    .registers 16
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 216
    const/4 v3, 0x0

    .line 217
    .local v3, filePath:Ljava/lang/String;
    const/16 v0, 0x8

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 221
    .local v9, response:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getValidADNNum()I

    move-result v0

    if-lez v0, :cond_3b

    .line 223
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 224
    .local v12, tPath:Ljava/lang/StringBuilder;
    const-string v10, "3F007F105F3A"

    .line 225
    .local v10, df:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v11, v0, [B

    .line 226
    .local v11, ef:[B
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v11, v4

    .line 227
    const/4 v0, 0x1

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v11, v0

    .line 228
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 233
    .end local v10           #df:Ljava/lang/String;
    .end local v11           #ef:[B
    .end local v12           #tPath:Ljava/lang/StringBuilder;
    :cond_3b
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 235
    return-void
.end method

.method getEFADNsRecordsNumber()I
    .registers 2

    .prologue
    .line 211
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getADN_REC_NUM()I

    move-result v0

    return v0
.end method

.method public getEFLinearRecordSize(ILandroid/os/Message;)V
    .registers 13
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 198
    const/16 v0, 0x8

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 203
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 205
    return-void
.end method

.method protected abstract getEFPath(I)Ljava/lang/String;
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 44
    .parameter "msg"

    .prologue
    .line 403
    const/16 v37, 0x0

    .line 415
    .local v37, response:Landroid/os/Message;
    const/16 v31, 0x0

    .line 416
    .local v31, filePath:Ljava/lang/String;
    new-instance v39, Ljava/lang/StringBuilder;

    const/16 v5, 0x10

    move-object/from16 v0, v39

    move v1, v5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 417
    .local v39, tPath:Ljava/lang/StringBuilder;
    const-string v28, "3F007F105F3A"

    .line 418
    .local v28, df:Ljava/lang/String;
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v29, v0

    .line 423
    .local v29, ef:[B
    :try_start_16
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    packed-switch v5, :pswitch_data_704

    :cond_1e
    :goto_1e
    move-object/from16 v8, v31

    .line 776
    .end local v31           #filePath:Ljava/lang/String;
    .end local p1
    .local v8, filePath:Ljava/lang/String;
    :goto_20
    return-void

    .line 425
    .end local v8           #filePath:Ljava/lang/String;
    .restart local v31       #filePath:Ljava/lang/String;
    .restart local p1
    :pswitch_21
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/AsyncResult;

    .line 426
    .local v26, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 427
    .local v34, lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/internal/telephony/IccIoResult;

    .line 428
    .local v38, result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v37, v0

    .line 430
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v33

    .line 431
    .local v33, iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v33, :cond_1e

    .line 432
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object v5, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v8, v31

    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    goto :goto_20

    .line 436
    .end local v8           #filePath:Ljava/lang/String;
    .end local v26           #ar:Landroid/os/AsyncResult;
    .end local v33           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v34           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v38           #result:Lcom/android/internal/telephony/IccIoResult;
    .restart local v31       #filePath:Ljava/lang/String;
    :pswitch_5b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/AsyncResult;

    .line 437
    .restart local v26       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    check-cast v0, Landroid/os/Message;

    move-object/from16 v37, v0

    .line 438
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/internal/telephony/IccIoResult;

    .line 440
    .restart local v38       #result:Lcom/android/internal/telephony/IccIoResult;
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v33

    .line 441
    .restart local v33       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v33, :cond_1e

    .line 442
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object v5, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v8, v31

    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    goto :goto_20

    .line 446
    .end local v8           #filePath:Ljava/lang/String;
    .end local v26           #ar:Landroid/os/AsyncResult;
    .end local v33           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v38           #result:Lcom/android/internal/telephony/IccIoResult;
    .restart local v31       #filePath:Ljava/lang/String;
    :pswitch_93
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/AsyncResult;

    .line 447
    .restart local v26       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 448
    .restart local v34       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/internal/telephony/IccIoResult;

    .line 449
    .restart local v38       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v37, v0

    .line 451
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_cb

    .line 452
    const/4 v5, 0x0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v8, v31

    .line 453
    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    goto/16 :goto_20

    .line 456
    .end local v8           #filePath:Ljava/lang/String;
    .restart local v31       #filePath:Ljava/lang/String;
    :cond_cb
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v33

    .line 457
    .restart local v33       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v33, :cond_e0

    .line 458
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object v2, v5

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v8, v31

    .line 459
    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    goto/16 :goto_20

    .line 462
    .end local v8           #filePath:Ljava/lang/String;
    .restart local v31       #filePath:Ljava/lang/String;
    :cond_e0
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v27, v0

    .line 464
    .local v27, data:[B
    const/4 v5, 0x4

    const/4 v6, 0x6

    aget-byte v6, v27, v6

    if-ne v5, v6, :cond_f3

    const/4 v5, 0x1

    const/16 v6, 0xd

    aget-byte v6, v27, v6

    if-eq v5, v6, :cond_10d

    .line 466
    :cond_f3
    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_f9} :catch_f9

    .line 769
    .end local v26           #ar:Landroid/os/AsyncResult;
    .end local v27           #data:[B
    .end local v33           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v34           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v38           #result:Lcom/android/internal/telephony/IccIoResult;
    .end local p1
    :catch_f9
    move-exception v5

    move-object/from16 v30, v5

    move-object/from16 v8, v31

    .line 770
    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    .local v30, exc:Ljava/lang/Exception;
    :goto_fe
    if-eqz v37, :cond_6e5

    .line 771
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object v2, v5

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 469
    .end local v8           #filePath:Ljava/lang/String;
    .end local v30           #exc:Ljava/lang/Exception;
    .restart local v26       #ar:Landroid/os/AsyncResult;
    .restart local v27       #data:[B
    .restart local v31       #filePath:Ljava/lang/String;
    .restart local v33       #iccException:Lcom/android/internal/telephony/IccException;
    .restart local v34       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .restart local v38       #result:Lcom/android/internal/telephony/IccIoResult;
    .restart local p1
    :cond_10d
    const/4 v5, 0x3

    :try_start_10e
    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v36, v0

    .line 470
    .local v36, recordSize:[I
    const/4 v5, 0x0

    const/16 v6, 0xe

    aget-byte v6, v27, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v36, v5

    .line 471
    const/4 v5, 0x1

    const/4 v6, 0x2

    aget-byte v6, v27, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x3

    aget-byte v7, v27, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    aput v6, v36, v5

    .line 473
    const/4 v5, 0x2

    const/4 v6, 0x1

    aget v6, v36, v6

    const/4 v7, 0x0

    aget v7, v36, v7

    div-int/2addr v6, v7

    aput v6, v36, v5

    .line 475
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v8, v31

    .line 476
    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    goto/16 :goto_20

    .line 478
    .end local v8           #filePath:Ljava/lang/String;
    .end local v26           #ar:Landroid/os/AsyncResult;
    .end local v27           #data:[B
    .end local v33           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v34           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v36           #recordSize:[I
    .end local v38           #result:Lcom/android/internal/telephony/IccIoResult;
    .restart local v31       #filePath:Ljava/lang/String;
    :pswitch_145
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/AsyncResult;

    .line 479
    .restart local v26       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 480
    .restart local v34       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/internal/telephony/IccIoResult;

    .line 481
    .restart local v38       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v37, v0

    .line 483
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_17d

    .line 484
    const/4 v5, 0x0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v8, v31

    .line 485
    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    goto/16 :goto_20

    .line 488
    .end local v8           #filePath:Ljava/lang/String;
    .restart local v31       #filePath:Ljava/lang/String;
    :cond_17d
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v33

    .line 490
    .restart local v33       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v33, :cond_192

    .line 491
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object v2, v5

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v8, v31

    .line 492
    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    goto/16 :goto_20

    .line 495
    .end local v8           #filePath:Ljava/lang/String;
    .restart local v31       #filePath:Ljava/lang/String;
    :cond_192
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v27, v0

    .line 496
    .restart local v27       #data:[B
    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move v11, v0

    .line 497
    .local v11, fileid:I
    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v35, v0

    .line 499
    .local v35, recordNum:I
    const/4 v5, 0x4

    const/4 v6, 0x6

    aget-byte v6, v27, v6

    if-eq v5, v6, :cond_1af

    .line 500
    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5

    .line 503
    :cond_1af
    const/4 v5, 0x1

    const/16 v6, 0xd

    aget-byte v6, v27, v6

    if-eq v5, v6, :cond_1bc

    .line 504
    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5

    .line 507
    :cond_1bc
    const/16 v5, 0xe

    aget-byte v5, v27, v5

    and-int/lit16 v5, v5, 0xff

    move v0, v5

    move-object/from16 v1, v34

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 509
    const/4 v5, 0x2

    aget-byte v5, v27, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x3

    aget-byte v6, v27, v6

    and-int/lit16 v6, v6, 0xff

    add-int v15, v5, v6

    .line 512
    .local v15, size:I
    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move v5, v0

    div-int v5, v15, v5

    move v0, v5

    move-object/from16 v1, v34

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    .line 515
    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move v5, v0

    packed-switch v5, :pswitch_data_71a

    .line 533
    .end local p1
    :goto_1e9
    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    move v5, v0

    if-eqz v5, :cond_1ff

    .line 534
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    move v6, v0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 537
    :cond_1ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xb2

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move v7, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move v8, v0

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move v9, v0

    const/4 v10, 0x4

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move v11, v0

    .end local v11           #fileid:I
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x7

    move-object/from16 v0, p0

    move v1, v14

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-interface/range {v5 .. v14}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v8, v31

    .line 542
    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    goto/16 :goto_20

    .line 526
    .end local v8           #filePath:Ljava/lang/String;
    .restart local v11       #fileid:I
    .restart local v31       #filePath:Ljava/lang/String;
    .restart local p1
    :pswitch_237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    move v5, v0

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->lgeSetFDN_REC_NUM(I)V

    goto :goto_1e9

    .line 545
    .end local v11           #fileid:I
    .end local v15           #size:I
    .end local v26           #ar:Landroid/os/AsyncResult;
    .end local v27           #data:[B
    .end local v33           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v34           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v35           #recordNum:I
    .end local v38           #result:Lcom/android/internal/telephony/IccIoResult;
    .restart local p1
    :pswitch_24b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/AsyncResult;

    .line 546
    .restart local v26       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 548
    .restart local v34       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/internal/telephony/IccIoResult;

    .line 549
    .restart local v38       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v37, v0

    .line 551
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_283

    .line 552
    const/4 v5, 0x0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v8, v31

    .line 553
    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    goto/16 :goto_20

    .line 556
    .end local v8           #filePath:Ljava/lang/String;
    .restart local v31       #filePath:Ljava/lang/String;
    :cond_283
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v33

    .line 558
    .restart local v33       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v33, :cond_298

    .line 559
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object v2, v5

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v8, v31

    .line 560
    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    goto/16 :goto_20

    .line 563
    .end local v8           #filePath:Ljava/lang/String;
    .restart local v31       #filePath:Ljava/lang/String;
    :cond_298
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v27, v0

    .line 564
    .restart local v27       #data:[B
    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move v11, v0

    .line 565
    .restart local v11       #fileid:I
    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v35, v0

    .line 567
    .restart local v35       #recordNum:I
    const/4 v5, 0x4

    const/4 v6, 0x6

    aget-byte v6, v27, v6

    if-eq v5, v6, :cond_2b5

    .line 568
    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5

    .line 571
    :cond_2b5
    const/4 v5, 0x1

    const/16 v6, 0xd

    aget-byte v6, v27, v6

    if-eq v5, v6, :cond_2c2

    .line 572
    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5

    .line 575
    :cond_2c2
    const/16 v5, 0xe

    aget-byte v5, v27, v5

    and-int/lit16 v5, v5, 0xff

    move v0, v5

    move-object/from16 v1, v34

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    .line 577
    const/4 v5, 0x2

    aget-byte v5, v27, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x3

    aget-byte v6, v27, v6

    and-int/lit16 v6, v6, 0xff

    add-int v15, v5, v6

    .line 580
    .restart local v15       #size:I
    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move v5, v0

    div-int v5, v15, v5

    move v0, v5

    move-object/from16 v1, v34

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    .line 582
    const/4 v5, 0x0

    shr-int/lit8 v6, v11, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v29, v5

    .line 583
    const/4 v5, 0x1

    and-int/lit16 v6, v11, 0xff

    int-to-byte v6, v6

    aput-byte v6, v29, v5

    .line 584
    move-object/from16 v0, v39

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_309
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_309} :catch_f9

    move-result-object v8

    .line 588
    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    :try_start_30a
    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    move v5, v0

    if-eqz v5, :cond_334

    .line 589
    const/16 v41, 0x0

    .line 590
    .local v41, totAdnRecNum:I
    const/16 v32, 0x0

    .local v32, i:I
    :goto_315
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getValidADNNum()I

    move-result v5

    move/from16 v0, v32

    move v1, v5

    if-ge v0, v1, :cond_327

    .line 592
    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/gsm/SIMRecords;->getADNsRecNum(I)I

    move-result v5

    add-int v41, v41, v5

    .line 590
    add-int/lit8 v32, v32, 0x1

    goto :goto_315

    .line 594
    :cond_327
    new-instance v5, Ljava/util/ArrayList;

    move-object v0, v5

    move/from16 v1, v41

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    .line 598
    .end local v32           #i:I
    .end local v41           #totAdnRecNum:I
    :cond_334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xb2

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move v7, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move v9, v0

    const/4 v10, 0x4

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move v11, v0

    .end local v11           #fileid:I
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xc

    move-object/from16 v0, p0

    move v1, v14

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-interface/range {v5 .. v14}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_35d
    .catch Ljava/lang/Exception; {:try_start_30a .. :try_end_35d} :catch_35f

    goto/16 :goto_20

    .line 769
    .end local v15           #size:I
    .end local v27           #data:[B
    .end local v35           #recordNum:I
    :catch_35f
    move-exception v5

    move-object/from16 v30, v5

    goto/16 :goto_fe

    .line 606
    .end local v8           #filePath:Ljava/lang/String;
    .end local v26           #ar:Landroid/os/AsyncResult;
    .end local v33           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v34           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v38           #result:Lcom/android/internal/telephony/IccIoResult;
    .restart local v31       #filePath:Ljava/lang/String;
    :pswitch_364
    :try_start_364
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/AsyncResult;

    .line 607
    .restart local v26       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    check-cast v0, Landroid/os/Message;

    move-object/from16 v37, v0

    .line 608
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/internal/telephony/IccIoResult;

    .line 610
    .restart local v38       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_39a

    .line 611
    const/4 v5, 0x0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v8, v31

    .line 612
    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    goto/16 :goto_20

    .line 615
    .end local v8           #filePath:Ljava/lang/String;
    .restart local v31       #filePath:Ljava/lang/String;
    :cond_39a
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v33

    .line 617
    .restart local v33       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v33, :cond_3af

    .line 618
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object v2, v5

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v8, v31

    .line 619
    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    goto/16 :goto_20

    .line 622
    .end local v8           #filePath:Ljava/lang/String;
    .restart local v31       #filePath:Ljava/lang/String;
    :cond_3af
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object/from16 v27, v0

    .line 624
    .restart local v27       #data:[B
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v11, v0

    .line 626
    .restart local v11       #fileid:I
    const/4 v5, 0x4

    const/4 v6, 0x6

    aget-byte v6, v27, v6

    if-eq v5, v6, :cond_3c6

    .line 627
    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5

    .line 630
    :cond_3c6
    const/16 v5, 0xd

    aget-byte v5, v27, v5

    if-eqz v5, :cond_3d2

    .line 631
    new-instance v5, Lcom/android/internal/telephony/IccFileTypeMismatch;

    invoke-direct {v5}, Lcom/android/internal/telephony/IccFileTypeMismatch;-><init>()V

    throw v5

    .line 634
    :cond_3d2
    const/4 v5, 0x2

    aget-byte v5, v27, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x3

    aget-byte v6, v27, v6

    and-int/lit16 v6, v6, 0xff

    add-int v15, v5, v6

    .line 637
    .restart local v15       #size:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v5, v0

    iget-object v9, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v10, 0xb0

    move-object/from16 v0, p0

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v11

    move v3, v6

    move-object/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    invoke-interface/range {v9 .. v18}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v8, v31

    .line 641
    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    goto/16 :goto_20

    .line 645
    .end local v8           #filePath:Ljava/lang/String;
    .end local v11           #fileid:I
    .end local v15           #size:I
    .end local v26           #ar:Landroid/os/AsyncResult;
    .end local v27           #data:[B
    .end local v33           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v38           #result:Lcom/android/internal/telephony/IccIoResult;
    .restart local v31       #filePath:Ljava/lang/String;
    :pswitch_40a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/AsyncResult;

    .line 646
    .restart local v26       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 647
    .restart local v34       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/internal/telephony/IccIoResult;

    .line 648
    .restart local v38       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v37, v0

    .line 650
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_442

    .line 651
    const/4 v5, 0x0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v8, v31

    .line 652
    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    goto/16 :goto_20

    .line 655
    .end local v8           #filePath:Ljava/lang/String;
    .restart local v31       #filePath:Ljava/lang/String;
    :cond_442
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v33

    .line 657
    .restart local v33       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v33, :cond_457

    .line 658
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object v2, v5

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v8, v31

    .line 659
    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    goto/16 :goto_20

    .line 662
    .end local v8           #filePath:Ljava/lang/String;
    .restart local v31       #filePath:Ljava/lang/String;
    :cond_457
    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    move v5, v0

    if-nez v5, :cond_471

    .line 663
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v8, v31

    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    goto/16 :goto_20

    .line 665
    .end local v8           #filePath:Ljava/lang/String;
    .restart local v31       #filePath:Ljava/lang/String;
    :cond_471
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, v34

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    .line 669
    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move v5, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    move v6, v0

    if-le v5, v6, :cond_4a9

    .line 670
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v8, v31

    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    goto/16 :goto_20

    .line 672
    .end local v8           #filePath:Ljava/lang/String;
    .restart local v31       #filePath:Ljava/lang/String;
    :cond_4a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0xb2

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v18, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/4 v5, 0x7

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    invoke-interface/range {v16 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    move-object/from16 v8, v31

    .line 680
    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    goto/16 :goto_20

    .line 684
    .end local v8           #filePath:Ljava/lang/String;
    .end local v26           #ar:Landroid/os/AsyncResult;
    .end local v33           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v34           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v38           #result:Lcom/android/internal/telephony/IccIoResult;
    .restart local v31       #filePath:Ljava/lang/String;
    :pswitch_4ea
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/AsyncResult;

    .line 685
    .restart local v26       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    .line 686
    .restart local v34       #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/internal/telephony/IccIoResult;

    .line 687
    .restart local v38       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->onLoaded:Landroid/os/Message;

    move-object/from16 v37, v0

    .line 689
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_522

    .line 690
    const/4 v5, 0x0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v8, v31

    .line 691
    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    goto/16 :goto_20

    .line 694
    .end local v8           #filePath:Ljava/lang/String;
    .restart local v31       #filePath:Ljava/lang/String;
    :cond_522
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v33

    .line 696
    .restart local v33       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v33, :cond_537

    .line 697
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object v2, v5

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v8, v31

    .line 698
    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    goto/16 :goto_20

    .line 701
    .end local v8           #filePath:Ljava/lang/String;
    .restart local v31       #filePath:Ljava/lang/String;
    :cond_537
    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->loadAll:Z

    move v5, v0

    if-nez v5, :cond_551

    .line 702
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v8, v31

    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    goto/16 :goto_20

    .line 704
    .end local v8           #filePath:Ljava/lang/String;
    .restart local v31       #filePath:Ljava/lang/String;
    :cond_551
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, v34

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    .line 708
    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move v5, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    move v6, v0

    if-le v5, v6, :cond_626

    .line 709
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getValidADNNum()I

    move-result v5

    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getCountADN()I

    move-result v6

    if-le v5, v6, :cond_60c

    .line 710
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v34

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    .line 711
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getCountADN()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEF_ADNs(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v34

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .line 712
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getCountADN()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->getADNsRecNum(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v34

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->countRecords:I

    .line 714
    const/4 v5, 0x0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move v6, v0

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v29, v5

    .line 715
    const/4 v5, 0x1

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move v6, v0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v29, v5

    .line 716
    move-object/from16 v0, v39

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5cc
    .catch Ljava/lang/Exception; {:try_start_364 .. :try_end_5cc} :catch_f9

    move-result-object v8

    .line 720
    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    :try_start_5cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0xb2

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v18, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v5, 0xc

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    move-object/from16 v19, v8

    invoke-interface/range {v16 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 725
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getCountADN()I

    move-result v40

    .line 726
    .local v40, temp_getCountADN:I
    add-int/lit8 v40, v40, 0x1

    .line 727
    invoke-static/range {v40 .. v40}, Lcom/android/internal/telephony/gsm/SIMRecords;->setCountADN(I)V
    :try_end_60a
    .catch Ljava/lang/Exception; {:try_start_5cd .. :try_end_60a} :catch_35f

    goto/16 :goto_20

    .line 729
    .end local v8           #filePath:Ljava/lang/String;
    .end local v40           #temp_getCountADN:I
    .restart local v31       #filePath:Ljava/lang/String;
    :cond_60c
    const/16 v5, 0x6f3a

    :try_start_60e
    move v0, v5

    move-object/from16 v1, v34

    iput v0, v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    .line 730
    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->results:Ljava/util/ArrayList;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v8, v31

    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    goto/16 :goto_20

    .line 733
    .end local v8           #filePath:Ljava/lang/String;
    .restart local v31       #filePath:Ljava/lang/String;
    :cond_626
    const/4 v5, 0x0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move v6, v0

    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v29, v5

    .line 734
    const/4 v5, 0x1

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move v6, v0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v29, v5

    .line 735
    move-object/from16 v0, v39

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    invoke-static/range {v29 .. v29}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_652
    .catch Ljava/lang/Exception; {:try_start_60e .. :try_end_652} :catch_f9

    move-result-object v8

    .line 738
    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    :try_start_653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v16, v0

    const/16 v17, 0xb2

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->efid:I

    move/from16 v18, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordNum:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;->recordSize:I

    move/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v5, 0xc

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    move-object/from16 v19, v8

    invoke-interface/range {v16 .. v25}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    :try_end_687
    .catch Ljava/lang/Exception; {:try_start_653 .. :try_end_687} :catch_35f

    goto/16 :goto_20

    .line 750
    .end local v8           #filePath:Ljava/lang/String;
    .end local v26           #ar:Landroid/os/AsyncResult;
    .end local v33           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v34           #lc:Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;
    .end local v38           #result:Lcom/android/internal/telephony/IccIoResult;
    .restart local v31       #filePath:Ljava/lang/String;
    :pswitch_689
    :try_start_689
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/AsyncResult;

    .line 751
    .restart local v26       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    check-cast v0, Landroid/os/Message;

    move-object/from16 v37, v0

    .line 752
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/internal/telephony/IccIoResult;

    .line 754
    .restart local v38       #result:Lcom/android/internal/telephony/IccIoResult;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v5, v0

    if-eqz v5, :cond_6bf

    .line 755
    const/4 v5, 0x0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v8, v31

    .line 756
    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    goto/16 :goto_20

    .line 759
    .end local v8           #filePath:Ljava/lang/String;
    .restart local v31       #filePath:Ljava/lang/String;
    :cond_6bf
    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/telephony/IccIoResult;->getException()Lcom/android/internal/telephony/IccException;

    move-result-object v33

    .line 761
    .restart local v33       #iccException:Lcom/android/internal/telephony/IccException;
    if-eqz v33, :cond_6d4

    .line 762
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object v2, v5

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    move-object/from16 v8, v31

    .line 763
    .end local v31           #filePath:Ljava/lang/String;
    .restart local v8       #filePath:Ljava/lang/String;
    goto/16 :goto_20

    .line 766
    .end local v8           #filePath:Ljava/lang/String;
    .restart local v31       #filePath:Ljava/lang/String;
    :cond_6d4
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_6e3
    .catch Ljava/lang/Exception; {:try_start_689 .. :try_end_6e3} :catch_f9

    goto/16 :goto_1e

    .line 773
    .end local v26           #ar:Landroid/os/AsyncResult;
    .end local v31           #filePath:Ljava/lang/String;
    .end local v33           #iccException:Lcom/android/internal/telephony/IccException;
    .end local v38           #result:Lcom/android/internal/telephony/IccIoResult;
    .end local p1
    .restart local v8       #filePath:Ljava/lang/String;
    .restart local v30       #exc:Ljava/lang/Exception;
    :cond_6e5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uncaught exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_20

    .line 423
    nop

    :pswitch_data_704
    .packed-switch 0x4
        :pswitch_364
        :pswitch_689
        :pswitch_145
        :pswitch_40a
        :pswitch_93
        :pswitch_21
        :pswitch_5b
        :pswitch_24b
        :pswitch_4ea
    .end packed-switch

    .line 515
    :pswitch_data_71a
    .packed-switch 0x6f3b
        :pswitch_237
    .end packed-switch
.end method

.method public lgeIccgetEFADNLinearRecordSize(ILandroid/os/Message;)V
    .registers 3
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 240
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/IccFileHandler;->getEFADNLinearRecordSize(ILandroid/os/Message;)V

    .line 241
    return-void
.end method

.method loadEFADNLinearFixedAll(ILandroid/os/Message;)V
    .registers 20
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    .line 262
    const/4 v6, 0x0

    .line 265
    .local v6, filePath:Ljava/lang/String;
    const/16 v16, 0x0

    .line 266
    .local v16, temp_getCountADN:I
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->setCountADN(I)V

    .line 268
    const/16 v3, 0x6f3a

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_50

    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getValidADNNum()I

    move-result v3

    if-lez v3, :cond_50

    .line 270
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getCountADN()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SIMRecords;->getEF_ADNs(I)I

    move-result p1

    .line 271
    invoke-static {}, Lcom/android/internal/telephony/gsm/SIMRecords;->getCountADN()I

    move-result v16

    .line 272
    add-int/lit8 v16, v16, 0x1

    .line 273
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/SIMRecords;->setCountADN(I)V

    .line 275
    new-instance v15, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-direct {v15, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 276
    .local v15, tPath:Ljava/lang/StringBuilder;
    const-string v13, "3F007F105F3A"

    .line 277
    .local v13, df:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v14, v3, [B

    .line 278
    .local v14, ef:[B
    const/4 v3, 0x0

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v14, v3

    .line 279
    const/4 v3, 0x1

    move/from16 v0, p1

    and-int/lit16 v0, v0, 0xff

    move v4, v0

    int-to-byte v4, v4

    aput-byte v4, v14, v3

    .line 280
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 285
    .end local v13           #df:Ljava/lang/String;
    .end local v14           #ef:[B
    .end local v15           #tPath:Ljava/lang/StringBuilder;
    :cond_50
    const/16 v3, 0xb

    new-instance v4, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    move-object v0, v4

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    move-object/from16 v0, p0

    move v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 288
    .local v12, response:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0xc0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v5, p1

    invoke-interface/range {v3 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 290
    return-void
.end method

.method public loadEFImgLinearFixed(ILandroid/os/Message;)V
    .registers 13
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/16 v2, 0x4f20

    .line 177
    const/16 v0, 0x9

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 183
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    const-string v3, "img"

    const/4 v5, 0x4

    const/16 v6, 0xa

    move v4, p1

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 186
    return-void
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .registers 16
    .parameter "fileid"
    .parameter "highOffset"
    .parameter "lowOffset"
    .parameter "length"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    .line 328
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p5}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 331
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb0

    const-string v3, "img"

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 333
    return-void
.end method

.method public loadEFLinearFixed(IILandroid/os/Message;)V
    .registers 14
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 156
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(IILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 163
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 165
    return-void
.end method

.method public loadEFLinearFixedAll(ILandroid/os/Message;)V
    .registers 13
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 253
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/IccFileHandler$LoadLinearFixedContext;-><init>(ILandroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 256
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 258
    return-void
.end method

.method public loadEFTransparent(ILandroid/os/Message;)V
    .registers 13
    .parameter "fileid"
    .parameter "onLoaded"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 307
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, v4, p2}, Lcom/android/internal/telephony/IccFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 312
    .local v9, response:Landroid/os/Message;
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xf

    move v2, p1

    move v5, v4

    move-object v8, v7

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 314
    return-void
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method updateEFADNLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .registers 20
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "data"
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 355
    new-instance v13, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 356
    .local v13, tPath:Ljava/lang/StringBuilder;
    const-string v11, "3F007F105F3A"

    .line 357
    .local v11, df:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v12, v1, [B

    .line 358
    .local v12, ef:[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v12, v1

    .line 359
    const/4 v1, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v12, v1

    .line 360
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-static {v12}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 366
    .local v4, filePath:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xdc

    const/4 v6, 0x4

    move-object/from16 v0, p3

    array-length v0, v0

    move v7, v0

    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    move v3, p1

    move/from16 v5, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-interface/range {v1 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 369
    return-void
.end method

.method public updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    .registers 16
    .parameter "fileid"
    .parameter "recordNum"
    .parameter "data"
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xdc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    array-length v6, p3

    invoke-static {p3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    move v2, p1

    move v4, p2

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 349
    return-void
.end method

.method public updateEFTransparent(I[BLandroid/os/Message;)V
    .registers 14
    .parameter "fileid"
    .parameter "data"
    .parameter "onComplete"

    .prologue
    const/4 v4, 0x0

    .line 377
    iget-object v0, p0, Lcom/android/internal/telephony/IccFileHandler;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xd6

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v3

    array-length v6, p2

    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move v2, p1

    move v5, v4

    move-object v9, p3

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/CommandsInterface;->iccIO(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 380
    return-void
.end method
