.class public Lcom/android/mms/transaction/MmsMessageSender;
.super Ljava/lang/Object;
.source "MmsMessageSender.java"

# interfaces
.implements Lcom/android/mms/transaction/MessageSender;


# static fields
.field private static final D1_EXPIRY_TIME:J = 0x15180L

.field private static final D3_EXPIRY_TIME:J = 0x3f480L

.field private static final DEFAULT_DELIVERY_REPORT_MODE:Z = false

.field private static final DEFAULT_EXPIRY_TIME:J = 0x93a80L

.field private static final DEFAULT_MESSAGE_CLASS:Ljava/lang/String; = "personal"

.field private static final DEFAULT_PRIORITY:I = 0x81

.field private static final DEFAULT_READ_REPORT_MODE:Z = false

.field private static final H12_EXPIRY_TIME:J = 0xa8c0L

.field private static final H1_EXPIRY_TIME:J = 0xe10L

.field private static final H6_EXPIRY_TIME:J = 0x5460L

.field private static final TAG:Ljava/lang/String; = "MmsMessageSender"

.field private static final W1_EXPIRY_TIME:J = 0x93a80L


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMessageUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 5
    .parameter "context"
    .parameter "location"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    .line 65
    iget-object v0, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    if-nez v0, :cond_13

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null message URI."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_13
    return-void
.end method

.method public static sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .parameter "context"
    .parameter "to"
    .parameter "messageId"
    .parameter "status"

    .prologue
    const-string v7, "MmsMessageSender"

    .line 162
    const/4 v1, 0x1

    new-array v5, v1, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 163
    .local v5, sender:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v2, p1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v2, v5, v1

    .line 166
    :try_start_d
    new-instance v0, Lcom/google/android/mms/pdu/ReadRecInd;

    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v2, "insert-address-token"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v3, 0x12

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/EncodedStringValue;[BII[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 173
    .local v0, readRec:Lcom/google/android/mms/pdu/ReadRecInd;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/ReadRecInd;->setDate(J)V

    .line 175
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    .line 176
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_41
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_d .. :try_end_41} :catch_42
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_41} :catch_4c
    .catch Lcom/google/android/mms/MmsException; {:try_start_d .. :try_end_41} :catch_56

    .line 184
    .end local v0           #readRec:Lcom/google/android/mms/pdu/ReadRecInd;
    :goto_41
    return-void

    .line 177
    :catch_42
    move-exception v1

    move-object v6, v1

    .line 178
    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    const-string v1, "MmsMessageSender"

    const-string v1, "Invalide header value"

    invoke-static {v7, v1, v6}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_41

    .line 179
    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_4c
    move-exception v1

    move-object v6, v1

    .line 180
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v1, "MmsMessageSender"

    const-string v1, "NullPointerException"

    invoke-static {v7, v1, v6}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_41

    .line 181
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_56
    move-exception v1

    move-object v6, v1

    .line 182
    .local v6, e:Lcom/google/android/mms/MmsException;
    const-string v1, "MmsMessageSender"

    const-string v1, "Persist message failed"

    invoke-static {v7, v1, v6}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_41
.end method

.method private updatePreferencesHeaders(Lcom/google/android/mms/pdu/SendReq;)V
    .registers 16
    .parameter "sendReq"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x81

    const/16 v10, 0x80

    const-string v13, "[FLEX]"

    const-string v12, "1"

    .line 104
    iget-object v8, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 108
    .local v5, prefs:Landroid/content/SharedPreferences;
    const-string v8, "pref_key_mms_expiry"

    const-string v9, "max"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, expiry:Ljava/lang/String;
    const-wide/32 v3, 0x93a80

    .line 111
    .local v3, expiry_val:J
    const-string v8, "h1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a2

    .line 112
    const-wide/16 v3, 0xe10

    .line 122
    :cond_23
    :goto_23
    invoke-virtual {p1, v3, v4}, Lcom/google/android/mms/pdu/SendReq;->setExpiry(J)V

    .line 127
    const-string v8, "pref_key_mms_priority"

    const-string v9, "medium"

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->convertPriorityId(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/google/android/mms/pdu/SendReq;->setPriority(I)V

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, dr:Z
    iget-object v8, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "MMSSETTINGDB_DELIVERYREPORTREQ_I"

    invoke-static {v8, v9}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, dr_flexValues:Ljava/lang/String;
    const-string v8, "[FLEX]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get deliveryReport_flexValues :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    if-eqz v1, :cond_65

    .line 137
    const-string v8, "1"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d5

    .line 138
    const/4 v0, 0x1

    .line 143
    :cond_65
    :goto_65
    if-eqz v0, :cond_d7

    move v8, v10

    :goto_68
    invoke-virtual {p1, v8}, Lcom/google/android/mms/pdu/SendReq;->setDeliveryReport(I)V

    .line 146
    const/4 v6, 0x0

    .line 147
    .local v6, rr:Z
    iget-object v8, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "MMSSETTINGDB_READREPLYREQUEST_I"

    invoke-static {v8, v9}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, rr_flexValues:Ljava/lang/String;
    const-string v8, "[FLEX]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get readReport_flexValues :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    if-eqz v7, :cond_9b

    .line 152
    const-string v8, "1"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d9

    .line 153
    const/4 v6, 0x1

    .line 158
    :cond_9b
    :goto_9b
    if-eqz v6, :cond_db

    move v8, v10

    :goto_9e
    invoke-virtual {p1, v8}, Lcom/google/android/mms/pdu/SendReq;->setReadReport(I)V

    .line 159
    return-void

    .line 113
    .end local v0           #dr:Z
    .end local v1           #dr_flexValues:Ljava/lang/String;
    .end local v6           #rr:Z
    .end local v7           #rr_flexValues:Ljava/lang/String;
    :cond_a2
    const-string v8, "h6"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ae

    .line 114
    const-wide/16 v3, 0x5460

    goto/16 :goto_23

    .line 115
    :cond_ae
    const-string v8, "h12"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bb

    .line 116
    const-wide/32 v3, 0xa8c0

    goto/16 :goto_23

    .line 117
    :cond_bb
    const-string v8, "d1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c8

    .line 118
    const-wide/32 v3, 0x15180

    goto/16 :goto_23

    .line 119
    :cond_c8
    const-string v8, "d3"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 120
    const-wide/32 v3, 0x3f480

    goto/16 :goto_23

    .line 140
    .restart local v0       #dr:Z
    .restart local v1       #dr_flexValues:Ljava/lang/String;
    :cond_d5
    const/4 v0, 0x0

    goto :goto_65

    :cond_d7
    move v8, v11

    .line 143
    goto :goto_68

    .line 155
    .restart local v6       #rr:Z
    .restart local v7       #rr_flexValues:Ljava/lang/String;
    :cond_d9
    const/4 v6, 0x0

    goto :goto_9b

    :cond_db
    move v8, v11

    .line 158
    goto :goto_9e
.end method


# virtual methods
.method public sendMessage(J)Z
    .registers 11
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v4, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 73
    .local v1, p:Lcom/google/android/mms/pdu/PduPersister;
    iget-object v4, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    .line 75
    .local v2, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v4

    const/16 v5, 0x80

    if-eq v4, v5, :cond_31

    .line 76
    new-instance v4, Lcom/google/android/mms/MmsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 79
    :cond_31
    move-object v0, v2

    check-cast v0, Lcom/google/android/mms/pdu/SendReq;

    move-object v3, v0

    .line 82
    .local v3, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-direct {p0, v3}, Lcom/android/mms/transaction/MmsMessageSender;->updatePreferencesHeaders(Lcom/google/android/mms/pdu/SendReq;)V

    .line 85
    const-string v4, "personal"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/SendReq;->setMessageClass([B)V

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 90
    iget-object v4, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v4, v3}, Lcom/google/android/mms/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V

    .line 93
    iget-object v4, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    .line 96
    iget-object v4, p0, Lcom/android/mms/transaction/MmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/android/mms/util/SendingProgressTokenManager;->put(Ljava/lang/Object;J)V

    .line 97
    iget-object v4, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/mms/transaction/MmsMessageSender;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 99
    const/4 v4, 0x1

    return v4
.end method
