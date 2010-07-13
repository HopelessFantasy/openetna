.class public Lcom/android/mms/transaction/MessagingNotification;
.super Ljava/lang/Object;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;,
        Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    }
.end annotation


# static fields
.field private static final COLUMN_DATE:I = 0x1

.field private static final COLUMN_MMS_ID:I = 0x2

.field private static final COLUMN_SMS_ADDRESS:I = 0x2

.field private static final COLUMN_SMS_BODY:I = 0x4

.field private static final COLUMN_SUBJECT:I = 0x3

.field private static final COLUMN_SUBJECT_CS:I = 0x4

.field private static final COLUMN_THREAD_ID:I = 0x0

.field public static final DOWNLOAD_FAILED_NOTIFICATION_ID:I = 0x213

.field private static final INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator; = null

.field public static final MESSAGE_FAILED_NOTIFICATION_ID:I = 0x315

.field public static final MESSAGE_FULL_NOTIFICATION_ID:I = 0x37b

.field private static final MMS_STATUS_PROJECTION:[Ljava/lang/String; = null

.field private static final NEW_INCOMING_MM_CONSTRAINT:Ljava/lang/String; = "(msg_box=1 AND read=0 AND (m_type=130 OR m_type=132))"

.field private static final NEW_INCOMING_SM_CONSTRAINT:Ljava/lang/String; = "(type = 1 AND read = 0)"

.field public static final NOTIFICATION_BACKLIGHT_TIME_OUT:I = 0x2710

.field public static final NOTIFICATION_CLICK_RECEIVER:Ljava/lang/String; = "com.android.mms.transaction.NotificationClickReceiver"

.field private static final NOTIFICATION_ID:I = 0x7b

.field public static final NOTIFICATION_TIME_OUT:I = 0x1b58

.field private static final SMS_STATUS_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MessagingNotification"

.field private static final UNDELIVERED_URI:Landroid/net/Uri;

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mPowerManager:Landroid/os/PowerManager;

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v2

    const-string v1, "date"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "sub"

    aput-object v1, v0, v5

    const-string v1, "sub_cs"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 108
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v2

    const-string v1, "date"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "subject"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 131
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;-><init>(Lcom/android/mms/transaction/MessagingNotification$1;)V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

    .line 134
    const-string v0, "content://mms-sms/undelivered"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;II)V
    .registers 11
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 87
    invoke-static/range {p0 .. p10}, Lcom/android/mms/transaction/MessagingNotification;->updateNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;II)V

    return-void
.end method

.method private static final accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I
    .registers 3
    .parameter "set"
    .parameter "info"

    .prologue
    .line 255
    if-eqz p1, :cond_8

    .line 256
    invoke-interface {p0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 258
    iget v0, p1, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mCount:I

    .line 261
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected static buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 12
    .parameter "context"
    .parameter "address"
    .parameter "subject"
    .parameter "body"

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0x20

    .line 525
    invoke-static {}, Lcom/android/mms/util/ContactInfoCache;->getInstance()Lcom/android/mms/util/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v4, p0, p1}, Lcom/android/mms/util/ContactInfoCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 528
    .local v1, displayAddress:Ljava/lang/String;
    const-string v4, "801010101018"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 529
    const v4, 0x7f070150

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 535
    :cond_1d
    :goto_1d
    new-instance v0, Ljava/lang/StringBuilder;

    if-nez v1, :cond_7e

    const-string v4, ""

    :goto_23
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 539
    .local v0, buf:Ljava/lang/StringBuilder;
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 542
    .local v2, offset:I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 543
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 544
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 548
    :cond_47
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_58

    .line 549
    invoke-virtual {p3, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    .line 550
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    :cond_58
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 554
    .local v3, spanText:Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 557
    return-object v3

    .line 530
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v2           #offset:I
    .end local v3           #spanText:Landroid/text/SpannableString;
    :cond_6e
    const-string v4, "901010101019"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 531
    const v4, 0x7f070151

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    .line 535
    :cond_7e
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    goto :goto_23
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "notificationId"

    .prologue
    .line 418
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 421
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 422
    return-void
.end method

.method public static fullMessageIndicator(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const v6, 0x7f070159

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, lowMemIntent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 186
    const/4 v4, 0x0

    const/high16 v5, 0x800

    invoke-static {p0, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 189
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 190
    .local v2, notification:Landroid/app/Notification;
    const v4, 0x1080221

    iput v4, v2, Landroid/app/Notification;->icon:I

    .line 191
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 192
    const/4 v4, -0x1

    iput v4, v2, Landroid/app/Notification;->defaults:I

    .line 194
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f07015a

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p0, v4, v5, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 199
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 200
    const v4, -0xff0100

    iput v4, v2, Landroid/app/Notification;->ledARGB:I

    .line 201
    const/16 v4, 0x1f4

    iput v4, v2, Landroid/app/Notification;->ledOnMS:I

    .line 202
    const/16 v4, 0x7d0

    iput v4, v2, Landroid/app/Notification;->ledOffMS:I

    .line 204
    const-string v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    sput-object v4, Lcom/android/mms/transaction/MessagingNotification;->mPowerManager:Landroid/os/PowerManager;

    .line 206
    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v4, :cond_65

    .line 207
    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->mPowerManager:Landroid/os/PowerManager;

    const v5, 0x3000001a

    const-string v6, "MMS Noti"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    sput-object v4, Lcom/android/mms/transaction/MessagingNotification;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 214
    :cond_65
    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_70

    .line 215
    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v5, 0x2710

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 217
    :cond_70
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 220
    .local v1, nm:Landroid/app/NotificationManager;
    const/16 v4, 0x37b

    invoke-virtual {v1, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 221
    return-void
.end method

.method private static getAppIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 425
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 427
    .local v0, appIntent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 428
    return-object v0
.end method

.method private static getDownloadFailedMessageCount(Landroid/content/Context;)I
    .registers 10
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 746
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m_type="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x82

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "st"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x87

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 753
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_47

    .line 754
    const/4 v0, 0x0

    .line 758
    :goto_46
    return v0

    .line 756
    :cond_47
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 757
    .local v8, count:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 758
    goto :goto_46
.end method

.method public static final getMmsNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .registers 14
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;"
        }
    .end annotation

    .prologue
    .line 306
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 307
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(msg_box=1 AND read=0 AND (m_type=130 OR m_type=132))"

    const/4 v5, 0x0

    const-string v6, "date desc"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 311
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_16

    .line 312
    const/4 p0, 0x0

    .line 345
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local p0
    :goto_15
    return-object p0

    .line 316
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local p0
    :cond_16
    :try_start_16
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_99

    move-result v1

    .end local v1           #resolver:Landroid/content/ContentResolver;
    if-nez v1, :cond_21

    .line 317
    const/4 p0, 0x0

    .line 345
    .end local p0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_15

    .line 319
    .restart local p0
    :cond_21
    const/4 v1, 0x2

    :try_start_22
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 320
    .local v1, msgId:J
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .end local v1           #msgId:J
    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 322
    .local v1, msgUri:Landroid/net/Uri;
    invoke-static {p0, v1}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, address:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .end local v1           #msgUri:Landroid/net/Uri;
    move-result-object v1

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/mms/transaction/MessagingNotification;->getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, subject:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 326
    .local v7, threadId:J
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v4

    .line 328
    .local v9, timeMillis:J
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v1

    const-string v4, "KTF"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 330
    const v1, 0x7f070011

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 333
    :cond_72
    const v5, 0x7f02003c

    const/4 v6, 0x0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    move-object v4, p0

    invoke-static/range {v2 .. v11}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJI)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object p0

    .line 338
    .local p0, info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 339
    :goto_86
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 340
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_98
    .catchall {:try_start_22 .. :try_end_98} :catchall_99

    goto :goto_86

    .line 345
    .end local v2           #address:Ljava/lang/String;
    .end local v3           #subject:Ljava/lang/String;
    .end local v7           #threadId:J
    .end local v9           #timeMillis:J
    .end local p0           #info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    :catchall_99
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0

    .restart local v2       #address:Ljava/lang/String;
    .restart local v3       #subject:Ljava/lang/String;
    .restart local v7       #threadId:J
    .restart local v9       #timeMillis:J
    .restart local p0       #info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    :cond_9e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_15
.end method

.method private static getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "sub"
    .parameter "charset"

    .prologue
    .line 561
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private static final getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJI)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .registers 19
    .parameter "address"
    .parameter "body"
    .parameter "context"
    .parameter "iconResourceId"
    .parameter "subject"
    .parameter "threadId"
    .parameter "timeMillis"
    .parameter "count"

    .prologue
    .line 399
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->getAppIntent()Landroid/content/Intent;

    move-result-object v1

    .line 400
    .local v1, clickIntent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p5

    .end local p5
    invoke-static {v0, p5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    invoke-virtual {v1, p5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 403
    const-string p5, "android.intent.action.VIEW"

    invoke-virtual {v1, p5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const/4 p5, 0x0

    const/4 p6, 0x0

    invoke-static {p2, p0, p5, p6}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    .line 407
    .local p5, senderInfo:Ljava/lang/String;
    const/4 p6, 0x0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {p5, p6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 409
    .local v7, senderInfoName:Ljava/lang/String;
    invoke-static {p2, p0, p4, p1}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 412
    .local v4, ticker:Ljava/lang/CharSequence;
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-object v2, p1

    move v3, p3

    move-wide/from16 v5, p7

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/CharSequence;JLjava/lang/String;I)V

    return-object v0
.end method

.method public static final getSmsNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .registers 16
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;"
        }
    .end annotation

    .prologue
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 351
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 352
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(type = 1 AND read = 0)"

    const-string v6, "date desc"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 356
    .local v12, cursor:Landroid/database/Cursor;
    if-nez v12, :cond_16

    move-object v0, v5

    .line 386
    :goto_15
    return-object v0

    .line 361
    :cond_16
    :try_start_16
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_77

    move-result v0

    if-nez v0, :cond_21

    .line 386
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    goto :goto_15

    .line 365
    :cond_21
    const/4 v0, 0x2

    :try_start_22
    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, address:Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 367
    .local v3, body:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 368
    .local v7, threadId:J
    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 370
    .local v9, timeMillis:J
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    const-string v4, "KTF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 372
    const v0, 0x7f070011

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 375
    :cond_50
    const v5, 0x7f02003e

    const/4 v6, 0x0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v11

    move-object v4, p0

    invoke-static/range {v2 .. v11}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJI)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v13

    .line 379
    .local v13, info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 380
    :goto_64
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 381
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_76
    .catchall {:try_start_22 .. :try_end_76} :catchall_77

    goto :goto_64

    .line 386
    .end local v2           #address:Ljava/lang/String;
    .end local v3           #body:Ljava/lang/String;
    .end local v7           #threadId:J
    .end local v9           #timeMillis:J
    .end local v13           #info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    :catchall_77
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v2       #address:Ljava/lang/String;
    .restart local v3       #body:Ljava/lang/String;
    .restart local v7       #threadId:J
    .restart local v9       #timeMillis:J
    .restart local v13       #info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    :cond_7c
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    move-object v0, v13

    goto :goto_15
.end method

.method private static getUndeliveredMessageCount(Landroid/content/Context;[J)I
    .registers 14
    .parameter "context"
    .parameter "threadIdResult"

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v11, 0x0

    .line 693
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v3, v11

    const-string v4, "read=0"

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 695
    .local v10, undeliveredCursor:Landroid/database/Cursor;
    if-nez v10, :cond_1b

    move v0, v11

    .line 718
    :goto_1a
    return v0

    .line 698
    :cond_1b
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 700
    .local v7, count:I
    if-eqz p1, :cond_4a

    :try_start_21
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 701
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, p1, v0

    .line 703
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_4a

    .line 705
    const/4 v0, 0x0

    aget-wide v8, p1, v0

    .line 706
    .local v8, firstId:J
    :cond_36
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 707
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_36

    .line 708
    const-wide/16 v8, 0x0

    .line 712
    :cond_47
    const/4 v0, 0x1

    aput-wide v8, p1, v0
    :try_end_4a
    .catchall {:try_start_21 .. :try_end_4a} :catchall_4f

    .line 716
    .end local v8           #firstId:J
    :cond_4a
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 718
    goto :goto_1a

    .line 716
    :catchall_4f
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static notifyDownloadFailed(Landroid/content/Context;J)V
    .registers 5
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 566
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 567
    return-void
.end method

.method private static notifyFailed(Landroid/content/Context;ZJZ)V
    .registers 13
    .parameter "context"
    .parameter "isDownload"
    .parameter "threadId"
    .parameter "noisy"

    .prologue
    .line 580
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 582
    .local v4, sp:Landroid/content/SharedPreferences;
    const-string v0, "pref_key_enable_notifications"

    const/4 v1, 0x1

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 583
    .local v0, enabled:Z
    if-nez v0, :cond_e

    .line 686
    .end local v0           #enabled:Z
    .end local v4           #sp:Landroid/content/SharedPreferences;
    .end local p0
    .end local p4
    :goto_d
    return-void

    .line 587
    .restart local v0       #enabled:Z
    .restart local v4       #sp:Landroid/content/SharedPreferences;
    .restart local p0
    .restart local p4
    :cond_e
    const-string v0, "notification"

    .end local v0           #enabled:Z
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 597
    .local v2, nm:Landroid/app/NotificationManager;
    const/4 v0, 0x1

    new-array v1, v0, [J

    const/4 v0, 0x0

    const-wide/16 v5, 0x0

    aput-wide v5, v1, v0

    .line 598
    .local v1, msgThreadId:[J
    invoke-static {p0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v0

    .line 601
    .local v0, totalFailedCount:I
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 604
    .local v3, notification:Landroid/app/Notification;
    const/4 v5, 0x1

    if-le v0, v5, :cond_f7

    .line 605
    const v1, 0x7f0700e4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .end local v1           #msgThreadId:[J
    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .end local v0           #totalFailedCount:I
    aput-object v0, v5, v6

    invoke-virtual {p0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, description:Ljava/lang/String;
    const v1, 0x7f0700e5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 609
    .local v5, title:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 623
    .local v1, failedIntent:Landroid/content/Intent;
    :goto_49
    const/high16 v6, 0x1400

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 624
    const/4 v6, 0x0

    const/high16 v7, 0x800

    invoke-static {p0, v6, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 627
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    const v6, 0x7f02003f

    iput v6, v3, Landroid/app/Notification;->icon:I

    .line 629
    iput-object v5, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 631
    invoke-virtual {v3, p0, v5, v0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 633
    if-eqz p4, :cond_c8

    .line 634
    const-string p4, "pref_key_vibrate"

    .end local p4
    const/4 v0, 0x1

    invoke-interface {v4, p4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .end local v0           #description:Ljava/lang/String;
    move-result v0

    .line 636
    .local v0, vibrate:Z
    const-string p4, "audio"

    invoke-virtual {p0, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/media/AudioManager;

    sput-object p4, Lcom/android/mms/transaction/MessagingNotification;->mAudioManager:Landroid/media/AudioManager;

    .line 637
    sget-object p4, Lcom/android/mms/transaction/MessagingNotification;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p4

    .line 639
    .local p4, valueMode:I
    const/4 v1, 0x1

    if-ne p4, v1, :cond_134

    .line 640
    .end local v1           #pendingIntent:Landroid/app/PendingIntent;
    iget p4, v3, Landroid/app/Notification;->defaults:I

    .end local p4           #valueMode:I
    or-int/lit8 p4, p4, 0x2

    iput p4, v3, Landroid/app/Notification;->defaults:I

    .line 647
    :cond_81
    :goto_81
    const-string p4, "pref_key_ringtone"

    const/4 v0, 0x0

    invoke-interface {v4, p4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local v0           #vibrate:Z
    move-result-object v0

    .line 649
    .local v0, ringtoneStr:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 651
    .local v1, ringtoneUri:Landroid/net/Uri;
    const-string p4, "content://media"

    invoke-virtual {v0, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_145

    .line 653
    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->getFilepathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p4

    .line 654
    .local p4, filepath:Ljava/lang/String;
    const-string v4, "MessagingNotification"

    .end local v4           #sp:Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #title:Ljava/lang/String;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notification filename FromContentUri :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    if-nez p4, :cond_145

    .line 658
    const-string p4, "MessagingNotification"

    .end local p4           #filepath:Ljava/lang/String;
    const-string v1, "Error!! set Default Notification  /system/notification_sound"

    .end local v1           #ringtoneUri:Landroid/net/Uri;
    invoke-static {p4, v1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string p4, "content://settings/system/notification_sound"

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    .line 662
    .local p4, ringtoneUri:Landroid/net/Uri;
    :goto_bf
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .end local v0           #ringtoneStr:Ljava/lang/String;
    if-eqz v0, :cond_c6

    const/4 p4, 0x0

    .end local p4           #ringtoneUri:Landroid/net/Uri;
    :cond_c6
    iput-object p4, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 667
    :cond_c8
    const-string p4, "power"

    invoke-virtual {p0, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/PowerManager;

    sput-object p0, Lcom/android/mms/transaction/MessagingNotification;->mPowerManager:Landroid/os/PowerManager;

    .line 669
    sget-object p0, Lcom/android/mms/transaction/MessagingNotification;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez p0, :cond_e3

    .line 670
    sget-object p0, Lcom/android/mms/transaction/MessagingNotification;->mPowerManager:Landroid/os/PowerManager;

    const p4, 0x3000001a

    const-string v0, "MMS Noti"

    invoke-virtual {p0, p4, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    sput-object p0, Lcom/android/mms/transaction/MessagingNotification;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 677
    :cond_e3
    sget-object p0, Lcom/android/mms/transaction/MessagingNotification;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p0, :cond_ee

    .line 678
    sget-object p0, Lcom/android/mms/transaction/MessagingNotification;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 681
    :cond_ee
    if-eqz p1, :cond_13e

    .line 682
    const/16 p0, 0x213

    invoke-virtual {v2, p0, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_d

    .line 611
    .local v0, totalFailedCount:I
    .local v1, msgThreadId:[J
    .restart local v4       #sp:Landroid/content/SharedPreferences;
    .restart local p0
    .local p4, noisy:Z
    :cond_f7
    if-eqz p1, :cond_128

    const p2, 0x7f0700f4

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p2
    move-result-object p2

    move-object v5, p2

    .line 615
    .restart local v5       #title:Ljava/lang/String;
    :goto_101
    const p2, 0x7f0700f6

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, description:Ljava/lang/String;
    const/4 p2, 0x0

    aget-wide p2, v1, p2

    const-wide/16 v6, 0x0

    cmp-long p2, p2, v6

    if-eqz p2, :cond_131

    const/4 p2, 0x0

    aget-wide p2, v1, p2

    .line 618
    .restart local p2
    :goto_114
    new-instance v1, Landroid/content/Intent;

    .end local v1           #msgThreadId:[J
    const-class v6, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 619
    .local v1, failedIntent:Landroid/content/Intent;
    const-string v6, "thread_id"

    invoke-virtual {v1, v6, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 620
    const-string v6, "undelivered_flag"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_49

    .line 611
    .end local v5           #title:Ljava/lang/String;
    .local v0, totalFailedCount:I
    .local v1, msgThreadId:[J
    :cond_128
    const p2, 0x7f0700f5

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p2
    move-result-object p2

    move-object v5, p2

    goto :goto_101

    .line 616
    .local v0, description:Ljava/lang/String;
    .restart local v5       #title:Ljava/lang/String;
    :cond_131
    const-wide/16 p2, 0x0

    goto :goto_114

    .line 642
    .end local v1           #msgThreadId:[J
    .local v0, vibrate:Z
    .restart local p2
    .local p4, valueMode:I
    :cond_134
    if-eqz v0, :cond_81

    .line 643
    iget p4, v3, Landroid/app/Notification;->defaults:I

    .end local p4           #valueMode:I
    or-int/lit8 p4, p4, 0x2

    iput p4, v3, Landroid/app/Notification;->defaults:I

    goto/16 :goto_81

    .line 684
    .end local v0           #vibrate:Z
    .end local v4           #sp:Landroid/content/SharedPreferences;
    .end local v5           #title:Ljava/lang/String;
    .end local p0
    :cond_13e
    const/16 p0, 0x315

    invoke-virtual {v2, p0, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_d

    .local v0, ringtoneStr:Ljava/lang/String;
    .local v1, ringtoneUri:Landroid/net/Uri;
    .restart local p0
    :cond_145
    move-object p4, v1

    .end local v1           #ringtoneUri:Landroid/net/Uri;
    .local p4, ringtoneUri:Landroid/net/Uri;
    goto/16 :goto_bf
.end method

.method public static notifySendFailed(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 570
    const-wide/16 v0, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 571
    return-void
.end method

.method public static notifySendFailed(Landroid/content/Context;Z)V
    .registers 5
    .parameter "context"
    .parameter "noisy"

    .prologue
    .line 574
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 575
    return-void
.end method

.method public static updateAllNotifications(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 230
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/transaction/MessagingNotification$1;

    invoke-direct {v1, p0}, Lcom/android/mms/transaction/MessagingNotification$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 237
    return-void
.end method

.method public static updateDownloadFailedNotification(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 762
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getDownloadFailedMessageCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_c

    .line 763
    const/16 v0, 0x213

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 765
    :cond_c
    return-void
.end method

.method public static updateNewMessageIndicator(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;Z)V

    .line 153
    return-void
.end method

.method public static updateNewMessageIndicator(Landroid/content/Context;J)V
    .registers 3
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 250
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;)V

    .line 251
    return-void
.end method

.method public static updateNewMessageIndicator(Landroid/content/Context;Z)V
    .registers 7
    .parameter "context"
    .parameter "isNew"

    .prologue
    .line 163
    new-instance v0, Ljava/util/TreeSet;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

    invoke-direct {v0, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 165
    .local v0, accumulator:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;>;"
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 167
    .local v2, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .line 168
    .local v1, count:I
    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->getMmsNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mms/transaction/MessagingNotification;->accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I

    move-result v3

    add-int/2addr v1, v3

    .line 170
    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->getSmsNewMessageNotificationInfo(Landroid/content/Context;Ljava/util/Set;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/mms/transaction/MessagingNotification;->accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;)I

    move-result v3

    add-int/2addr v1, v3

    .line 173
    const/16 v3, 0x7b

    invoke-static {p0, v3}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 174
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_38

    .line 175
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, p0, p1, v1, v4}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->deliver(Landroid/content/Context;ZII)V

    .line 177
    :cond_38
    return-void
.end method

.method private static updateNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;II)V
    .registers 14
    .parameter "context"
    .parameter "clickIntent"
    .parameter "description"
    .parameter "iconRes"
    .parameter "isNew"
    .parameter "ticker"
    .parameter "timeMillis"
    .parameter "title"
    .parameter "messageCount"
    .parameter "uniqueThreadCount"

    .prologue
    .line 442
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 444
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v0, "pref_key_enable_notifications"

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_e

    .line 521
    .end local p0
    .end local p3
    .end local p4
    .end local p5
    .end local p6
    .end local p9
    :goto_d
    return-void

    .line 449
    .restart local p0
    .restart local p3
    .restart local p4
    .restart local p5
    .restart local p6
    .restart local p9
    :cond_e
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0, p3, p5, p6, p7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 455
    .local v0, notification:Landroid/app/Notification;
    const/4 p3, 0x1

    if-le p10, p3, :cond_2b

    .line 456
    .end local p3
    const p1, 0x7f0700e3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p1
    move-result-object p8

    .line 457
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->getAppIntent()Landroid/content/Intent;

    move-result-object p1

    .line 458
    .restart local p1
    const-string p3, "android.intent.action.MAIN"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    const-string p3, "vnd.android-dir/mms-sms"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    :cond_2b
    const/4 p3, 0x1

    if-le p9, p3, :cond_3f

    .line 466
    const p2, 0x7f0700e2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    .end local p2
    const/4 p5, 0x0

    invoke-static {p9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .end local p5
    move-result-object p6

    .end local p6
    aput-object p6, p3, p5

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 471
    .restart local p2
    :cond_3f
    const/4 p3, 0x0

    const/high16 p5, 0x800

    invoke-static {p0, p3, p1, p5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 475
    .local p3, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, p0, p8, p2, p3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 477
    if-eqz p4, :cond_b2

    .line 478
    const-string p3, "pref_key_vibrate"

    .end local p3           #pendingIntent:Landroid/app/PendingIntent;
    const/4 p4, 0x1

    invoke-interface {v1, p3, p4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .end local p4
    move-result p4

    .line 480
    .local p4, vibrate:Z
    const-string p3, "audio"

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/media/AudioManager;

    sput-object p3, Lcom/android/mms/transaction/MessagingNotification;->mAudioManager:Landroid/media/AudioManager;

    .line 481
    sget-object p3, Lcom/android/mms/transaction/MessagingNotification;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p3

    .line 483
    .local p3, valueMode:I
    const/4 p5, 0x1

    if-ne p3, p5, :cond_d4

    .line 484
    iget p3, v0, Landroid/app/Notification;->defaults:I

    .end local p3           #valueMode:I
    or-int/lit8 p3, p3, 0x2

    iput p3, v0, Landroid/app/Notification;->defaults:I

    .line 491
    :cond_6b
    :goto_6b
    const-string p3, "pref_key_ringtone"

    const/4 p4, 0x0

    invoke-interface {v1, p3, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local p4           #vibrate:Z
    move-result-object p4

    .line 494
    .local p4, ringtoneStr:Ljava/lang/String;
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    .line 496
    .local p5, ringtoneUri:Landroid/net/Uri;
    const-string p3, "content://media"

    invoke-virtual {p4, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_dd

    .line 498
    invoke-static {p0, p5}, Lcom/android/mms/ui/MessageUtils;->getFilepathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    .line 499
    .local p3, filepath:Ljava/lang/String;
    const-string p6, "MessagingNotification"

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string p9, "Notification filename FromContentUri :"

    .end local p9
    invoke-virtual {p7, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p7

    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static {p6, p7}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    if-nez p3, :cond_dd

    .line 503
    const-string p3, "MessagingNotification"

    .end local p3           #filepath:Ljava/lang/String;
    const-string p5, "Error!! set Default Notification  /system/notification_sound"

    .end local p5           #ringtoneUri:Landroid/net/Uri;
    invoke-static {p3, p5}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string p3, "content://settings/system/notification_sound"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 507
    .local p3, ringtoneUri:Landroid/net/Uri;
    :goto_a9
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    .end local p4           #ringtoneStr:Ljava/lang/String;
    if-eqz p4, :cond_b0

    const/4 p3, 0x0

    .end local p3           #ringtoneUri:Landroid/net/Uri;
    :cond_b0
    iput-object p3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 512
    :cond_b2
    iget p3, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 p3, p3, 0x1

    iput p3, v0, Landroid/app/Notification;->flags:I

    .line 513
    const p3, -0xff0100

    iput p3, v0, Landroid/app/Notification;->ledARGB:I

    .line 514
    const/16 p3, 0x1f4

    iput p3, v0, Landroid/app/Notification;->ledOnMS:I

    .line 515
    const/16 p3, 0x7d0

    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    .line 517
    const-string p3, "notification"

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/NotificationManager;

    .line 520
    .local p0, nm:Landroid/app/NotificationManager;
    const/16 p3, 0x7b

    invoke-virtual {p0, p3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_d

    .line 486
    .local p0, context:Landroid/content/Context;
    .local p3, valueMode:I
    .local p4, vibrate:Z
    .restart local p9
    :cond_d4
    if-eqz p4, :cond_6b

    .line 487
    iget p3, v0, Landroid/app/Notification;->defaults:I

    .end local p3           #valueMode:I
    or-int/lit8 p3, p3, 0x2

    iput p3, v0, Landroid/app/Notification;->defaults:I

    goto :goto_6b

    .end local p9
    .local p4, ringtoneStr:Ljava/lang/String;
    .restart local p5       #ringtoneUri:Landroid/net/Uri;
    :cond_dd
    move-object p3, p5

    .end local p5           #ringtoneUri:Landroid/net/Uri;
    .local p3, ringtoneUri:Landroid/net/Uri;
    goto :goto_a9
.end method

.method public static updateSendFailedNotification(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 722
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_e

    .line 723
    const/16 v0, 0x315

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 727
    :goto_d
    return-void

    .line 725
    :cond_e
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;)V

    goto :goto_d
.end method

.method public static updateSendFailedNotificationForThread(Landroid/content/Context;J)V
    .registers 8
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 733
    const/4 v1, 0x2

    new-array v0, v1, [J

    fill-array-data v0, :array_22

    .line 734
    .local v0, msgThreadId:[J
    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v1

    if-lez v1, :cond_21

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_21

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_21

    .line 737
    const/16 v1, 0x315

    invoke-static {p0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 739
    :cond_21
    return-void

    .line 733
    :array_22
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
