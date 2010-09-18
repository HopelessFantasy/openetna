.class public Lcom/android/providers/telephony/SmsProvider;
.super Landroid/content/ContentProvider;
.source "SmsProvider.java"


# static fields
.field private static final ICC_COLUMNS:[Ljava/lang/String; = null

.field private static final ICC_URI:Landroid/net/Uri; = null

.field private static final NOTIFICATION_URI:Landroid/net/Uri; = null

.field private static final ONE:Ljava/lang/Integer; = null

.field private static final SMS_ALL:I = 0x0

.field private static final SMS_ALL_ICC:I = 0x16

.field private static final SMS_ALL_ID:I = 0x1

.field private static final SMS_ATTACHMENT:I = 0x10

.field private static final SMS_ATTACHMENT_ID:I = 0x11

.field private static final SMS_CONVERSATIONS:I = 0xa

.field private static final SMS_CONVERSATIONS_ID:I = 0xb

.field private static final SMS_DRAFT:I = 0x6

.field private static final SMS_DRAFT_ID:I = 0x7

.field private static final SMS_FAILED:I = 0x18

.field private static final SMS_FAILED_ID:I = 0x19

.field private static final SMS_ICC:I = 0x17

.field private static final SMS_INBOX:I = 0x2

.field private static final SMS_INBOX_ID:I = 0x3

.field private static final SMS_NEW_THREAD_ID:I = 0x12

.field private static final SMS_OUTBOX:I = 0x8

.field private static final SMS_OUTBOX_ID:I = 0x9

.field private static final SMS_QUERY_THREAD_ID:I = 0x13

.field private static final SMS_QUEUED:I = 0x1a

.field private static final SMS_RAW_MESSAGE:I = 0xf

.field private static final SMS_SENT:I = 0x4

.field private static final SMS_SENT_ID:I = 0x5

.field private static final SMS_STATUS_ID:I = 0x14

.field private static final SMS_STATUS_PENDING:I = 0x15

.field private static final SMS_UNDELIVERED:I = 0x1b

.field private static final STATUS_ON_SIM_READ:I = 0x1

.field private static final STATUS_ON_SIM_SENT:I = 0x5

.field private static final STATUS_ON_SIM_UNREAD:I = 0x3

.field private static final STATUS_ON_SIM_UNSENT:I = 0x7

.field private static final TABLE_RAW:Ljava/lang/String; = "raw"

.field static final TABLE_SMS:Ljava/lang/String; = "sms"

.field private static final TABLE_SR_PENDING:Ljava/lang/String; = "sr_pending"

.field private static final TAG:Ljava/lang/String; = "SmsProvider"

.field private static final VND_ANDROID_DIR_SMS:Ljava/lang/String; = "vnd.android.cursor.dir/sms"

.field private static final VND_ANDROID_SMS:Ljava/lang/String; = "vnd.android.cursor.item/sms"

.field private static final VND_ANDROID_SMSCHAT:Ljava/lang/String; = "vnd.android.cursor.item/sms-chat"

.field private static final sConversationProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIDProjection:[Ljava/lang/String;

.field private static final sURLMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v3, "sms"

    .line 48
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->NOTIFICATION_URI:Landroid/net/Uri;

    .line 49
    const-string v0, "content://sms/icc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->ICC_URI:Landroid/net/Uri;

    .line 54
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->ONE:Ljava/lang/Integer;

    .line 69
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "service_center_address"

    aput-object v1, v0, v5

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "message_class"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "index_on_icc"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_status_report"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "status_on_icc"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->ICC_COLUMNS:[Ljava/lang/String;

    .line 688
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    .line 690
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->sIDProjection:[Ljava/lang/String;

    .line 718
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    .line 722
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 723
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "#"

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 724
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "inbox"

    invoke-virtual {v0, v3, v1, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 725
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "inbox/#"

    invoke-virtual {v0, v3, v1, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 726
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "sent"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 727
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "sent/#"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 728
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "draft"

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 729
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "draft/#"

    const/4 v2, 0x7

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 730
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "outbox"

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 731
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "outbox/#"

    const/16 v2, 0x9

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 732
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "undelivered"

    const/16 v2, 0x1b

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 733
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "failed"

    const/16 v2, 0x18

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 734
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "failed/#"

    const/16 v2, 0x19

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 735
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "queued"

    const/16 v2, 0x1a

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 736
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "conversations"

    const/16 v2, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 737
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "conversations/*"

    const/16 v2, 0xb

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 738
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "raw"

    const/16 v2, 0xf

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 739
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "attachments"

    const/16 v2, 0x10

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 740
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "attachments/#"

    const/16 v2, 0x11

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 741
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "threadID"

    const/16 v2, 0x12

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 742
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "threadID/*"

    const/16 v2, 0x13

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 743
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "status/#"

    const/16 v2, 0x14

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 744
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "sr_pending"

    const/16 v2, 0x15

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 745
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "icc"

    const/16 v2, 0x16

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 746
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "icc/#"

    const/16 v2, 0x17

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 748
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "sim"

    const/16 v2, 0x16

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 749
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    const-string v1, "sms"

    const-string v1, "sim/#"

    const/16 v2, 0x17

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 751
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    const-string v1, "snippet"

    const-string v2, "body AS snippet"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    sget-object v0, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    const-string v1, "delta"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V
    .registers 5
    .parameter "qb"
    .parameter "type"

    .prologue
    .line 327
    const-string v0, "sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 329
    if-eqz p2, :cond_1d

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 332
    :cond_1d
    return-void
.end method

.method private constructQueryForUndelivered(Landroid/database/sqlite/SQLiteQueryBuilder;)V
    .registers 3
    .parameter "qb"

    .prologue
    .line 335
    const-string v0, "sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 337
    const-string v0, "(type=4 OR type=5 OR type=6)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 340
    return-void
.end method

.method private convertIccToSms(Landroid/telephony/SmsMessage;)Ljava/util/ArrayList;
    .registers 6
    .parameter "message"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SmsMessage;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v0, result:Ljava/util/ArrayList;
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getStatusOnIcc()I

    move-result v1

    .line 248
    .local v1, tmpstatusonsim:I
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    const/4 v2, 0x1

    if-eq v1, v2, :cond_16

    const/4 v2, 0x3

    if-ne v1, v2, :cond_70

    .line 253
    :cond_16
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_1d
    :goto_1d
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getStatusOnIcc()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getIndexOnIcc()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isStatusReportMessage()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    const-string v2, "sms"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    return-object v0

    .line 254
    :cond_70
    const/4 v2, 0x5

    if-eq v1, v2, :cond_76

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1d

    .line 255
    :cond_76
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDestinationAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1d
.end method

.method private deleteMessageFromIcc(Ljava/lang/String;)I
    .registers 9
    .parameter "messageIndexString"

    .prologue
    const/4 v6, 0x0

    .line 585
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    .line 588
    .local v2, smsManager:Landroid/telephony/SmsManager;
    :try_start_5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(I)Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_c} :catch_20

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    .line 595
    :goto_10
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 597
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/providers/telephony/SmsProvider;->ICC_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 598
    return v3

    .line 588
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_1e
    const/4 v3, 0x0

    goto :goto_10

    .line 591
    :catch_20
    move-exception v3

    move-object v1, v3

    .line 592
    .local v1, exception:Ljava/lang/NumberFormatException;
    :try_start_22
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad SMS ICC ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3b
    .catchall {:try_start_22 .. :try_end_3b} :catchall_3b

    .line 595
    .end local v1           #exception:Ljava/lang/NumberFormatException;
    :catchall_3b
    move-exception v3

    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 597
    .restart local v0       #cr:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/providers/telephony/SmsProvider;->ICC_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 598
    throw v3
.end method

.method private getAllMessagesFromIcc()Landroid/database/Cursor;
    .registers 9

    .prologue
    .line 308
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v5

    .line 309
    .local v5, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual {v5}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc()Ljava/util/ArrayList;

    move-result-object v3

    .line 310
    .local v3, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v4, rows:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-ge v1, v0, :cond_26

    .line 313
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SmsMessage;

    .line 314
    .local v2, message:Landroid/telephony/SmsMessage;
    if-eqz v2, :cond_23

    .line 315
    invoke-direct {p0, v2}, Lcom/android/providers/telephony/SmsProvider;->convertIccToSms(Landroid/telephony/SmsMessage;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 318
    .end local v2           #message:Landroid/telephony/SmsMessage;
    :cond_26
    new-instance v6, Lcom/android/internal/database/ArrayListCursor;

    sget-object v7, Lcom/android/providers/telephony/SmsProvider;->ICC_COLUMNS:[Ljava/lang/String;

    invoke-direct {v6, v7, v4}, Lcom/android/internal/database/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {p0, v6}, Lcom/android/providers/telephony/SmsProvider;->withIccNotificationUri(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v6

    return-object v6
.end method

.method private getSingleMessageFromIcc(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter "messageIndexString"

    .prologue
    .line 285
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 286
    .local v2, messageIndex:I
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v5

    .line 287
    .local v5, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual {v5}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc()Ljava/util/ArrayList;

    move-result-object v3

    .line 288
    .local v3, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v4, singleRow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SmsMessage;

    .line 291
    .local v1, message:Landroid/telephony/SmsMessage;
    if-nez v1, :cond_4d

    .line 292
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Message not retrieved. ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_32} :catch_32

    .line 298
    .end local v1           #message:Landroid/telephony/SmsMessage;
    .end local v2           #messageIndex:I
    .end local v3           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    .end local v4           #singleRow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    .end local v5           #smsManager:Landroid/telephony/SmsManager;
    :catch_32
    move-exception v6

    move-object v0, v6

    .line 299
    .local v0, exception:Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad SMS ICC ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 295
    .end local v0           #exception:Ljava/lang/NumberFormatException;
    .restart local v1       #message:Landroid/telephony/SmsMessage;
    .restart local v2       #messageIndex:I
    .restart local v3       #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    .restart local v4       #singleRow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    .restart local v5       #smsManager:Landroid/telephony/SmsManager;
    :cond_4d
    :try_start_4d
    invoke-direct {p0, v1}, Lcom/android/providers/telephony/SmsProvider;->convertIccToSms(Landroid/telephony/SmsMessage;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v6, Lcom/android/internal/database/ArrayListCursor;

    sget-object v7, Lcom/android/providers/telephony/SmsProvider;->ICC_COLUMNS:[Ljava/lang/String;

    invoke-direct {v6, v7, v4}, Lcom/android/internal/database/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-direct {p0, v6}, Lcom/android/providers/telephony/SmsProvider;->withIccNotificationUri(Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_5e
    .catch Ljava/lang/NumberFormatException; {:try_start_4d .. :try_end_5e} :catch_32

    move-result-object v6

    return-object v6
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .registers 5
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 673
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 674
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {v0, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 675
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 676
    const-string v1, "content://mms-sms/conversations/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 677
    return-void
.end method

.method private withIccNotificationUri(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/providers/telephony/SmsProvider;->ICC_URI:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 323
    return-object p1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 16
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 519
    sget-object v8, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 520
    .local v4, match:I
    iget-object v8, p0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 521
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sparse-switch v4, :sswitch_data_dc

    .line 571
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Unknown URL"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 523
    :sswitch_17
    const-string v8, "sms"

    invoke-virtual {v1, v8, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 524
    .local v0, count:I
    if-eqz v0, :cond_22

    .line 526
    invoke-static {v1, p2, p3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateAllThreads(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 574
    .end local p3
    :cond_22
    :goto_22
    if-lez v0, :cond_27

    .line 575
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/SmsProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_27
    move v8, v0

    .line 577
    .end local v0           #count:I
    :goto_28
    return v8

    .line 532
    .restart local p3
    :sswitch_29
    :try_start_29
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 533
    .local v6, message_id:I
    invoke-static {v1, v6}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->deleteOneSms(Landroid/database/sqlite/SQLiteDatabase;I)I
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3b} :catch_3d

    move-result v0

    .restart local v0       #count:I
    goto :goto_22

    .line 534
    .end local v0           #count:I
    .end local v6           #message_id:I
    :catch_3d
    move-exception v8

    move-object v2, v8

    .line 535
    .local v2, e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad message id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 544
    .end local v2           #e:Ljava/lang/Exception;
    .restart local p0
    .restart local p3
    :sswitch_63
    :try_start_63
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_71} :catch_94

    move-result v7

    .line 552
    .local v7, threadID:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "thread_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p2}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 553
    const-string v8, "sms"

    invoke-virtual {v1, v8, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 554
    .restart local v0       #count:I
    int-to-long v8, v7

    invoke-static {v1, v8, v9}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_22

    .line 545
    .end local v0           #count:I
    .end local v7           #threadID:I
    :catch_94
    move-exception v8

    move-object v3, v8

    .line 546
    .local v3, ex:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad conversation thread id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 558
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local p0
    :sswitch_ba
    const-string v8, "raw"

    invoke-virtual {v1, v8, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 559
    .restart local v0       #count:I
    goto/16 :goto_22

    .line 562
    .end local v0           #count:I
    :sswitch_c2
    const-string v8, "sr_pending"

    invoke-virtual {v1, v8, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 563
    .restart local v0       #count:I
    goto/16 :goto_22

    .line 566
    .end local v0           #count:I
    :sswitch_ca
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 568
    .local v5, messageIndexString:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/providers/telephony/SmsProvider;->deleteMessageFromIcc(Ljava/lang/String;)I

    move-result v8

    goto/16 :goto_28

    .line 521
    nop

    :sswitch_data_dc
    .sparse-switch
        0x0 -> :sswitch_17
        0x1 -> :sswitch_29
        0xb -> :sswitch_63
        0xf -> :sswitch_ba
        0x15 -> :sswitch_c2
        0x17 -> :sswitch_ca
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 7
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    const-string v4, "vnd.android.cursor.item/sms"

    const-string v3, "vnd.android.cursor.dir/sms"

    .line 344
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_48

    .line 362
    const/4 v1, 0x0

    .end local p0
    :goto_11
    return-object v1

    .line 346
    .restart local p0
    :pswitch_12
    const-string v1, "vnd.android.cursor.dir/sms"

    move-object v1, v3

    goto :goto_11

    .line 349
    :pswitch_16
    :try_start_16
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 350
    const-string v1, "vnd.android.cursor.item/sms"
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_26} :catch_28

    move-object v1, v4

    goto :goto_11

    .line 351
    :catch_28
    move-exception v1

    move-object v0, v1

    .line 352
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v1, "vnd.android.cursor.dir/sms"

    move-object v1, v3

    goto :goto_11

    .line 356
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    .restart local p0
    :pswitch_2e
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    const-string v1, "conversations"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 357
    const-string v1, "vnd.android.cursor.item/sms-chat"

    goto :goto_11

    .line 359
    :cond_43
    const-string v1, "vnd.android.cursor.item/sms"

    move-object v1, v4

    goto :goto_11

    .line 344
    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_12
        :pswitch_16
        :pswitch_2e
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 28
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 369
    const/16 v21, 0x0

    .line 371
    .local v21, type:I
    sget-object v4, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v16

    .line 373
    .local v16, match:I
    const-string v4, "SmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", match="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v19, "sms"

    .line 378
    .local v19, table:Ljava/lang/String;
    sparse-switch v16, :sswitch_data_206

    .line 430
    const-string v4, "SmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v4, 0x0

    .line 513
    :goto_54
    return-object v4

    .line 380
    :sswitch_55
    const-string v4, "type"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    .line 381
    .local v22, typeObj:Ljava/lang/Integer;
    if-eqz v22, :cond_179

    .line 382
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 434
    .end local v22           #typeObj:Ljava/lang/Integer;
    :goto_64
    const-string v4, "sms"

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d5

    .line 435
    const/4 v10, 0x0

    .line 436
    .local v10, addDate:Z
    const/4 v11, 0x0

    .line 439
    .local v11, addType:Z
    if-nez p2, :cond_1a5

    .line 440
    new-instance v24, Landroid/content/ContentValues;

    const/4 v4, 0x1

    move-object/from16 v0, v24

    move v1, v4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 441
    .local v24, values:Landroid/content/ContentValues;
    const/4 v10, 0x1

    .line 442
    const/4 v11, 0x1

    .line 455
    :cond_7e
    :goto_7e
    if-eqz v10, :cond_92

    .line 456
    const-string v4, "date"

    new-instance v5, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 459
    :cond_92
    if-eqz v11, :cond_a3

    if-eqz v21, :cond_a3

    .line 460
    const-string v4, "type"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 464
    :cond_a3
    const-string v4, "thread_id"

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    .line 465
    .local v20, threadId:Ljava/lang/Long;
    const-string v4, "address"

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 467
    .local v12, address:Ljava/lang/String;
    if-eqz v20, :cond_c1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_d8

    :cond_c1
    if-eqz v12, :cond_d8

    .line 468
    const-string v4, "thread_id"

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v12}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 472
    :cond_d8
    const/4 v4, 0x1

    move/from16 v0, v21

    move v1, v4

    if-ne v0, v1, :cond_1c8

    .line 474
    const-string v4, "person"

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_12c

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12c

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    invoke-static {v5, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "person"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 481
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_12c

    .line 482
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_129

    .line 483
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 484
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 485
    .local v15, id:Ljava/lang/Long;
    const-string v4, "person"

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 487
    .end local v15           #id:Ljava/lang/Long;
    :cond_129
    invoke-interface {v13}, Landroid/database/Cursor;->deactivate()V

    .line 502
    .end local v10           #addDate:Z
    .end local v11           #addType:Z
    .end local v12           #address:Ljava/lang/String;
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v20           #threadId:Ljava/lang/Long;
    :cond_12c
    :goto_12c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    .line 503
    .local v14, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "body"

    move-object v0, v14

    move-object/from16 v1, v19

    move-object v2, v4

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v17

    .line 504
    .local v17, rowID:J
    const-wide/16 v4, 0x0

    cmp-long v4, v17, v4

    if-lez v4, :cond_1e6

    .line 505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    .line 506
    .local v23, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/SmsProvider;->notifyChange(Landroid/net/Uri;)V

    move-object/from16 v4, v23

    .line 507
    goto/16 :goto_54

    .line 385
    .end local v14           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v17           #rowID:J
    .end local v23           #uri:Landroid/net/Uri;
    .end local v24           #values:Landroid/content/ContentValues;
    .restart local v22       #typeObj:Ljava/lang/Integer;
    :cond_179
    const/16 v21, 0x1

    .line 387
    goto/16 :goto_64

    .line 390
    .end local v22           #typeObj:Ljava/lang/Integer;
    :sswitch_17d
    const/16 v21, 0x1

    .line 391
    goto/16 :goto_64

    .line 394
    :sswitch_181
    const/16 v21, 0x5

    .line 395
    goto/16 :goto_64

    .line 398
    :sswitch_185
    const/16 v21, 0x6

    .line 399
    goto/16 :goto_64

    .line 402
    :sswitch_189
    const/16 v21, 0x2

    .line 403
    goto/16 :goto_64

    .line 406
    :sswitch_18d
    const/16 v21, 0x3

    .line 407
    goto/16 :goto_64

    .line 410
    :sswitch_191
    const/16 v21, 0x4

    .line 411
    goto/16 :goto_64

    .line 414
    :sswitch_195
    const-string v19, "raw"

    .line 415
    goto/16 :goto_64

    .line 418
    :sswitch_199
    const-string v19, "sr_pending"

    .line 419
    goto/16 :goto_64

    .line 422
    :sswitch_19d
    const-string v19, "attachments"

    .line 423
    goto/16 :goto_64

    .line 426
    :sswitch_1a1
    const-string v19, "canonical_addresses"

    .line 427
    goto/16 :goto_64

    .line 444
    .restart local v10       #addDate:Z
    .restart local v11       #addType:Z
    :cond_1a5
    new-instance v24, Landroid/content/ContentValues;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 446
    .restart local v24       #values:Landroid/content/ContentValues;
    const-string v4, "date"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1ba

    .line 447
    const/4 v10, 0x1

    .line 450
    :cond_1ba
    const-string v4, "type"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7e

    .line 451
    const/4 v11, 0x1

    goto/16 :goto_7e

    .line 492
    .restart local v12       #address:Ljava/lang/String;
    .restart local v20       #threadId:Ljava/lang/Long;
    :cond_1c8
    const-string v4, "read"

    sget-object v5, Lcom/android/providers/telephony/SmsProvider;->ONE:Ljava/lang/Integer;

    move-object/from16 v0, v24

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_12c

    .line 495
    .end local v10           #addDate:Z
    .end local v11           #addType:Z
    .end local v12           #address:Ljava/lang/String;
    .end local v20           #threadId:Ljava/lang/Long;
    .end local v24           #values:Landroid/content/ContentValues;
    :cond_1d5
    if-nez p2, :cond_1e2

    .line 496
    new-instance v24, Landroid/content/ContentValues;

    const/4 v4, 0x1

    move-object/from16 v0, v24

    move v1, v4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .restart local v24       #values:Landroid/content/ContentValues;
    goto/16 :goto_12c

    .line 498
    .end local v24           #values:Landroid/content/ContentValues;
    :cond_1e2
    move-object/from16 v24, p2

    .restart local v24       #values:Landroid/content/ContentValues;
    goto/16 :goto_12c

    .line 509
    .restart local v14       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v17       #rowID:J
    :cond_1e6
    const-string v4, "SmsProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SmsProvider.insert: failed! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v4, 0x0

    goto/16 :goto_54

    .line 378
    nop

    :sswitch_data_206
    .sparse-switch
        0x0 -> :sswitch_55
        0x2 -> :sswitch_17d
        0x4 -> :sswitch_189
        0x6 -> :sswitch_18d
        0x8 -> :sswitch_191
        0xf -> :sswitch_195
        0x10 -> :sswitch_19d
        0x12 -> :sswitch_1a1
        0x15 -> :sswitch_199
        0x18 -> :sswitch_181
        0x1a -> :sswitch_185
    .end sparse-switch
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 19
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 99
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 102
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 103
    .local v9, match:I
    packed-switch v9, :pswitch_data_1f2

    .line 217
    :pswitch_e
    const-string v2, "SmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v2, 0x0

    .line 236
    .end local p0
    .end local p1
    :goto_27
    return-object v2

    .line 105
    .restart local p0
    .restart local p1
    :pswitch_28
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    .line 221
    .end local p1
    :cond_2c
    :goto_2c
    const/4 v7, 0x0

    .line 223
    .local v7, orderBy:Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e2

    .line 224
    move-object/from16 v7, p5

    .line 229
    :cond_35
    :goto_35
    iget-object v2, p0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 230
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 234
    .local v11, ret:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/providers/telephony/SmsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/providers/telephony/SmsProvider;->NOTIFICATION_URI:Landroid/net/Uri;

    invoke-interface {v11, v2, v3}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v2, v11

    .line 236
    goto :goto_27

    .line 109
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v11           #ret:Landroid/database/Cursor;
    .restart local p1
    :pswitch_55
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForUndelivered(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    goto :goto_2c

    .line 113
    :pswitch_59
    const/4 v2, 0x5

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_2c

    .line 117
    :pswitch_5e
    const/4 v2, 0x6

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_2c

    .line 121
    :pswitch_63
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_2c

    .line 125
    :pswitch_68
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_2c

    .line 129
    :pswitch_6d
    const/4 v2, 0x3

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_2c

    .line 133
    :pswitch_72
    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/SmsProvider;->constructQueryForBox(Landroid/database/sqlite/SQLiteQueryBuilder;I)V

    goto :goto_2c

    .line 137
    :pswitch_77
    const-string v2, "sms"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .line 146
    .restart local p1
    :pswitch_a4
    const-string v2, "sms"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    .line 154
    .restart local p1
    :pswitch_d2
    :try_start_d2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 156
    .local v12, threadID:I
    const-string v2, "SmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query conversations: threadID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_f9} :catch_116

    .line 166
    const-string v2, "sms"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    .line 159
    .end local v12           #threadID:I
    :catch_116
    move-exception v2

    move-object v8, v2

    .line 160
    .local v8, ex:Ljava/lang/Exception;
    const-string v2, "SmsProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad conversation thread id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v2, 0x0

    goto/16 :goto_27

    .line 171
    .end local v8           #ex:Ljava/lang/Exception;
    .restart local p0
    :pswitch_13e
    const-string v2, "sms, (SELECT thread_id AS group_thread_id, MAX(date)AS group_date,COUNT(*) AS msg_count FROM sms GROUP BY thread_id) AS groups"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 173
    const-string v2, "sms.thread_id = groups.group_thread_id AND sms.date =groups.group_date"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 175
    sget-object v2, Lcom/android/providers/telephony/SmsProvider;->sConversationProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_2c

    .line 179
    :pswitch_14f
    const-string v2, "raw"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 183
    :pswitch_156
    const-string v2, "sr_pending"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 187
    :pswitch_15d
    const-string v2, "attachments"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 191
    :pswitch_164
    const-string v2, "attachments"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(sms_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    .line 197
    .restart local p1
    :pswitch_192
    const-string v2, "canonical_addresses"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 198
    if-nez p2, :cond_2c

    .line 199
    sget-object p2, Lcom/android/providers/telephony/SmsProvider;->sIDProjection:[Ljava/lang/String;

    goto/16 :goto_2c

    .line 204
    :pswitch_19d
    const-string v2, "sms"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_2c

    .line 209
    .restart local p1
    :pswitch_1cb
    invoke-direct {p0}, Lcom/android/providers/telephony/SmsProvider;->getAllMessagesFromIcc()Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_27

    .line 212
    :pswitch_1d1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 214
    .local v10, messageIndexString:Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/android/providers/telephony/SmsProvider;->getSingleMessageFromIcc(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto/16 :goto_27

    .line 225
    .end local v10           #messageIndexString:Ljava/lang/String;
    .end local p1
    .restart local v7       #orderBy:Ljava/lang/String;
    :cond_1e2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 226
    const-string v7, "date DESC"

    goto/16 :goto_35

    .line 103
    :pswitch_data_1f2
    .packed-switch 0x0
        :pswitch_28
        :pswitch_77
        :pswitch_63
        :pswitch_a4
        :pswitch_68
        :pswitch_a4
        :pswitch_6d
        :pswitch_a4
        :pswitch_72
        :pswitch_a4
        :pswitch_13e
        :pswitch_d2
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_14f
        :pswitch_15d
        :pswitch_164
        :pswitch_e
        :pswitch_192
        :pswitch_19d
        :pswitch_156
        :pswitch_1cb
        :pswitch_1d1
        :pswitch_59
        :pswitch_a4
        :pswitch_5e
        :pswitch_55
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 15
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const/4 v8, 0x1

    const-string v9, "_id="

    .line 604
    const/4 v0, 0x0

    .line 605
    .local v0, count:I
    const-string v4, "sms"

    .line 606
    .local v4, table:Ljava/lang/String;
    const/4 v3, 0x0

    .line 607
    .local v3, extraWhere:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/providers/telephony/SmsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 609
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/android/providers/telephony/SmsProvider;->sURLMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    packed-switch v6, :pswitch_data_e0

    .line 659
    :pswitch_16
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not supported"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 611
    :pswitch_35
    const-string v4, "raw"

    .line 663
    :goto_37
    :pswitch_37
    invoke-static {p3, v3}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 664
    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 666
    if-lez v0, :cond_44

    .line 667
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/SmsProvider;->notifyChange(Landroid/net/Uri;)V

    .line 669
    :cond_44
    return v0

    .line 615
    :pswitch_45
    const-string v4, "sr_pending"

    .line 616
    goto :goto_37

    .line 629
    :pswitch_48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 630
    goto :goto_37

    .line 637
    :pswitch_67
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 638
    goto :goto_37

    .line 641
    :pswitch_85
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 644
    .local v5, threadId:Ljava/lang/String;
    :try_start_8f
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_92} :catch_a6

    .line 650
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "thread_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 651
    goto :goto_37

    .line 645
    :catch_a6
    move-exception v2

    .line 646
    .local v2, ex:Ljava/lang/Exception;
    const-string v6, "SmsProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad conversation thread id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_37

    .line 655
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v5           #threadId:Ljava/lang/String;
    :pswitch_c1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 656
    goto/16 :goto_37

    .line 609
    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_37
        :pswitch_48
        :pswitch_37
        :pswitch_67
        :pswitch_37
        :pswitch_67
        :pswitch_37
        :pswitch_67
        :pswitch_37
        :pswitch_67
        :pswitch_37
        :pswitch_85
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_35
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_c1
        :pswitch_45
        :pswitch_16
        :pswitch_16
        :pswitch_37
        :pswitch_67
        :pswitch_37
    .end packed-switch
.end method
