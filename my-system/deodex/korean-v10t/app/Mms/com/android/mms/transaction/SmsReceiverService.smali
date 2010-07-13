.class public Lcom/android/mms/transaction/SmsReceiverService;
.super Landroid/app/Service;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_ONALARM:Ljava/lang/String; = "android.intent.action.ACTION_ONALARM"

.field public static final CLASS_ZERO_ADDRESS_KEY:Ljava/lang/String; = "CLASS_ZERO_ADDRESS"

.field public static final CLASS_ZERO_BODY_KEY:Ljava/lang/String; = "CLASS_ZERO_BODY"

.field public static final CLASS_ZERO_DATE_KEY:Ljava/lang/String; = "CLASS_ZERO_DATE"

.field public static final CLASS_ZERO_LGE_KEY:Ljava/lang/String; = "CLASS_ZERO_LGE"

.field public static final CLASS_ZERO_PID_KEY:Ljava/lang/String; = "CLASS_ZERO_PID"

.field public static final CLASS_ZERO_REPLYPATH_KEY:Ljava/lang/String; = "CLASS_ZERO_REPLYPATH"

.field public static final CLASS_ZERO_SCADRESS_KEY:Ljava/lang/String; = "CLASS_ZERO_SCADRESS"

.field public static final CLASS_ZERO_TITLE_KEY:Ljava/lang/String; = "CLASS_ZERO_TITLE"

.field public static final GPSON_SMS_RECEIVED:Ljava/lang/String; = "com.android.mms.transaction.GPSONSMS_RECEIVED"

.field public static final GPSRESULT_RECEIVED:Ljava/lang/String; = "com.lge.gps.GPSRESULT_RECEIVED"

.field public static final GPSSMS_SENTACK_NOTIFIED:Ljava/lang/String; = "com.android.mms.transaction.GPSSENTACK_NOTIFIED"

.field public static final GPS_SMS_BODY:Ljava/lang/String; = "AT%GPS"

.field public static final MESSAGE_SENT_ACTION:Ljava/lang/String; = "com.android.mms.transaction.MESSAGE_SENT"

.field private static final MSG_FDN_ERROR:I = 0x2

.field private static final MSG_RADIO_ERROR:I = 0x1

.field public static final NOTIFICATION_NEW_MESSAGE:I = 0x1

.field private static final REPLACE_COLUMN_ID:I = 0x0

.field private static final REPLACE_PROJECTION:[Ljava/lang/String; = null

.field private static final SEND_COLUMN_ADDRESS:I = 0x2

.field private static final SEND_COLUMN_BODY:I = 0x3

.field private static final SEND_COLUMN_ID:I = 0x0

.field private static final SEND_COLUMN_THREAD_ID:I = 0x1

.field private static final SEND_PROJECTION:[Ljava/lang/String; = null

.field public static final STATE_IN_SERVICE:I = 0x0

.field public static final STATE_OUT_OF_SERVICE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SmsReceiverService"

.field private static cbNumberInSim:I

.field public static mCurSender:Ljava/lang/String;

.field private static mPowerManager:Landroid/os/PowerManager;

.field private static mState:I

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private mResultCode:I

.field private mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field public mToastHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v6, "_id"

    .line 92
    const-string v0, "1234567890"

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->mCurSender:Ljava/lang/String;

    .line 99
    sput v2, Lcom/android/mms/transaction/SmsReceiverService;->mState:I

    .line 121
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v2

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "body"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    .line 145
    const/4 v0, -0x1

    sput v0, Lcom/android/mms/transaction/SmsReceiverService;->cbNumberInSim:I

    .line 494
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v6, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v2

    const-string v1, "protocol"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->REPLACE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 131
    new-instance v0, Lcom/android/mms/transaction/SmsReceiverService$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/SmsReceiverService$1;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    .line 191
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleAlarmSent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsSent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/SmsReceiverService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleGpsResultReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/transaction/SmsReceiverService;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->sendOtherSmsWorker([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private displayClassZeroMessage(Landroid/content/Context;Landroid/telephony/SmsMessage;)V
    .registers 7
    .parameter "context"
    .parameter "sms"

    .prologue
    .line 746
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "CLASS_ZERO_BODY"

    invoke-virtual {p2}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x1800

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 751
    .local v0, smsDialogIntent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 752
    return-void
.end method

.method private displayLGEClassZeroMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)V
    .registers 10
    .parameter "context"
    .parameter "msgs"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 763
    aget-object v0, p2, v5

    .line 764
    .local v0, sms:Landroid/telephony/SmsMessage;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "CLASS_ZERO_BODY"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "CLASS_ZERO_ADDRESS"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "CLASS_ZERO_PID"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "CLASS_ZERO_REPLYPATH"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v4

    if-eqz v4, :cond_5f

    move v4, v6

    :goto_32
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "CLASS_ZERO_SCADRESS"

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "CLASS_ZERO_LGE"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "CLASS_ZERO_DATE"

    new-instance v4, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x1800

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 774
    .local v1, smsDialogIntent:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 775
    return-void

    .end local v1           #smsDialogIntent:Landroid/content/Intent;
    :cond_5f
    move v4, v5

    .line 764
    goto :goto_32
.end method

.method private extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .registers 9
    .parameter "sms"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "address"

    .line 706
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 711
    .local v0, values:Landroid/content/ContentValues;
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KTF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v6, :cond_7f

    .line 712
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginReplyAddress()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_75

    .line 713
    const-string v1, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginReplyAddressNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    :goto_24
    const-string v1, "date"

    new-instance v2, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 727
    const-string v1, "protocol"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 728
    const-string v1, "read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 729
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5b

    .line 730
    const-string v1, "subject"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :cond_5b
    const-string v1, "reply_path_present"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v2

    if-eqz v2, :cond_89

    move v2, v6

    :goto_64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 733
    const-string v1, "service_center"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    return-object v0

    .line 715
    :cond_75
    const-string v1, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 718
    :cond_7f
    const-string v1, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :cond_89
    move v2, v5

    .line 732
    goto :goto_64
.end method

.method private getNumberLength(Ljava/lang/String;)I
    .registers 5
    .parameter "number"

    .prologue
    .line 505
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 506
    .local v1, numberLength:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_16

    .line 507
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_13

    move v2, v0

    .line 511
    :goto_12
    return v2

    .line 506
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_16
    move v2, v1

    .line 511
    goto :goto_12
.end method

.method private handleAlarmSent(Landroid/content/Intent;)V
    .registers 13
    .parameter "intent"

    .prologue
    const-wide/16 v8, 0x0

    const-string v10, "android.permission.RECEIVE_SMS"

    .line 239
    const-string v6, "SmsReceiverService"

    const-string v7, "handleAlarmSent()"

    invoke-static {v6, v7}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KTF"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_44

    .line 241
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "device_storage_freememory"

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 243
    .local v0, free:J
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "device_storage_threshold"

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 245
    .local v4, threshold:J
    cmp-long v6, v0, v4

    if-lez v6, :cond_45

    .line 246
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.provider.Telephony.STORAGE_OK"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v3, okintent:Landroid/content/Intent;
    const-string v6, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v3, v10}, Lcom/android/mms/transaction/SmsReceiverService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 253
    .end local v0           #free:J
    .end local v3           #okintent:Landroid/content/Intent;
    .end local v4           #threshold:J
    :cond_44
    :goto_44
    return-void

    .line 249
    .restart local v0       #free:J
    .restart local v4       #threshold:J
    :cond_45
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.provider.Telephony.STORAGE_FULL"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v2, fullintent:Landroid/content/Intent;
    const-string v6, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v2, v10}, Lcom/android/mms/transaction/SmsReceiverService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_44
.end method

.method private handleBootCompleted()V
    .registers 1

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->moveOutboxMessagesToQueuedBox()V

    .line 429
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 430
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;)V

    .line 431
    return-void
.end method

.method private handleGpsResultReceived(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const-string v4, "SmsReceiverService"

    .line 435
    const-string v2, "msgText"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, msgText:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "1234567890"

    aput-object v2, v0, v5

    .line 442
    .local v0, dests:[Ljava/lang/String;
    const-string v2, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GPS-SMS]GPS passed sms body ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const-string v2, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GPS-SMS]GPS passed sms body length ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const-string v2, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GPS-SMS]GPS send receipient number ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/transaction/SmsReceiverService$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/transaction/SmsReceiverService$2;-><init>(Lcom/android/mms/transaction/SmsReceiverService;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 451
    return-void
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .registers 11
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    .line 257
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v3

    .line 258
    .local v3, serviceState:Landroid/telephony/ServiceState;
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_48

    .line 259
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 261
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KTF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v8, :cond_48

    .line 262
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_ONALARM"

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/android/mms/transaction/SmsReceiverService;

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v2, service:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x4000

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 266
    .local v1, operation:Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 268
    .local v0, am:Landroid/app/AlarmManager;
    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v8, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 272
    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #operation:Landroid/app/PendingIntent;
    .end local v2           #service:Landroid/content/Intent;
    :cond_48
    return-void
.end method

.method private handleSmsReceived(Landroid/content/Intent;)V
    .registers 9
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const-string v6, "SmsReceiverService"

    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, bIsCBS:I
    const/4 v2, 0x0

    .line 376
    .local v2, msgs:[Landroid/telephony/SmsMessage;
    const-string v3, "isCbs"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 377
    const-string v3, "SmsReceiverService"

    const-string v3, "handleSmsReceived()- Message received"

    invoke-static {v6, v3}, Lcom/android/mms/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    if-nez v0, :cond_5d

    .line 379
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v2

    .line 380
    const-string v3, "SmsReceiverService"

    const-string v3, "handleSmsReceived()-This is a SMS Message"

    invoke-static {v6, v3}, Lcom/android/mms/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_20
    :goto_20
    if-eqz v0, :cond_2d

    if-ne v0, v5, :cond_5c

    sget v3, Lcom/android/mms/transaction/SmsReceiverService;->cbNumberInSim:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5c

    sget v3, Lcom/android/mms/transaction/SmsReceiverService;->mState:I

    if-nez v3, :cond_5c

    .line 389
    :cond_2d
    invoke-direct {p0, p0, v2}, Lcom/android/mms/transaction/SmsReceiverService;->insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v1

    .line 391
    .local v1, messageUri:Landroid/net/Uri;
    if-eqz v1, :cond_67

    .line 392
    invoke-static {p0, v5}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;Z)V

    .line 394
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/mms/transaction/SmsReceiverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/PowerManager;

    sput-object p0, Lcom/android/mms/transaction/SmsReceiverService;->mPowerManager:Landroid/os/PowerManager;

    .line 396
    sget-object v3, Lcom/android/mms/transaction/SmsReceiverService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_51

    .line 397
    sget-object v3, Lcom/android/mms/transaction/SmsReceiverService;->mPowerManager:Landroid/os/PowerManager;

    const v4, 0x3000001a

    const-string v5, "MMS Noti"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    sput-object v3, Lcom/android/mms/transaction/SmsReceiverService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 404
    :cond_51
    sget-object v3, Lcom/android/mms/transaction/SmsReceiverService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_5c

    .line 405
    sget-object v3, Lcom/android/mms/transaction/SmsReceiverService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 425
    .end local v1           #messageUri:Landroid/net/Uri;
    :cond_5c
    :goto_5c
    return-void

    .line 381
    .restart local p0
    :cond_5d
    if-ne v0, v5, :cond_20

    .line 383
    const-string v3, "SmsReceiverService"

    const-string v3, "handleSmsReceived()-This is a CBS Message"

    invoke-static {v6, v3}, Lcom/android/mms/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    .line 419
    .restart local v1       #messageUri:Landroid/net/Uri;
    :cond_67
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->fullMessageIndicator(Landroid/content/Context;)V

    goto :goto_5c
.end method

.method private handleSmsSent(Landroid/content/Intent;)V
    .registers 11
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x5

    const/4 v5, 0x2

    const-string v4, "SmsReceiverService"

    .line 310
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 313
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_5c

    .line 315
    const-string v2, "SmsReceiverService"

    const-string v2, "handleSmsSent() : uri != null"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    if-ne v2, v7, :cond_21

    .line 318
    invoke-static {p0, v1, v5}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;I)Z

    .line 319
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 323
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateSendFailedNotification(Landroid/content/Context;)V

    .line 369
    :goto_20
    return-void

    .line 325
    :cond_21
    iget v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    if-eq v2, v5, :cond_2a

    iget v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3c

    .line 327
    :cond_2a
    const/4 v2, 0x6

    invoke-static {p0, v1, v2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;I)Z

    .line 328
    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_20

    .line 330
    :cond_3c
    iget v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    if-ne v2, v6, :cond_4e

    .line 331
    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_20

    .line 335
    :cond_4e
    invoke-static {p0, v1, v6}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;I)Z

    .line 336
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    .line 337
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    goto :goto_20

    .line 344
    :cond_5c
    const-string v2, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GPS-SMS]handleSmsSent() : uri == null ResultCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.mms.transaction.GPSSENTACK_NOTIFIED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, gpsAckIntent:Landroid/content/Intent;
    const-string v2, "sentResultCode"

    iget v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 348
    iget v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    if-ne v2, v7, :cond_93

    .line 350
    const-string v2, "SmsReceiverService"

    const-string v2, "[GPS-SMS]GPS SMS Sent result : Activity.RESULT_OK"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_8f
    :goto_8f
    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/SmsReceiverService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_20

    .line 351
    :cond_93
    iget v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    if-ne v2, v5, :cond_9f

    .line 353
    const-string v2, "SmsReceiverService"

    const-string v2, "[GPS-SMS]GPS SMS Sent result : RESULT_ERROR_RADIO_OFF"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    .line 354
    :cond_9f
    iget v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_ac

    .line 356
    const-string v2, "SmsReceiverService"

    const-string v2, "[GPS-SMS]GPS SMS Sent result : RESULT_ERROR_NO_SERVICE"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    .line 357
    :cond_ac
    iget v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    if-ne v2, v6, :cond_b8

    .line 359
    const-string v2, "SmsReceiverService"

    const-string v2, "[GPS-SMS]GPS SMS Sent result : RESULT_ERROR_GENERIC_FAILURE"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    .line 360
    :cond_b8
    iget v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8f

    .line 362
    const-string v2, "SmsReceiverService"

    const-string v2, "[GPS-SMS]GPS SMS Sent result : RESULT_ERROR_NULL_PDU"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f
.end method

.method private insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Landroid/net/Uri;
    .registers 20
    .parameter "context"
    .parameter "msgs"

    .prologue
    .line 524
    const/4 v14, 0x0

    aget-object v9, p2, v14

    .line 525
    .local v9, sms:Landroid/telephony/SmsMessage;
    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v8

    .line 526
    .local v8, protocolIdentifier:I
    const/16 v3, 0x40

    .line 533
    .local v3, TYPE_ZERO_MSG:I
    if-ne v8, v3, :cond_2b

    .line 534
    const-string v14, "SmsReceiverService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "TP_PID "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",Received Type0 Message, Ignoring It"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/4 v14, 0x0

    .line 595
    :goto_2a
    return-object v14

    .line 543
    :cond_2b
    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    .line 544
    .local v6, msgbody:Ljava/lang/String;
    const/4 v7, 0x0

    .line 545
    .local v7, msglength:I
    const-string v13, ""

    .line 546
    .local v13, tmp:Ljava/lang/String;
    if-eqz v6, :cond_3c

    .line 549
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    .line 550
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v7

    .line 555
    :cond_3c
    const-string v14, "SmsReceiverService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[GPS-SMS]received sms body ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v14, "SmsReceiverService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[GPS-SMS]received sms body length ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/android/mms/transaction/SmsReceiverService;->mCurSender:Ljava/lang/String;

    .line 559
    const-string v2, "AT%GPS="

    .line 560
    .local v2, GPS_SMS_BODY2:Ljava/lang/String;
    const/4 v14, 0x7

    if-le v7, v14, :cond_e5

    const/16 v14, 0xb

    if-ge v7, v14, :cond_e5

    const-string v14, "AT%GPS"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_e5

    .line 561
    invoke-virtual {v13, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    add-int v11, v14, v15

    .line 562
    .local v11, startPosition:I
    invoke-virtual {v13, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->getNumberLength(Ljava/lang/String;)I

    move-result v14

    add-int v5, v14, v11

    .line 565
    .local v5, endPosition:I
    :try_start_9a
    invoke-virtual {v13, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_a1} :catch_e1

    move-result v12

    .line 569
    .local v12, testNum:I
    :goto_a2
    const/4 v14, 0x1

    if-ge v12, v14, :cond_be

    .line 571
    const-string v14, "SmsReceiverService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[GPS-SMS]AirtestNum= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/4 v12, 0x2

    .line 574
    :cond_be
    new-instance v10, Landroid/content/Intent;

    const-string v14, "com.android.mms.transaction.GPSONSMS_RECEIVED"

    invoke-direct {v10, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 575
    .local v10, smsGpsIntent:Landroid/content/Intent;
    const-string v14, "testNum"

    invoke-virtual {v10, v14, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 577
    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 580
    const-string v14, "SmsReceiverService"

    const-string v15, "[GPS-SMS]received sms contains AT%GPS So this is a GPS on SMS"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const-string v14, "SmsReceiverService"

    const-string v15, "[GPS-SMS]Send intent including sms body string to GPS application"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 v14, 0x0

    goto/16 :goto_2a

    .line 566
    .end local v10           #smsGpsIntent:Landroid/content/Intent;
    .end local v12           #testNum:I
    :catch_e1
    move-exception v14

    move-object v4, v14

    .line 567
    .local v4, e:Ljava/lang/Exception;
    const/4 v12, 0x2

    .restart local v12       #testNum:I
    goto :goto_a2

    .line 584
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #endPosition:I
    .end local v11           #startPosition:I
    .end local v12           #testNum:I
    :cond_e5
    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v14

    sget-object v15, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v14, v15, :cond_f3

    .line 586
    invoke-direct/range {p0 .. p2}, Lcom/android/mms/transaction/SmsReceiverService;->displayLGEClassZeroMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)V

    .line 591
    const/4 v14, 0x0

    goto/16 :goto_2a

    .line 592
    :cond_f3
    invoke-virtual {v9}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v14

    if-eqz v14, :cond_ff

    .line 593
    invoke-direct/range {p0 .. p2}, Lcom/android/mms/transaction/SmsReceiverService;->replaceMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v14

    goto/16 :goto_2a

    .line 595
    :cond_ff
    invoke-direct/range {p0 .. p2}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v14

    goto/16 :goto_2a
.end method

.method private moveOutboxMessagesToQueuedBox()V
    .registers 7

    .prologue
    .line 471
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 473
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "type"

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 475
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "type = 4"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 478
    return-void
.end method

.method private replaceMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Landroid/net/Uri;
    .registers 24
    .parameter "context"
    .parameter "msgs"

    .prologue
    .line 609
    const/4 v3, 0x0

    aget-object v20, p2, v3

    .line 610
    .local v20, sms:Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v12

    .line 612
    .local v12, values:Landroid/content/ContentValues;
    const-string v3, "body"

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 615
    .local v4, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v18

    .line 616
    .local v18, originatingAddress:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v19

    .line 617
    .local v19, protocolIdentifier:I
    const-string v7, "address = ? AND protocol = ?"

    .line 620
    .local v7, selection:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v18, v8, v3

    const/4 v3, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v3

    .line 624
    .local v8, selectionArgs:[Ljava/lang/String;
    sget-object v5, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/mms/transaction/SmsReceiverService;->REPLACE_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v9}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 627
    .local v15, cursor:Landroid/database/Cursor;
    if-eqz v15, :cond_60

    .line 629
    :try_start_3c
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 630
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 631
    .local v16, messageId:J
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v3

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 634
    .local v11, messageUri:Landroid/net/Uri;
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p1

    move-object v10, v4

    invoke-static/range {v9 .. v14}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_3c .. :try_end_58} :catchall_65

    .line 639
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    move-object v3, v11

    .line 642
    .end local v11           #messageUri:Landroid/net/Uri;
    .end local v16           #messageId:J
    :goto_5c
    return-object v3

    .line 639
    :cond_5d
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 642
    :cond_60
    invoke-direct/range {p0 .. p2}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_5c

    .line 639
    :catchall_65
    move-exception v3

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private sendOtherSmsWorker([Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "dests"
    .parameter "msgtext"

    .prologue
    const-string v4, "SmsReceiverService"

    .line 456
    new-instance v1, Lcom/android/mms/transaction/OtherSmsMessageSender;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/transaction/OtherSmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .local v1, sender:Lcom/android/mms/transaction/MessageSender;
    :try_start_7
    const-string v2, "SmsReceiverService"

    const-string v3, "[GPS-SMS] GPS SMS sending"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14

    .line 466
    :goto_13
    return-void

    .line 462
    :catch_14
    move-exception v2

    move-object v0, v2

    .line 464
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SmsReceiverService"

    const-string v2, "Failed to send Other SMS message."

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;)Landroid/net/Uri;
    .registers 16
    .parameter "context"
    .parameter "msgs"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string v10, "body"

    .line 646
    aget-object v5, p2, v12

    .line 649
    .local v5, sms:Landroid/telephony/SmsMessage;
    invoke-direct {p0, v5}, Lcom/android/mms/transaction/SmsReceiverService;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v6

    .line 650
    .local v6, values:Landroid/content/ContentValues;
    array-length v3, p2

    .line 652
    .local v3, pduCount:I
    if-ne v3, v11, :cond_89

    .line 657
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KTF"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v11, :cond_7f

    .line 658
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->IsVoicemesssagetype()Z

    move-result v7

    if-eqz v7, :cond_75

    .line 660
    const/4 v0, 0x0

    .line 661
    .local v0, address:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getOriginReplyAddress()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_70

    .line 662
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getOriginReplyAddressNumber()Ljava/lang/String;

    move-result-object v0

    .line 666
    :goto_2a
    const-string v7, "body"

    const v7, 0x7f070158

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getSpecialnewCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getSpecialtotalCount()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x2

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string v7, "address"

    invoke-static {}, Landroid/provider/Settings;->getnumberResource()Ljava/lang/String;

    move-result-object v8

    const-string v9, "+82"

    const-string v10, "0"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    .end local v0           #address:Ljava/lang/String;
    :goto_65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 697
    .local v4, resolver:Landroid/content/ContentResolver;
    sget-object v7, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v4, v7, v6}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    return-object v7

    .line 664
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .restart local v0       #address:Ljava/lang/String;
    :cond_70
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    .line 677
    .end local v0           #address:Ljava/lang/String;
    :cond_75
    const-string v7, "body"

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65

    .line 682
    :cond_7f
    const-string v7, "body"

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65

    .line 687
    :cond_89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 688
    .local v1, body:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8f
    if-ge v2, v3, :cond_9d

    .line 689
    aget-object v5, p2, v2

    .line 690
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    .line 692
    :cond_9d
    const-string v7, "body"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    const-string v3, "SmsReceiverService"

    .line 150
    const-string v1, "Mms"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 151
    const-string v1, "SmsReceiverService"

    const-string v1, "onCreate"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_12
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SmsReceiverService"

    const/16 v1, 0xa

    invoke-direct {v0, v3, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 158
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 160
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    .line 161
    new-instance v1, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;-><init>(Lcom/android/mms/transaction/SmsReceiverService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    .line 162
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 180
    const-string v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 181
    const-string v0, "SmsReceiverService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_10
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 184
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 7
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 166
    const-string v1, "Mms"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 167
    const-string v1, "SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStart: #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_2f
    const-string v1, "result"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    .line 172
    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 173
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 174
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 175
    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    return-void
.end method

.method public declared-synchronized sendFirstQueuedMessage()V
    .registers 15

    .prologue
    .line 276
    monitor-enter p0

    :try_start_1
    const-string v0, "content://sms/queued"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 277
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 278
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_74

    move-result-object v9

    .line 281
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_52

    .line 283
    :try_start_17
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 284
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 285
    .local v11, msgId:I
    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 286
    .local v6, msgText:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 287
    .local v5, address:[Ljava/lang/String;
    const/4 v0, 0x0

    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v0

    .line 288
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 290
    .local v13, threadId:I
    new-instance v3, Lcom/android/mms/transaction/SmsMessageSender;

    int-to-long v7, v13

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_3e
    .catchall {:try_start_17 .. :try_end_3e} :catchall_6f

    .line 293
    .local v3, sender:Lcom/android/mms/transaction/SmsMessageSender;
    const-wide/16 v7, -0x1

    :try_start_40
    invoke-virtual {v3, v7, v8}, Lcom/android/mms/transaction/SmsMessageSender;->sendMessage(J)Z

    .line 297
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v7, v11

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 298
    .local v12, msgUri:Landroid/net/Uri;
    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v1, v12, v0, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_40 .. :try_end_4f} :catchall_6f
    .catch Lcom/google/android/mms/MmsException; {:try_start_40 .. :try_end_4f} :catch_54

    .line 304
    .end local v3           #sender:Lcom/android/mms/transaction/SmsMessageSender;
    .end local v5           #address:[Ljava/lang/String;
    .end local v6           #msgText:Ljava/lang/String;
    .end local v11           #msgId:I
    .end local v12           #msgUri:Landroid/net/Uri;
    .end local v13           #threadId:I
    :cond_4f
    :goto_4f
    :try_start_4f
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_74

    .line 307
    :cond_52
    monitor-exit p0

    return-void

    .line 299
    .restart local v3       #sender:Lcom/android/mms/transaction/SmsMessageSender;
    .restart local v5       #address:[Ljava/lang/String;
    .restart local v6       #msgText:Ljava/lang/String;
    .restart local v11       #msgId:I
    .restart local v13       #threadId:I
    :catch_54
    move-exception v0

    move-object v10, v0

    .line 300
    .local v10, e:Lcom/google/android/mms/MmsException;
    :try_start_56
    const-string v0, "SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to send message: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_56 .. :try_end_6e} :catchall_6f

    goto :goto_4f

    .line 304
    .end local v3           #sender:Lcom/android/mms/transaction/SmsMessageSender;
    .end local v5           #address:[Ljava/lang/String;
    .end local v6           #msgText:Ljava/lang/String;
    .end local v10           #e:Lcom/google/android/mms/MmsException;
    .end local v11           #msgId:I
    .end local v13           #threadId:I
    :catchall_6f
    move-exception v0

    :try_start_70
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_74

    .line 276
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #uri:Landroid/net/Uri;
    .end local v9           #c:Landroid/database/Cursor;
    :catchall_74
    move-exception v0

    monitor-exit p0

    throw v0
.end method
