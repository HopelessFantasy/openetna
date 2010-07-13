.class public Lcom/android/mms/transaction/OtherSmsMessageSender;
.super Ljava/lang/Object;
.source "OtherSmsMessageSender.java"

# interfaces
.implements Lcom/android/mms/transaction/MessageSender;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDests:[Ljava/lang/String;

.field private final mMessageText:Ljava/lang/String;

.field private final mNumberOfDests:I

.field private final mServiceCenter:Ljava/lang/String;

.field private mTimestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "dests"
    .parameter "msgText"

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/mms/transaction/OtherSmsMessageSender;->mContext:Landroid/content/Context;

    .line 30
    array-length v0, p2

    iput v0, p0, Lcom/android/mms/transaction/OtherSmsMessageSender;->mNumberOfDests:I

    .line 31
    iget v0, p0, Lcom/android/mms/transaction/OtherSmsMessageSender;->mNumberOfDests:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/transaction/OtherSmsMessageSender;->mDests:[Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/android/mms/transaction/OtherSmsMessageSender;->mMessageText:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/android/mms/transaction/OtherSmsMessageSender;->mDests:[Ljava/lang/String;

    iget v1, p0, Lcom/android/mms/transaction/OtherSmsMessageSender;->mNumberOfDests:I

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/transaction/OtherSmsMessageSender;->mTimestamp:J

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/OtherSmsMessageSender;->mServiceCenter:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public sendMessage(J)Z
    .registers 16
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 39
    iget-object v1, p0, Lcom/android/mms/transaction/OtherSmsMessageSender;->mMessageText:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/mms/transaction/OtherSmsMessageSender;->mNumberOfDests:I

    if-nez v1, :cond_11

    .line 41
    :cond_9
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "Null message body or dest."

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_11
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 46
    .local v0, smsManager:Landroid/telephony/SmsManager;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_16
    iget v1, p0, Lcom/android/mms/transaction/OtherSmsMessageSender;->mNumberOfDests:I

    if-ge v6, v1, :cond_51

    .line 47
    iget-object v1, p0, Lcom/android/mms/transaction/OtherSmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 48
    .local v3, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 50
    .local v8, messageCount:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .local v4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v9, 0x0

    .line 55
    .local v9, uri:Landroid/net/Uri;
    const/4 v7, 0x0

    .local v7, j:I
    :goto_2b
    if-ge v7, v8, :cond_44

    .line 56
    iget-object v1, p0, Lcom/android/mms/transaction/OtherSmsMessageSender;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.mms.transaction.MESSAGE_SENT"

    iget-object v10, p0, Lcom/android/mms/transaction/OtherSmsMessageSender;->mContext:Landroid/content/Context;

    const-class v11, Lcom/android/mms/transaction/SmsReceiver;

    invoke-direct {v2, v5, v9, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, v12, v2, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    .line 64
    :cond_44
    iget-object v1, p0, Lcom/android/mms/transaction/OtherSmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/android/mms/transaction/OtherSmsMessageSender;->mServiceCenter:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 46
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 68
    .end local v3           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v7           #j:I
    .end local v8           #messageCount:I
    .end local v9           #uri:Landroid/net/Uri;
    :cond_51
    return v12
.end method
