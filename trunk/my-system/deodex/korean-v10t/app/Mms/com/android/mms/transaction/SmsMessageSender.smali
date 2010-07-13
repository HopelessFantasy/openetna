.class public Lcom/android/mms/transaction/SmsMessageSender;
.super Ljava/lang/Object;
.source "SmsMessageSender.java"

# interfaces
.implements Lcom/android/mms/transaction/MessageSender;


# static fields
.field private static final COLUMN_REPLY_PATH_PRESENT:I = 0x0

.field private static final COLUMN_SERVICE_CENTER:I = 0x1

.field private static final DATE_PROJECTION:[Ljava/lang/String; = null

.field private static final DEFAULT_DELIVERY_REPORT_MODE:Z = false

.field private static final DEFAULT_VALIDITY_PERIOD:Ljava/lang/String; = "255"

.field private static final SERVICE_CENTER_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mArrayMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDeliveryIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private final mDests:[Ljava/lang/String;

.field private mEncodingType:I

.field private final mMessageText:Ljava/lang/String;

.field private final mNumberOfDests:I

.field private mRequestDeliveryReport:Ljava/lang/Boolean;

.field private mSentIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceCenter:Ljava/lang/String;

.field private final mThreadId:J

.field private mTimestamp:J

.field private smsManager:Landroid/telephony/SmsManager;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "reply_path_present"

    aput-object v1, v0, v2

    const-string v1, "service_center"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/transaction/SmsMessageSender;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    .line 71
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "date"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/transaction/SmsMessageSender;->DATE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9
    .parameter "context"
    .parameter "dests"
    .parameter "msgText"
    .parameter "threadId"

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mRequestDeliveryReport:Ljava/lang/Boolean;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mEncodingType:I

    .line 80
    iput-object p1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    .line 81
    iput-object p3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .line 82
    array-length v0, p2

    iput v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    .line 83
    iget v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    iget v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    .line 86
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_39

    move-wide v0, p4

    :goto_2e
    iput-wide v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    .line 89
    iget-wide v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-direct {p0, v0, v1}, Lcom/android/mms/transaction/SmsMessageSender;->getOutgoingServiceCenter(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    .line 90
    return-void

    .line 86
    :cond_39
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v0

    goto :goto_2e
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/SmsMessageSender;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mArrayMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/SmsMessageSender;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSentIntents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/SmsMessageSender;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDeliveryIntents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/SmsMessageSender;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/SmsMessageSender;->sendSmsThread(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private getOutgoingServiceCenter(J)Ljava/lang/String;
    .registers 15
    .parameter "threadId"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 244
    const/4 v7, 0x0

    .line 247
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_4
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/SmsMessageSender;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "date DESC"

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 251
    if-eqz v7, :cond_32

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_52

    move-result v0

    if-nez v0, :cond_39

    .line 258
    :cond_32
    if-eqz v7, :cond_37

    .line 259
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_37
    move-object v0, v10

    :cond_38
    :goto_38
    return-object v0

    .line 255
    :cond_39
    const/4 v0, 0x0

    :try_start_3a
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v9, v0, :cond_4e

    move v8, v9

    .line 256
    .local v8, replyPathPresent:Z
    :goto_41
    if-eqz v8, :cond_50

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_47
    .catchall {:try_start_3a .. :try_end_47} :catchall_52

    move-result-object v0

    .line 258
    :goto_48
    if-eqz v7, :cond_38

    .line 259
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_38

    .end local v8           #replyPathPresent:Z
    :cond_4e
    move v8, v11

    .line 255
    goto :goto_41

    .restart local v8       #replyPathPresent:Z
    :cond_50
    move-object v0, v10

    .line 256
    goto :goto_48

    .line 258
    .end local v8           #replyPathPresent:Z
    :catchall_52
    move-exception v0

    if-eqz v7, :cond_58

    .line 259
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_58
    throw v0
.end method

.method private sendSmsThread(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 20
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;",
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
    .line 197
    .local p1, arraymessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .local p2, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p3, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v12, 0x0

    .line 198
    .local v12, location:I
    const/4 v14, 0x0

    .line 200
    .local v14, prelocation:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    move v2, v0

    if-ge v10, v2, :cond_70

    .line 201
    move v12, v14

    .line 202
    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 203
    .local v5, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 204
    .local v13, messageCount:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    .local v7, tmpdeliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 208
    .local v6, tmpsentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v11, 0x0

    .local v11, j:I
    :goto_23
    if-ge v11, v13, :cond_49

    .line 209
    add-int v15, v12, v11

    .line 210
    .local v15, tmplocation:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mRequestDeliveryReport:Ljava/lang/Boolean;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 214
    move-object/from16 v0, p3

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_3c
    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v11, v11, 0x1

    goto :goto_23

    .line 218
    .end local v15           #tmplocation:I
    :cond_49
    add-int v14, v12, v13

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->smsManager:Landroid/telephony/SmsManager;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    move-object v3, v0

    aget-object v3, v3, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mEncodingType:I

    move v8, v0

    invoke-virtual/range {v2 .. v8}, Landroid/telephony/SmsManager;->sendMultipartTextMessageSync(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_64} :catch_67

    .line 200
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 224
    .end local v5           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #tmpsentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v7           #tmpdeliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v11           #j:I
    .end local v13           #messageCount:I
    :catch_67
    move-exception v2

    move-object v9, v2

    .line 225
    .local v9, e:Ljava/lang/Exception;
    const-string v2, "SmsMessageSender"

    const-string v3, "Failed to send SMS message,"

    invoke-static {v2, v3, v9}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    .end local v9           #e:Ljava/lang/Exception;
    :cond_70
    return-void
.end method


# virtual methods
.method public sendMessage(J)Z
    .registers 27
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    move v5, v0

    if-nez v5, :cond_16

    .line 95
    :cond_e
    new-instance v5, Lcom/google/android/mms/MmsException;

    const-string v6, "Null message body or dest."

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 99
    :cond_16
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/transaction/SmsMessageSender;->smsManager:Landroid/telephony/SmsManager;

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->smsManager:Landroid/telephony/SmsManager;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/telephony/SmsManager;->readValidityPeriod()I

    move-result v17

    .line 102
    .local v17, mValidityPeriodValue:I
    if-gez v17, :cond_15f

    .line 103
    const-string v5, "255"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->smsManager:Landroid/telephony/SmsManager;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->setValidityPeriod(I)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->smsManager:Landroid/telephony/SmsManager;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->updateValidityPeriod(I)Z

    .line 110
    :goto_46
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    move v5, v0

    const/4 v6, 0x1

    if-le v5, v6, :cond_57

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->smsManager:Landroid/telephony/SmsManager;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/telephony/SmsManager;->setSendingMultiSMS(Z)Z

    .line 113
    :cond_57
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/transaction/SmsMessageSender;->mDeliveryIntents:Ljava/util/ArrayList;

    .line 114
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/transaction/SmsMessageSender;->mSentIntents:Ljava/util/ArrayList;

    .line 115
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/transaction/SmsMessageSender;->mArrayMessages:Ljava/util/ArrayList;

    .line 116
    const/16 v16, 0x0

    .line 117
    .local v16, location:I
    const/16 v21, 0x0

    .line 119
    .local v21, prelocation:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_7a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    move v5, v0

    if-ge v14, v5, :cond_17d

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->smsManager:Landroid/telephony/SmsManager;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 121
    .local v19, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 127
    .local v18, messageCount:I
    const/4 v5, 0x1

    move/from16 v0, v18

    move v1, v5

    if-le v0, v1, :cond_a7

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->smsManager:Landroid/telephony/SmsManager;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/telephony/SmsManager;->getEncodingType()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/transaction/SmsMessageSender;->mEncodingType:I

    .line 132
    :cond_a7
    move/from16 v16, v21

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mArrayMessages:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move v1, v14

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 137
    .local v20, prefs:Landroid/content/SharedPreferences;
    const-string v5, "pref_key_sms_delivery_reports"

    const/4 v6, 0x0

    move-object/from16 v0, v20

    move-object v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 141
    .local v10, requestDeliveryReport:Z
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/transaction/SmsMessageSender;->mRequestDeliveryReport:Ljava/lang/Boolean;

    .line 143
    const/16 v23, 0x0

    .line 145
    .local v23, uri:Landroid/net/Uri;
    :try_start_d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    move-object v6, v0

    aget-object v6, v6, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    move-wide v11, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    move-wide v11, v0

    invoke-static/range {v5 .. v12}, Landroid/provider/Telephony$Sms$Outbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;
    :try_end_fb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d4 .. :try_end_fb} :catch_16c

    move-result-object v23

    .line 151
    :goto_fc
    const/4 v15, 0x0

    .local v15, j:I
    :goto_fd
    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_177

    .line 153
    add-int v22, v16, v15

    .line 154
    .local v22, tmplocation:I
    if-eqz v10, :cond_131

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDeliveryIntents:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object v6, v0

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.mms.transaction.MessageStatusReceiver.MESSAGE_STATUS_RECEIVED"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object v11, v0

    const-class v12, Lcom/android/mms/transaction/MessageStatusReceiver;

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v23

    move-object v3, v11

    move-object v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object v0, v5

    move/from16 v1, v22

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 168
    :cond_131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mSentIntents:Ljava/util/ArrayList;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object v6, v0

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.mms.transaction.MESSAGE_SENT"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object v11, v0

    const-class v12, Lcom/android/mms/transaction/SmsReceiver;

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v23

    move-object v3, v11

    move-object v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object v0, v5

    move/from16 v1, v22

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 151
    add-int/lit8 v15, v15, 0x1

    goto :goto_fd

    .line 108
    .end local v10           #requestDeliveryReport:Z
    .end local v14           #i:I
    .end local v15           #j:I
    .end local v16           #location:I
    .end local v18           #messageCount:I
    .end local v19           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20           #prefs:Landroid/content/SharedPreferences;
    .end local v21           #prelocation:I
    .end local v22           #tmplocation:I
    .end local v23           #uri:Landroid/net/Uri;
    :cond_15f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->smsManager:Landroid/telephony/SmsManager;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->setValidityPeriod(I)V

    goto/16 :goto_46

    .line 147
    .restart local v10       #requestDeliveryReport:Z
    .restart local v14       #i:I
    .restart local v16       #location:I
    .restart local v18       #messageCount:I
    .restart local v19       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20       #prefs:Landroid/content/SharedPreferences;
    .restart local v21       #prelocation:I
    .restart local v23       #uri:Landroid/net/Uri;
    :catch_16c
    move-exception v5

    move-object v13, v5

    .line 148
    .local v13, e:Landroid/database/sqlite/SQLiteException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5, v13}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_fc

    .line 179
    .end local v13           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v15       #j:I
    :cond_177
    add-int v21, v16, v18

    .line 119
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_7a

    .line 184
    .end local v10           #requestDeliveryReport:Z
    .end local v15           #j:I
    .end local v18           #messageCount:I
    .end local v19           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20           #prefs:Landroid/content/SharedPreferences;
    .end local v23           #uri:Landroid/net/Uri;
    :cond_17d
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/android/mms/transaction/SmsMessageSender$1;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SmsMessageSender$1;-><init>(Lcom/android/mms/transaction/SmsMessageSender;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 190
    const/4 v5, 0x0

    return v5
.end method
