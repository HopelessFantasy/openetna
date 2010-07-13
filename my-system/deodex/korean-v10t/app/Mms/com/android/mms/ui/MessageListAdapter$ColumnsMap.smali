.class final Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ColumnsMap"
.end annotation


# instance fields
.field mColumnMmsDate:I

.field mColumnMmsDeliveryReport:I

.field mColumnMmsErrorType:I

.field mColumnMmsMessageBox:I

.field mColumnMmsMessageType:I

.field mColumnMmsRead:I

.field mColumnMmsReadReport:I

.field mColumnMmsSubject:I

.field mColumnMmsSubjectCharset:I

.field mColumnMsgId:I

.field mColumnMsgType:I

.field mColumnSmsAddress:I

.field mColumnSmsBody:I

.field mColumnSmsDate:I

.field mColumnSmsRead:I

.field mColumnSmsStatus:I

.field mColumnSmsSubject:I

.field mColumnSmsType:I

.field mColumnWapServiceDoc:I

.field mColumnWapServiceMac:I

.field mColumnWapServiceMsgType:I

.field mColumnWapServiceSec:I

.field final synthetic this$0:Lcom/android/mms/ui/MessageListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListAdapter;)V
    .registers 3
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    .line 250
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    .line 251
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    .line 252
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    .line 253
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    .line 254
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsRead:I

    .line 255
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    .line 256
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsStatus:I

    .line 257
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubject:I

    .line 258
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubjectCharset:I

    .line 259
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDate:I

    .line 260
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsRead:I

    .line 261
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageType:I

    .line 262
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    .line 263
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDeliveryReport:I

    .line 264
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReadReport:I

    .line 265
    const/16 v0, 0x11

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsErrorType:I

    .line 267
    const/16 v0, 0x12

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsSubject:I

    .line 268
    const/16 v0, 0x13

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWapServiceMsgType:I

    .line 269
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWapServiceMac:I

    .line 270
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWapServiceSec:I

    .line 271
    const/16 v0, 0x16

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWapServiceDoc:I

    .line 273
    return-void
.end method

.method constructor <init>(Lcom/android/mms/ui/MessageListAdapter;Landroid/database/Cursor;)V
    .registers 6
    .parameter
    .parameter "cursor"

    .prologue
    const-string v1, "read"

    const-string v1, "date"

    const-string v2, "colsMap"

    .line 275
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    :try_start_b
    const-string v1, "transport_type"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_13} :catch_bc

    .line 286
    :goto_13
    :try_start_13
    const-string v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_1b} :catch_c9

    .line 292
    :goto_1b
    :try_start_1b
    const-string v1, "address"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_23} :catch_d6

    .line 298
    :goto_23
    :try_start_23
    const-string v1, "body"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_2b} :catch_e3

    .line 304
    :goto_2b
    :try_start_2b
    const-string v1, "date"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I
    :try_end_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_33} :catch_f0

    .line 310
    :goto_33
    :try_start_33
    const-string v1, "read"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsRead:I
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33 .. :try_end_3b} :catch_fd

    .line 316
    :goto_3b
    :try_start_3b
    const-string v1, "type"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I
    :try_end_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b .. :try_end_43} :catch_10a

    .line 322
    :goto_43
    :try_start_43
    const-string v1, "status"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsStatus:I
    :try_end_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_43 .. :try_end_4b} :catch_117

    .line 328
    :goto_4b
    :try_start_4b
    const-string v1, "sub"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubject:I
    :try_end_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4b .. :try_end_53} :catch_124

    .line 334
    :goto_53
    :try_start_53
    const-string v1, "sub_cs"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubjectCharset:I
    :try_end_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_53 .. :try_end_5b} :catch_131

    .line 340
    :goto_5b
    :try_start_5b
    const-string v1, "date"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDate:I
    :try_end_63
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5b .. :try_end_63} :catch_13e

    .line 346
    :goto_63
    :try_start_63
    const-string v1, "read"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsRead:I
    :try_end_6b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_63 .. :try_end_6b} :catch_14b

    .line 352
    :goto_6b
    :try_start_6b
    const-string v1, "m_type"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageType:I
    :try_end_73
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6b .. :try_end_73} :catch_158

    .line 358
    :goto_73
    :try_start_73
    const-string v1, "msg_box"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I
    :try_end_7b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_73 .. :try_end_7b} :catch_165

    .line 364
    :goto_7b
    :try_start_7b
    const-string v1, "d_rpt"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDeliveryReport:I
    :try_end_83
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7b .. :try_end_83} :catch_172

    .line 370
    :goto_83
    :try_start_83
    const-string v1, "rr"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReadReport:I
    :try_end_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_83 .. :try_end_8b} :catch_17f

    .line 376
    :goto_8b
    :try_start_8b
    const-string v1, "err_type"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsErrorType:I
    :try_end_93
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8b .. :try_end_93} :catch_18c

    .line 383
    :goto_93
    :try_start_93
    const-string v1, "subject"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsSubject:I
    :try_end_9b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_93 .. :try_end_9b} :catch_199

    .line 389
    :goto_9b
    :try_start_9b
    const-string v1, "lgeMsgType"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWapServiceMsgType:I
    :try_end_a3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9b .. :try_end_a3} :catch_1a6

    .line 395
    :goto_a3
    :try_start_a3
    const-string v1, "lgeMac"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWapServiceMac:I
    :try_end_ab
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a3 .. :try_end_ab} :catch_1b3

    .line 401
    :goto_ab
    :try_start_ab
    const-string v1, "lgeSec"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWapServiceSec:I
    :try_end_b3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ab .. :try_end_b3} :catch_1c0

    .line 407
    :goto_b3
    :try_start_b3
    const-string v1, "lgeDoc"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWapServiceDoc:I
    :try_end_bb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b3 .. :try_end_bb} :catch_1cd

    .line 412
    :goto_bb
    return-void

    .line 281
    :catch_bc
    move-exception v1

    move-object v0, v1

    .line 282
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    .line 287
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_c9
    move-exception v1

    move-object v0, v1

    .line 288
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 293
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_d6
    move-exception v1

    move-object v0, v1

    .line 294
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23

    .line 299
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_e3
    move-exception v1

    move-object v0, v1

    .line 300
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 305
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_f0
    move-exception v1

    move-object v0, v1

    .line 306
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33

    .line 311
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_fd
    move-exception v1

    move-object v0, v1

    .line 312
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3b

    .line 317
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_10a
    move-exception v1

    move-object v0, v1

    .line 318
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_43

    .line 323
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_117
    move-exception v1

    move-object v0, v1

    .line 324
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4b

    .line 329
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_124
    move-exception v1

    move-object v0, v1

    .line 330
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_53

    .line 335
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_131
    move-exception v1

    move-object v0, v1

    .line 336
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5b

    .line 341
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_13e
    move-exception v1

    move-object v0, v1

    .line 342
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_63

    .line 347
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_14b
    move-exception v1

    move-object v0, v1

    .line 348
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6b

    .line 353
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_158
    move-exception v1

    move-object v0, v1

    .line 354
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_73

    .line 359
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_165
    move-exception v1

    move-object v0, v1

    .line 360
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7b

    .line 365
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_172
    move-exception v1

    move-object v0, v1

    .line 366
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_83

    .line 371
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_17f
    move-exception v1

    move-object v0, v1

    .line 372
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8b

    .line 377
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_18c
    move-exception v1

    move-object v0, v1

    .line 378
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_93

    .line 384
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_199
    move-exception v1

    move-object v0, v1

    .line 385
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9b

    .line 390
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1a6
    move-exception v1

    move-object v0, v1

    .line 391
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a3

    .line 396
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1b3
    move-exception v1

    move-object v0, v1

    .line 397
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ab

    .line 402
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1c0
    move-exception v1

    move-object v0, v1

    .line 403
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b3

    .line 408
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1cd
    move-exception v1

    move-object v0, v1

    .line 409
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v1, "colsMap"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_bb
.end method
