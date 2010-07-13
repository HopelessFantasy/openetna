.class public Lcom/google/android/mms/pdu/PduPersister;
.super Ljava/lang/Object;
.source "PduPersister.java"


# static fields
.field private static final ADDRESS_FIELDS:[I = null

.field private static final CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DUMMY_THREAD_ID:J = 0x7fffffffffffffffL

.field private static final ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCAL_LOGV:Z = false

.field private static final LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LONG_COLUMN_NAME_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MESSAGE_BOX_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PART_COLUMN_CHARSET:I = 0x1

.field private static final PART_COLUMN_CONTENT_DISPOSITION:I = 0x2

.field private static final PART_COLUMN_CONTENT_ID:I = 0x3

.field private static final PART_COLUMN_CONTENT_LOCATION:I = 0x4

.field private static final PART_COLUMN_CONTENT_TYPE:I = 0x5

.field private static final PART_COLUMN_FILENAME:I = 0x6

.field private static final PART_COLUMN_ID:I = 0x0

.field private static final PART_COLUMN_NAME:I = 0x7

.field private static final PART_PROJECTION:[Ljava/lang/String; = null

.field private static final PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache; = null

.field private static final PDU_COLUMN_CONTENT_CLASS:I = 0xb

.field private static final PDU_COLUMN_CONTENT_LOCATION:I = 0x5

.field private static final PDU_COLUMN_CONTENT_TYPE:I = 0x6

.field private static final PDU_COLUMN_DATE:I = 0x15

.field private static final PDU_COLUMN_DELIVERY_REPORT:I = 0xc

.field private static final PDU_COLUMN_DELIVERY_TIME:I = 0x16

.field private static final PDU_COLUMN_EXPIRY:I = 0x17

.field private static final PDU_COLUMN_ID:I = 0x0

.field private static final PDU_COLUMN_MESSAGE_BOX:I = 0x1

.field private static final PDU_COLUMN_MESSAGE_CLASS:I = 0x7

.field private static final PDU_COLUMN_MESSAGE_ID:I = 0x8

.field private static final PDU_COLUMN_MESSAGE_SIZE:I = 0x18

.field private static final PDU_COLUMN_MESSAGE_TYPE:I = 0xd

.field private static final PDU_COLUMN_MMS_VERSION:I = 0xe

.field private static final PDU_COLUMN_PRIORITY:I = 0xf

.field private static final PDU_COLUMN_READ_REPORT:I = 0x10

.field private static final PDU_COLUMN_READ_STATUS:I = 0x11

.field private static final PDU_COLUMN_REPORT_ALLOWED:I = 0x12

.field private static final PDU_COLUMN_RESPONSE_TEXT:I = 0x9

.field private static final PDU_COLUMN_RETRIEVE_STATUS:I = 0x13

.field private static final PDU_COLUMN_RETRIEVE_TEXT:I = 0x3

.field private static final PDU_COLUMN_RETRIEVE_TEXT_CHARSET:I = 0x1a

.field private static final PDU_COLUMN_STATUS:I = 0x14

.field private static final PDU_COLUMN_SUBJECT:I = 0x4

.field private static final PDU_COLUMN_SUBJECT_CHARSET:I = 0x19

.field private static final PDU_COLUMN_THREAD_ID:I = 0x2

.field private static final PDU_COLUMN_TRANSACTION_ID:I = 0xa

.field private static final PDU_PROJECTION:[Ljava/lang/String; = null

.field public static final PROC_STATUS_COMPLETED:I = 0x3

.field public static final PROC_STATUS_PERMANENTLY_FAILURE:I = 0x2

.field public static final PROC_STATUS_TRANSIENT_FAILURE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PduPersister"

.field public static final TEMPORARY_DRM_OBJECT_URI:Ljava/lang/String; = "content://mms/9223372036854775807/part"

.field private static final TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sPersister:Lcom/google/android/mms/pdu/PduPersister;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x9a

    const/16 v5, 0x96

    const/4 v4, 0x3

    const/4 v3, 0x4

    .line 88
    new-array v0, v3, [I

    fill-array-data v0, :array_410

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    .line 95
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "msg_box"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const-string v1, "retr_txt"

    aput-object v1, v0, v4

    const-string v1, "sub"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "ct_l"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ct_t"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "m_cls"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "m_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "resp_txt"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "tr_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ct_cls"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "read_status"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "rpt_a"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "retr_st"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "d_tm"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "exp"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "m_size"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "retr_txt_cs"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    .line 153
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const-string v1, "chset"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string v2, "cd"

    aput-object v2, v0, v1

    const-string v1, "cid"

    aput-object v1, v0, v4

    const-string v1, "cl"

    aput-object v1, v0, v3

    const/4 v1, 0x5

    const-string v2, "ct"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "fn"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->PART_PROJECTION:[Ljava/lang/String;

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    .line 188
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 194
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 198
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_txt_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 203
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 207
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 212
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 220
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_t"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "resp_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tr_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 229
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 241
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_rpt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "read_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rpt_a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 254
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 260
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_tm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "exp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-static {}, Lcom/google/android/mms/util/PduCache;->getInstance()Lcom/google/android/mms/util/PduCache;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    .line 266
    return-void

    .line 88
    :array_410
    .array-data 0x4
        0x81t 0x0t 0x0t 0x0t
        0x82t 0x0t 0x0t 0x0t
        0x89t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    .line 273
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 274
    return-void
.end method

.method private getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B
    .registers 4
    .parameter "c"
    .parameter "columnIndex"

    .prologue
    .line 333
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 334
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 336
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .registers 4
    .parameter "data"

    .prologue
    .line 1190
    :try_start_0
    const-string v1, "iso-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 1194
    :goto_6
    return-object v1

    .line 1191
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1193
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v1, "PduPersister"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1194
    const/4 v1, 0x0

    new-array v1, v1, [B

    goto :goto_6
.end method

.method private getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .registers 4
    .parameter "c"
    .parameter "columnIndex"

    .prologue
    .line 326
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 327
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 329
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;
    .registers 2
    .parameter "context"

    .prologue
    .line 278
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 279
    :cond_e
    new-instance v0, Lcom/google/android/mms/pdu/PduPersister;

    invoke-direct {v0, p0}, Lcom/google/android/mms/pdu/PduPersister;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 282
    :cond_15
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    return-object v0
.end method

.method private loadAddress(JLcom/google/android/mms/pdu/PduHeaders;)V
    .registers 16
    .parameter "msgId"
    .parameter "headers"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 453
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "address"

    aput-object v5, v3, v10

    const-string v5, "charset"

    aput-object v5, v3, v6

    const-string v5, "type"

    aput-object v5, v3, v11

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 458
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_9a

    .line 460
    :cond_3c
    :goto_3c
    :try_start_3c
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 461
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 462
    .local v7, addr:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 463
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 464
    .local v8, addrType:I
    sparse-switch v8, :sswitch_data_9c

    .line 478
    const-string v0, "PduPersister"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown address type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_3c .. :try_end_6d} :catchall_6e

    goto :goto_3c

    .line 484
    .end local v7           #addr:Ljava/lang/String;
    .end local v8           #addrType:I
    :catchall_6e
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 466
    .restart local v7       #addr:Ljava/lang/String;
    .restart local v8       #addrType:I
    :sswitch_73
    :try_start_73
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {p3, v0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    goto :goto_3c

    .line 473
    :sswitch_85
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {p3, v0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_96
    .catchall {:try_start_73 .. :try_end_96} :catchall_6e

    goto :goto_3c

    .line 484
    .end local v7           #addr:Ljava/lang/String;
    .end local v8           #addrType:I
    :cond_97
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 487
    :cond_9a
    return-void

    .line 464
    nop

    :sswitch_data_9c
    .sparse-switch
        0x81 -> :sswitch_85
        0x82 -> :sswitch_85
        0x89 -> :sswitch_73
        0x97 -> :sswitch_85
    .end sparse-switch
.end method

.method private loadParts(J)[Lcom/google/android/mms/pdu/PduPart;
    .registers 36
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://mms/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/part"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/google/android/mms/pdu/PduPersister;->PART_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 344
    .local v13, c:Landroid/database/Cursor;
    const/16 v31, 0x0

    .line 347
    .local v31, parts:[Lcom/google/android/mms/pdu/PduPart;
    if-eqz v13, :cond_3d

    :try_start_37
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_152

    move-result v4

    if-nez v4, :cond_44

    .line 351
    :cond_3d
    const/4 v4, 0x0

    .line 444
    if-eqz v13, :cond_43

    .line 445
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 449
    :cond_43
    :goto_43
    return-object v4

    .line 354
    :cond_44
    :try_start_44
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v25

    .line 355
    .local v25, partCount:I
    const/16 v28, 0x0

    .line 356
    .local v28, partIdx:I
    move/from16 v0, v25

    new-array v0, v0, [Lcom/google/android/mms/pdu/PduPart;

    move-object/from16 v31, v0

    move/from16 v29, v28

    .line 357
    .end local v28           #partIdx:I
    .local v29, partIdx:I
    :goto_52
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_191

    .line 358
    new-instance v24, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v24 .. v24}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 359
    .local v24, part:Lcom/google/android/mms/pdu/PduPart;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v14

    .line 361
    .local v14, charset:Ljava/lang/Integer;
    if-eqz v14, :cond_72

    .line 362
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v24

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 365
    :cond_72
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v15

    .line 367
    .local v15, contentDisposition:[B
    if-eqz v15, :cond_83

    .line 368
    move-object/from16 v0, v24

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 371
    :cond_83
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v16

    .line 373
    .local v16, contentId:[B
    if-eqz v16, :cond_95

    .line 374
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 377
    :cond_95
    const/4 v4, 0x4

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v17

    .line 379
    .local v17, contentLocation:[B
    if-eqz v17, :cond_a7

    .line 380
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 383
    :cond_a7
    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v18

    .line 385
    .local v18, contentType:[B
    if-eqz v18, :cond_14a

    .line 386
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 391
    const/4 v4, 0x6

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v20

    .line 393
    .local v20, fileName:[B
    if-eqz v20, :cond_cb

    .line 394
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 397
    :cond_cb
    const/4 v4, 0x7

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v23

    .line 399
    .local v23, name:[B
    if-eqz v23, :cond_dd

    .line 400
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 404
    :cond_dd
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 405
    .local v26, partId:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/part/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    .line 406
    .local v30, partURI:Landroid/net/Uri;
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 410
    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v32

    .line 411
    .local v32, type:Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_189

    invoke-static/range {v32 .. v32}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_189

    invoke-static/range {v32 .. v32}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_189

    .line 414
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_11e
    .catchall {:try_start_44 .. :try_end_11e} :catchall_152

    .line 415
    .local v11, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v21, 0x0

    .line 418
    .local v21, is:Ljava/io/InputStream;
    :try_start_120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v21

    .line 420
    const/16 v4, 0x100

    new-array v12, v4, [B

    .line 421
    .local v12, buffer:[B
    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v22

    .line 422
    .local v22, len:I
    :goto_137
    if-ltz v22, :cond_17a

    .line 423
    const/4 v4, 0x0

    move-object v0, v11

    move-object v1, v12

    move v2, v4

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 424
    move-object/from16 v0, v21

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_148
    .catchall {:try_start_120 .. :try_end_148} :catchall_173
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_148} :catch_159

    move-result v22

    goto :goto_137

    .line 388
    .end local v11           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v12           #buffer:[B
    .end local v20           #fileName:[B
    .end local v21           #is:Ljava/io/InputStream;
    .end local v22           #len:I
    .end local v23           #name:[B
    .end local v26           #partId:J
    .end local v30           #partURI:Landroid/net/Uri;
    .end local v32           #type:Ljava/lang/String;
    :cond_14a
    :try_start_14a
    new-instance v4, Lcom/google/android/mms/MmsException;

    const-string v5, "Content-Type must be set."

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_152
    .catchall {:try_start_14a .. :try_end_152} :catchall_152

    .line 444
    .end local v14           #charset:Ljava/lang/Integer;
    .end local v15           #contentDisposition:[B
    .end local v16           #contentId:[B
    .end local v17           #contentLocation:[B
    .end local v18           #contentType:[B
    .end local v24           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v25           #partCount:I
    .end local v29           #partIdx:I
    :catchall_152
    move-exception v4

    if-eqz v13, :cond_158

    .line 445
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 444
    :cond_158
    throw v4

    .line 426
    .restart local v11       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v14       #charset:Ljava/lang/Integer;
    .restart local v15       #contentDisposition:[B
    .restart local v16       #contentId:[B
    .restart local v17       #contentLocation:[B
    .restart local v18       #contentType:[B
    .restart local v20       #fileName:[B
    .restart local v21       #is:Ljava/io/InputStream;
    .restart local v23       #name:[B
    .restart local v24       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v25       #partCount:I
    .restart local v26       #partId:J
    .restart local v29       #partIdx:I
    .restart local v30       #partURI:Landroid/net/Uri;
    .restart local v32       #type:Ljava/lang/String;
    :catch_159
    move-exception v4

    move-object/from16 v19, v4

    .line 427
    .local v19, e:Ljava/io/IOException;
    :try_start_15c
    const-string v4, "PduPersister"

    const-string v5, "Failed to load part data"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 429
    new-instance v4, Lcom/google/android/mms/MmsException;

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_173
    .catchall {:try_start_15c .. :try_end_173} :catchall_173

    .line 431
    .end local v19           #e:Ljava/io/IOException;
    :catchall_173
    move-exception v4

    if-eqz v21, :cond_179

    .line 433
    :try_start_176
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_179
    .catchall {:try_start_176 .. :try_end_179} :catchall_152
    .catch Ljava/io/IOException; {:try_start_176 .. :try_end_179} :catch_19a

    .line 431
    :cond_179
    :goto_179
    :try_start_179
    throw v4
    :try_end_17a
    .catchall {:try_start_179 .. :try_end_17a} :catchall_152

    .restart local v12       #buffer:[B
    .restart local v22       #len:I
    :cond_17a
    if-eqz v21, :cond_17f

    .line 433
    :try_start_17c
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_17f
    .catchall {:try_start_17c .. :try_end_17f} :catchall_152
    .catch Ljava/io/IOException; {:try_start_17c .. :try_end_17f} :catch_1a7

    .line 439
    :cond_17f
    :goto_17f
    :try_start_17f
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 441
    .end local v11           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v12           #buffer:[B
    .end local v21           #is:Ljava/io/InputStream;
    .end local v22           #len:I
    :cond_189
    add-int/lit8 v28, v29, 0x1

    .end local v29           #partIdx:I
    .restart local v28       #partIdx:I
    aput-object v24, v31, v29
    :try_end_18d
    .catchall {:try_start_17f .. :try_end_18d} :catchall_152

    move/from16 v29, v28

    .line 442
    .end local v28           #partIdx:I
    .restart local v29       #partIdx:I
    goto/16 :goto_52

    .line 444
    .end local v14           #charset:Ljava/lang/Integer;
    .end local v15           #contentDisposition:[B
    .end local v16           #contentId:[B
    .end local v17           #contentLocation:[B
    .end local v18           #contentType:[B
    .end local v20           #fileName:[B
    .end local v23           #name:[B
    .end local v24           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v26           #partId:J
    .end local v30           #partURI:Landroid/net/Uri;
    .end local v32           #type:Ljava/lang/String;
    :cond_191
    if-eqz v13, :cond_196

    .line 445
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_196
    move-object/from16 v4, v31

    .line 449
    goto/16 :goto_43

    .line 434
    .restart local v11       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v14       #charset:Ljava/lang/Integer;
    .restart local v15       #contentDisposition:[B
    .restart local v16       #contentId:[B
    .restart local v17       #contentLocation:[B
    .restart local v18       #contentType:[B
    .restart local v20       #fileName:[B
    .restart local v21       #is:Ljava/io/InputStream;
    .restart local v23       #name:[B
    .restart local v24       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v26       #partId:J
    .restart local v30       #partURI:Landroid/net/Uri;
    .restart local v32       #type:Ljava/lang/String;
    :catch_19a
    move-exception v19

    .line 435
    .restart local v19       #e:Ljava/io/IOException;
    :try_start_19b
    const-string v5, "PduPersister"

    const-string v6, "Failed to close stream"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_179

    .line 434
    .end local v19           #e:Ljava/io/IOException;
    .restart local v12       #buffer:[B
    .restart local v22       #len:I
    :catch_1a7
    move-exception v19

    .line 435
    .restart local v19       #e:Ljava/io/IOException;
    const-string v4, "PduPersister"

    const-string v5, "Failed to close stream"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b3
    .catchall {:try_start_19b .. :try_end_1b3} :catchall_152

    goto :goto_17f
.end method

.method private persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .registers 13
    .parameter "msgId"
    .parameter "type"
    .parameter "array"

    .prologue
    .line 628
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 630
    .local v5, values:Landroid/content/ContentValues;
    move-object v1, p4

    .local v1, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_9
    if-ge v2, v3, :cond_5a

    aget-object v0, v1, v2

    .line 631
    .local v0, addr:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 632
    const-string v6, "address"

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v6, "charset"

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 634
    const-string v6, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 636
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://mms/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/addr"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 637
    .local v4, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v6, v7, v4, v5}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 630
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 639
    .end local v0           #addr:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_5a
    return-void
.end method

.method private persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 16
    .parameter "part"
    .parameter "uri"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const-string v11, "IOException while closing: "

    const-string v10, "PduPersister"

    .line 718
    const/4 v6, 0x0

    .line 719
    .local v6, os:Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 722
    .local v4, is:Ljava/io/InputStream;
    :try_start_6
    iget-object v7, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 723
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v1

    .line 724
    .local v1, data:[B
    if-nez v1, :cond_5e

    .line 725
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    .line 726
    .local v2, dataUri:Landroid/net/Uri;
    if-eqz v2, :cond_1a

    if-ne v2, p2, :cond_2c

    .line 727
    :cond_1a
    const-string v7, "PduPersister"

    const-string v8, "Can\'t find data for this part."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_52
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_21} :catch_43
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_21} :catch_86

    .line 753
    if-eqz v6, :cond_26

    .line 755
    :try_start_23
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_c9

    .line 760
    :cond_26
    :goto_26
    if-eqz v4, :cond_2b

    .line 762
    :try_start_28
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_e4

    .line 768
    .end local v2           #dataUri:Landroid/net/Uri;
    :cond_2b
    :goto_2b
    return-void

    .line 730
    .restart local v2       #dataUri:Landroid/net/Uri;
    :cond_2c
    :try_start_2c
    iget-object v7, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 736
    const/16 v7, 0x100

    new-array v0, v7, [B

    .line 737
    .local v0, buffer:[B
    const/4 v5, 0x0

    .local v5, len:I
    :goto_37
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_61

    .line 738
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_42
    .catchall {:try_start_2c .. :try_end_42} :catchall_52
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_42} :catch_43
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_42} :catch_86

    goto :goto_37

    .line 746
    .end local v0           #buffer:[B
    .end local v1           #data:[B
    .end local v2           #dataUri:Landroid/net/Uri;
    .end local v5           #len:I
    :catch_43
    move-exception v7

    move-object v3, v7

    .line 747
    .local v3, e:Ljava/io/FileNotFoundException;
    :try_start_45
    const-string v7, "PduPersister"

    const-string v8, "Failed to open Input/Output stream."

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 748
    new-instance v7, Lcom/google/android/mms/MmsException;

    invoke-direct {v7, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_52

    .line 753
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catchall_52
    move-exception v7

    if-eqz v6, :cond_58

    .line 755
    :try_start_55
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_95

    .line 760
    :cond_58
    :goto_58
    if-eqz v4, :cond_5d

    .line 762
    :try_start_5a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_af

    .line 753
    :cond_5d
    :goto_5d
    throw v7

    .line 744
    .restart local v1       #data:[B
    :cond_5e
    :try_start_5e
    invoke-virtual {v6, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_52
    .catch Ljava/io/FileNotFoundException; {:try_start_5e .. :try_end_61} :catch_43
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_86

    .line 753
    :cond_61
    if-eqz v6, :cond_66

    .line 755
    :try_start_63
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_fb

    .line 760
    :cond_66
    :goto_66
    if-eqz v4, :cond_2b

    .line 762
    :try_start_68
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_2b

    .line 763
    :catch_6c
    move-exception v3

    .line 764
    .local v3, e:Ljava/io/IOException;
    const-string v7, "PduPersister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException while closing: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_82
    invoke-static {v10, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    .line 749
    .end local v1           #data:[B
    .end local v3           #e:Ljava/io/IOException;
    :catch_86
    move-exception v7

    move-object v3, v7

    .line 750
    .restart local v3       #e:Ljava/io/IOException;
    :try_start_88
    const-string v7, "PduPersister"

    const-string v8, "Failed to read/write data."

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 751
    new-instance v7, Lcom/google/android/mms/MmsException;

    invoke-direct {v7, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_95
    .catchall {:try_start_88 .. :try_end_95} :catchall_52

    .line 756
    .end local v3           #e:Ljava/io/IOException;
    :catch_95
    move-exception v3

    .line 757
    .restart local v3       #e:Ljava/io/IOException;
    const-string v8, "PduPersister"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException while closing: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    .line 763
    .end local v3           #e:Ljava/io/IOException;
    :catch_af
    move-exception v3

    .line 764
    .restart local v3       #e:Ljava/io/IOException;
    const-string v8, "PduPersister"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException while closing: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5d

    .line 756
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #data:[B
    .restart local v2       #dataUri:Landroid/net/Uri;
    :catch_c9
    move-exception v3

    .line 757
    .restart local v3       #e:Ljava/io/IOException;
    const-string v7, "PduPersister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException while closing: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    .line 763
    .end local v3           #e:Ljava/io/IOException;
    :catch_e4
    move-exception v3

    .line 764
    .restart local v3       #e:Ljava/io/IOException;
    const-string v7, "PduPersister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException while closing: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_82

    .line 756
    .end local v2           #dataUri:Landroid/net/Uri;
    .end local v3           #e:Ljava/io/IOException;
    :catch_fb
    move-exception v3

    .line 757
    .restart local v3       #e:Ljava/io/IOException;
    const-string v7, "PduPersister"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException while closing: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_66
.end method

.method private setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .registers 11
    .parameter "c"
    .parameter "columnIndex"
    .parameter "headers"
    .parameter "mapColumn"

    .prologue
    .line 288
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, s:Ljava/lang/String;
    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2c

    .line 290
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 291
    .local v1, charsetColumnIndex:I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 292
    .local v0, charset:I
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 294
    .local v3, value:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {p3, v3, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 296
    .end local v0           #charset:I
    .end local v1           #charsetColumnIndex:I
    .end local v3           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_2c
    return-void
.end method

.method private setLongToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .registers 8
    .parameter "c"
    .parameter "columnIndex"
    .parameter "headers"
    .parameter "mapColumn"

    .prologue
    .line 319
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 320
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 321
    .local v0, l:J
    invoke-virtual {p3, v0, v1, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    .line 323
    .end local v0           #l:J
    :cond_d
    return-void
.end method

.method private setOctetToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .registers 7
    .parameter "c"
    .parameter "columnIndex"
    .parameter "headers"
    .parameter "mapColumn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 311
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 312
    .local v0, b:I
    invoke-virtual {p3, v0, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 314
    .end local v0           #b:I
    :cond_d
    return-void
.end method

.method private setTextStringToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .registers 7
    .parameter "c"
    .parameter "columnIndex"
    .parameter "headers"
    .parameter "mapColumn"

    .prologue
    .line 301
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 303
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p3, v1, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 305
    :cond_d
    return-void
.end method

.method public static toIsoString([B)Ljava/lang/String;
    .registers 4
    .parameter "bytes"

    .prologue
    .line 1177
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "iso-8859-1"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1181
    :goto_7
    return-object v1

    .line 1178
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 1180
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v1, "PduPersister"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1181
    const-string v1, ""

    goto :goto_7
.end method

.method private updateAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .registers 10
    .parameter "msgId"
    .parameter "type"
    .parameter "array"

    .prologue
    .line 773
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 777
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/mms/pdu/PduPersister;->persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 778
    return-void
.end method

.method private updatePart(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;)V
    .registers 14
    .parameter "uri"
    .parameter "part"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 871
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x7

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 873
    .local v3, values:Landroid/content/ContentValues;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v6

    .line 874
    .local v6, charset:I
    if-eqz v6, :cond_16

    .line 875
    const-string v0, "chset"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 878
    :cond_16
    const/4 v7, 0x0

    .line 879
    .local v7, contentType:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    if-eqz v0, :cond_ab

    .line 880
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    .line 881
    const-string v0, "ct"

    invoke-virtual {v3, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 887
    new-instance v8, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    .line 888
    .local v8, fileName:Ljava/lang/String;
    const-string v0, "fn"

    invoke-virtual {v3, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    .end local v8           #fileName:Ljava/lang/String;
    :cond_3e
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v0

    if-eqz v0, :cond_52

    .line 892
    new-instance v9, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    .line 893
    .local v9, name:Ljava/lang/String;
    const-string v0, "name"

    invoke-virtual {v3, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    .end local v9           #name:Ljava/lang/String;
    :cond_52
    const/4 v10, 0x0

    .line 897
    .local v10, value:Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v0

    if-eqz v0, :cond_68

    .line 898
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v10

    .line 899
    .local v10, value:Ljava/lang/String;
    const-string v0, "cd"

    check-cast v10, Ljava/lang/String;

    .end local v10           #value:Ljava/lang/String;
    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    :cond_68
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 903
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v10

    .line 904
    .restart local v10       #value:Ljava/lang/String;
    const-string v0, "cid"

    check-cast v10, Ljava/lang/String;

    .end local v10           #value:Ljava/lang/String;
    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    :cond_7d
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    if-eqz v0, :cond_92

    .line 908
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v10

    .line 909
    .restart local v10       #value:Ljava/lang/String;
    const-string v0, "cl"

    check-cast v10, Ljava/lang/String;

    .end local v10           #value:Ljava/lang/String;
    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    :cond_92
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 917
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v0

    if-nez v0, :cond_a7

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    if-eq p1, v0, :cond_aa

    .line 919
    :cond_a7
    invoke-direct {p0, p2, p1, v7}, Lcom/google/android/mms/pdu/PduPersister;->persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;)V

    .line 921
    :cond_aa
    return-void

    .line 883
    :cond_ab
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "MIME type of the part must be set."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getPendingMessages(J)Landroid/database/Cursor;
    .registers 11
    .parameter "dueTime"

    .prologue
    .line 1210
    sget-object v0, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 1211
    .local v7, uriBuilder:Landroid/net/Uri$Builder;
    const-string v0, "protocol"

    const-string v1, "mms"

    invoke-virtual {v7, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1213
    const-string v4, "err_type < ? AND due_time <= ?"

    .line 1216
    .local v4, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 1221
    .local v5, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v6, "due_time"

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;
    .registers 31
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 497
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/mms/util/PduCacheEntry;

    .line 498
    .local v14, cacheEntry:Lcom/google/android/mms/util/PduCacheEntry;
    if-eqz v14, :cond_12

    .line 499
    invoke-virtual {v14}, Lcom/google/android/mms/util/PduCacheEntry;->getPdu()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v5

    .line 623
    :goto_11
    return-object v5

    .line 502
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object v6, v0

    sget-object v8, Lcom/google/android/mms/pdu/PduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p1

    invoke-static/range {v5 .. v11}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 504
    .local v13, c:Landroid/database/Cursor;
    new-instance v16, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .line 506
    .local v16, headers:Lcom/google/android/mms/pdu/PduHeaders;
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v20

    .line 511
    .local v20, msgId:J
    if-eqz v13, :cond_3f

    :try_start_32
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3f

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_62

    .line 512
    :cond_3f
    new-instance v5, Lcom/google/android/mms/MmsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_5b
    .catchall {:try_start_32 .. :try_end_5b} :catchall_5b

    .line 542
    :catchall_5b
    move-exception v5

    if-eqz v13, :cond_61

    .line 543
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 542
    :cond_61
    throw v5

    .line 515
    :cond_62
    const/4 v5, 0x1

    :try_start_63
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 516
    .local v19, msgBox:I
    const/4 v5, 0x2

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 518
    .local v27, threadId:J
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v26

    .line 519
    .local v26, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_76
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 520
    .local v15, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v6

    move-object/from16 v3, v16

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    goto :goto_76

    .line 524
    .end local v15           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_a1
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v26

    .line 525
    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_ab
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 526
    .restart local v15       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v6

    move-object/from16 v3, v16

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->setTextStringToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    goto :goto_ab

    .line 530
    .end local v15           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_d6
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v26

    .line 531
    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_e0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 532
    .restart local v15       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v6

    move-object/from16 v3, v16

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->setOctetToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    goto :goto_e0

    .line 536
    .end local v15           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_10b
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v26

    .line 537
    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_115
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_140

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 538
    .restart local v15       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v6

    move-object/from16 v3, v16

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->setLongToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    :try_end_13f
    .catchall {:try_start_63 .. :try_end_13f} :catchall_5b

    goto :goto_115

    .line 542
    .end local v15           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_140
    if-eqz v13, :cond_145

    .line 543
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 548
    :cond_145
    const-wide/16 v5, -0x1

    cmp-long v5, v20, v5

    if-nez v5, :cond_153

    .line 549
    new-instance v5, Lcom/google/android/mms/MmsException;

    const-string v6, "Error! ID of the message: -1."

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 553
    :cond_153
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->loadAddress(JLcom/google/android/mms/pdu/PduHeaders;)V

    .line 555
    const/16 v5, 0x8c

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v22

    .line 556
    .local v22, msgType:I
    new-instance v12, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v12}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 560
    .local v12, body:Lcom/google/android/mms/pdu/PduBody;
    const/16 v5, 0x84

    move/from16 v0, v22

    move v1, v5

    if-eq v0, v1, :cond_178

    const/16 v5, 0x80

    move/from16 v0, v22

    move v1, v5

    if-ne v0, v1, :cond_197

    .line 562
    :cond_178
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->loadParts(J)[Lcom/google/android/mms/pdu/PduPart;

    move-result-object v23

    .line 563
    .local v23, parts:[Lcom/google/android/mms/pdu/PduPart;
    if-eqz v23, :cond_197

    .line 564
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    .line 565
    .local v24, partsNum:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_189
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_197

    .line 566
    aget-object v5, v23, v17

    invoke-virtual {v12, v5}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 565
    add-int/lit8 v17, v17, 0x1

    goto :goto_189

    .line 571
    .end local v17           #i:I
    .end local v23           #parts:[Lcom/google/android/mms/pdu/PduPart;
    .end local v24           #partsNum:I
    :cond_197
    const/16 v25, 0x0

    .line 572
    .local v25, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    packed-switch v22, :pswitch_data_240

    .line 617
    new-instance v5, Lcom/google/android/mms/MmsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unrecognized PDU type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 574
    :pswitch_1b9
    new-instance v25, Lcom/google/android/mms/pdu/NotificationInd;

    .end local v25           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 621
    .restart local v25       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :goto_1c2
    new-instance v14, Lcom/google/android/mms/util/PduCacheEntry;

    .end local v14           #cacheEntry:Lcom/google/android/mms/util/PduCacheEntry;
    move-object v0, v14

    move-object/from16 v1, v25

    move/from16 v2, v19

    move-wide/from16 v3, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/mms/util/PduCacheEntry;-><init>(Lcom/google/android/mms/pdu/GenericPdu;IJ)V

    .line 622
    .restart local v14       #cacheEntry:Lcom/google/android/mms/util/PduCacheEntry;
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/util/PduCache;->put(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)Z

    move-object/from16 v5, v25

    .line 623
    goto/16 :goto_11

    .line 577
    :pswitch_1db
    new-instance v25, Lcom/google/android/mms/pdu/DeliveryInd;

    .end local v25           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 578
    .restart local v25       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_1c2

    .line 580
    :pswitch_1e5
    new-instance v25, Lcom/google/android/mms/pdu/ReadOrigInd;

    .end local v25           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 581
    .restart local v25       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_1c2

    .line 583
    :pswitch_1ef
    new-instance v25, Lcom/google/android/mms/pdu/RetrieveConf;

    .end local v25           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 584
    .restart local v25       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_1c2

    .line 586
    :pswitch_1fa
    new-instance v25, Lcom/google/android/mms/pdu/SendReq;

    .end local v25           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 587
    .restart local v25       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_1c2

    .line 589
    :pswitch_205
    new-instance v25, Lcom/google/android/mms/pdu/AcknowledgeInd;

    .end local v25           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 590
    .restart local v25       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_1c2

    .line 592
    :pswitch_20f
    new-instance v25, Lcom/google/android/mms/pdu/NotifyRespInd;

    .end local v25           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 593
    .restart local v25       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_1c2

    .line 595
    :pswitch_219
    new-instance v25, Lcom/google/android/mms/pdu/ReadRecInd;

    .end local v25           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 596
    .restart local v25       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    goto :goto_1c2

    .line 613
    :pswitch_223
    new-instance v5, Lcom/google/android/mms/MmsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported PDU type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 572
    :pswitch_data_240
    .packed-switch 0x80
        :pswitch_1fa
        :pswitch_223
        :pswitch_1b9
        :pswitch_20f
        :pswitch_1ef
        :pswitch_205
        :pswitch_1db
        :pswitch_219
        :pswitch_1e5
        :pswitch_223
        :pswitch_223
        :pswitch_223
        :pswitch_223
        :pswitch_223
        :pswitch_223
        :pswitch_223
        :pswitch_223
        :pswitch_223
        :pswitch_223
        :pswitch_223
        :pswitch_223
        :pswitch_223
        :pswitch_223
        :pswitch_223
    .end packed-switch
.end method

.method public move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 12
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1151
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 1152
    .local v7, msgId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-nez v0, :cond_13

    .line 1153
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "Error! ID of the message: -1."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1157
    :cond_13
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1158
    .local v6, msgBox:Ljava/lang/Integer;
    if-nez v6, :cond_25

    .line 1159
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1166
    :cond_25
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1167
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "msg_box"

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1168
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1169
    invoke-static {p2, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 45
    .parameter "pdu"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 989
    if-nez p2, :cond_a

    .line 990
    new-instance v5, Lcom/google/android/mms/MmsException;

    const-string v6, "Uri may not be null."

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 993
    :cond_a
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Integer;

    .line 994
    .local v29, msgBox:Ljava/lang/Integer;
    if-nez v29, :cond_1f

    .line 995
    new-instance v5, Lcom/google/android/mms/MmsException;

    const-string v6, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1002
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v23

    .line 1003
    .local v23, header:Lcom/google/android/mms/pdu/PduHeaders;
    const/16 v16, 0x0

    .line 1004
    .local v16, body:Lcom/google/android/mms/pdu/PduBody;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1007
    .local v8, values:Landroid/content/ContentValues;
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v37

    .line 1008
    .local v37, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface/range {v37 .. v37}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, i$:Ljava/util/Iterator;
    :cond_34
    :goto_34
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_81

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 1009
    .local v20, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 1010
    .local v22, field:I
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v21

    .line 1011
    .local v21, encodedString:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v21, :cond_34

    .line 1012
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1013
    .local v17, charsetColumn:Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, v8

    move-object/from16 v1, v17

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_34

    .line 1018
    .end local v17           #charsetColumn:Ljava/lang/String;
    .end local v20           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v21           #encodedString:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v22           #field:I
    :cond_81
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v37

    .line 1019
    invoke-interface/range {v37 .. v37}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_8b
    :goto_8b
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b8

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 1020
    .restart local v20       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v38

    .line 1021
    .local v38, text:[B
    if-eqz v38, :cond_8b

    .line 1022
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static/range {v38 .. v38}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b

    .line 1026
    .end local v20           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v38           #text:[B
    :cond_b8
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v37

    .line 1027
    invoke-interface/range {v37 .. v37}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_c2
    :goto_c2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ef

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 1028
    .restart local v20       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v15

    .line 1029
    .local v15, b:I
    if-eqz v15, :cond_c2

    .line 1030
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_c2

    .line 1034
    .end local v15           #b:I
    .end local v20           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_ef
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v37

    .line 1035
    invoke-interface/range {v37 .. v37}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_f9
    :goto_f9
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12a

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 1036
    .restart local v20       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v26

    .line 1037
    .local v26, l:J
    const-wide/16 v5, -0x1

    cmp-long v5, v26, v5

    if-eqz v5, :cond_f9

    .line 1038
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_f9

    .line 1042
    .end local v20           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v26           #l:J
    :cond_12a
    new-instance v12, Ljava/util/HashMap;

    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v5, v5

    invoke-direct {v12, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 1045
    .local v12, addressMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    sget-object v13, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    .local v13, arr$:[I
    move-object v0, v13

    array-length v0, v0

    move/from16 v28, v0

    .local v28, len$:I
    const/16 v25, 0x0

    .local v25, i$:I
    :goto_13a
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_168

    aget v11, v13, v25

    .line 1046
    .local v11, addrType:I
    const/4 v14, 0x0

    .line 1047
    .local v14, array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v5, 0x89

    if-ne v11, v5, :cond_160

    .line 1048
    move-object/from16 v0, v23

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v41

    .line 1049
    .local v41, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v41, :cond_156

    .line 1050
    const/4 v5, 0x1

    new-array v14, v5, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1051
    const/4 v5, 0x0

    aput-object v41, v14, v5

    .line 1056
    .end local v41           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_156
    :goto_156
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    add-int/lit8 v25, v25, 0x1

    goto :goto_13a

    .line 1054
    :cond_160
    move-object/from16 v0, v23

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v14

    goto :goto_156

    .line 1059
    .end local v11           #addrType:I
    .end local v14           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_168
    new-instance v35, Ljava/util/HashSet;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashSet;-><init>()V

    .line 1060
    .local v35, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-wide v39, 0x7fffffffffffffffL

    .line 1061
    .local v39, threadId:J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v32

    .line 1066
    .local v32, msgType:I
    const/16 v5, 0x82

    move/from16 v0, v32

    move v1, v5

    if-eq v0, v1, :cond_18b

    const/16 v5, 0x84

    move/from16 v0, v32

    move v1, v5

    if-eq v0, v1, :cond_18b

    const/16 v5, 0x80

    move/from16 v0, v32

    move v1, v5

    if-ne v0, v1, :cond_1d5

    .line 1069
    :cond_18b
    const/4 v14, 0x0

    .line 1070
    .restart local v14       #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    packed-switch v32, :pswitch_data_2ba

    .line 1080
    :goto_18f
    :pswitch_18f
    if-eqz v14, :cond_1c9

    .line 1081
    move-object v13, v14

    .local v13, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v0, v13

    array-length v0, v0

    move/from16 v28, v0

    const/16 v25, 0x0

    :goto_198
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_1c9

    aget-object v41, v13, v25

    .line 1082
    .restart local v41       #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v41, :cond_1ac

    .line 1083
    invoke-virtual/range {v41 .. v41}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v35

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1081
    :cond_1ac
    add-int/lit8 v25, v25, 0x1

    goto :goto_198

    .line 1073
    .end local v41           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v13, arr$:[I
    :pswitch_1af
    const/16 v5, 0x89

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v14, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1074
    .restart local v14       #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_18f

    .line 1076
    :pswitch_1bc
    const/16 v5, 0x97

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    check-cast v14, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .restart local v14       #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_18f

    .line 1087
    .end local v13           #arr$:[I
    :cond_1c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v39

    .line 1089
    .end local v14           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1d5
    const-string v5, "thread_id"

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1093
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 1095
    .local v18, dummyId:J
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move v5, v0

    if-eqz v5, :cond_211

    .line 1096
    check-cast p1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v16

    .line 1098
    if-eqz v16, :cond_211

    .line 1099
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v34

    .line 1100
    .local v34, partsNum:I
    const/16 v24, 0x0

    .local v24, i:I
    :goto_1f7
    move/from16 v0, v24

    move/from16 v1, v34

    if-ge v0, v1, :cond_211

    .line 1101
    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v33

    .line 1102
    .local v33, part:Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    .line 1100
    add-int/lit8 v24, v24, 0x1

    goto :goto_1f7

    .line 1107
    .end local v24           #i:I
    .end local v33           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v34           #partsNum:I
    :cond_211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p2

    move-object v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v36

    .line 1108
    .local v36, res:Landroid/net/Uri;
    if-nez v36, :cond_22e

    .line 1109
    new-instance v5, Lcom/google/android/mms/MmsException;

    const-string v6, "persist() failed: return null."

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1114
    :cond_22e
    invoke-static/range {v36 .. v36}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v30

    .line 1115
    .local v30, msgId:J
    new-instance v8, Landroid/content/ContentValues;

    .end local v8           #values:Landroid/content/ContentValues;
    const/4 v5, 0x1

    invoke-direct {v8, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1116
    .restart local v8       #values:Landroid/content/ContentValues;
    const-string v5, "mid"

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://mms/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/part"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v36

    .line 1128
    sget-object v13, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    .restart local v13       #arr$:[I
    move-object v0, v13

    array-length v0, v0

    move/from16 v28, v0

    const/16 v25, 0x0

    :goto_299
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_2b9

    aget v11, v13, v25

    .line 1129
    .restart local v11       #addrType:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1130
    .restart local v14       #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v14, :cond_2b6

    .line 1131
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    move v3, v11

    move-object v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1128
    :cond_2b6
    add-int/lit8 v25, v25, 0x1

    goto :goto_299

    .line 1135
    .end local v11           #addrType:I
    .end local v14           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_2b9
    return-object v36

    .line 1070
    :pswitch_data_2ba
    .packed-switch 0x80
        :pswitch_1bc
        :pswitch_18f
        :pswitch_1af
        :pswitch_18f
        :pswitch_1af
    .end packed-switch
.end method

.method public persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;
    .registers 14
    .parameter "part"
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 643
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://mms/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/part"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 644
    .local v5, uri:Landroid/net/Uri;
    new-instance v7, Landroid/content/ContentValues;

    const/16 v8, 0x8

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 646
    .local v7, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v0

    .line 647
    .local v0, charset:I
    if-eqz v0, :cond_33

    .line 648
    const-string v8, "chset"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 651
    :cond_33
    const/4 v1, 0x0

    .line 652
    .local v1, contentType:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v8

    if-eqz v8, :cond_d3

    .line 653
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v1

    .line 654
    const-string v8, "ct"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v8, "application/smil"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    .line 657
    const-string v8, "seq"

    const/4 v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 663
    :cond_59
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v8

    if-eqz v8, :cond_6d

    .line 664
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/lang/String;-><init>([B)V

    .line 665
    .local v2, fileName:Ljava/lang/String;
    const-string v8, "fn"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    .end local v2           #fileName:Ljava/lang/String;
    :cond_6d
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v8

    if-eqz v8, :cond_81

    .line 669
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/String;-><init>([B)V

    .line 670
    .local v3, name:Ljava/lang/String;
    const-string v8, "name"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    .end local v3           #name:Ljava/lang/String;
    :cond_81
    const/4 v6, 0x0

    .line 674
    .local v6, value:Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v8

    if-eqz v8, :cond_97

    .line 675
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v6

    .line 676
    .local v6, value:Ljava/lang/String;
    const-string v8, "cd"

    check-cast v6, Ljava/lang/String;

    .end local v6           #value:Ljava/lang/String;
    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :cond_97
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v8

    if-eqz v8, :cond_ac

    .line 680
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v6

    .line 681
    .restart local v6       #value:Ljava/lang/String;
    const-string v8, "cid"

    check-cast v6, Ljava/lang/String;

    .end local v6           #value:Ljava/lang/String;
    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :cond_ac
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v8

    if-eqz v8, :cond_c1

    .line 685
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v6

    .line 686
    .restart local v6       #value:Ljava/lang/String;
    const-string v8, "cl"

    check-cast v6, Ljava/lang/String;

    .end local v6           #value:Ljava/lang/String;
    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_c1
    iget-object v8, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v8, v9, v5, v7}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 690
    .local v4, res:Landroid/net/Uri;
    if-nez v4, :cond_db

    .line 691
    new-instance v8, Lcom/google/android/mms/MmsException;

    const-string v9, "Failed to persist part, return null."

    invoke-direct {v8, v9}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 660
    .end local v4           #res:Landroid/net/Uri;
    :cond_d3
    new-instance v8, Lcom/google/android/mms/MmsException;

    const-string v9, "MIME type of the part must be set."

    invoke-direct {v8, v9}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 694
    .restart local v4       #res:Landroid/net/Uri;
    :cond_db
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/mms/pdu/PduPersister;->persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;)V

    .line 697
    invoke-virtual {p1, v4}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 699
    return-object v4
.end method

.method public release()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1202
    const-string v1, "content://mms/9223372036854775807/part"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1203
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2, v0, v3, v3}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1204
    return-void
.end method

.method public updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V
    .registers 40
    .parameter "uri"
    .parameter "sendReq"

    .prologue
    .line 788
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 790
    new-instance v8, Landroid/content/ContentValues;

    const/16 v5, 0x9

    invoke-direct {v8, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 791
    .local v8, values:Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getContentType()[B

    move-result-object v15

    .line 792
    .local v15, contentType:[B
    if-eqz v15, :cond_1e

    .line 793
    const-string v5, "ct_t"

    invoke-static {v15}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getDate()J

    move-result-wide v16

    .line 797
    .local v16, date:J
    const-wide/16 v5, -0x1

    cmp-long v5, v16, v5

    if-eqz v5, :cond_31

    .line 798
    const-string v5, "date"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 801
    :cond_31
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getDeliveryReport()I

    move-result v18

    .line 802
    .local v18, deliveryReport:I
    if-eqz v18, :cond_40

    .line 803
    const-string v5, "d_rpt"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 806
    :cond_40
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getExpiry()J

    move-result-wide v19

    .line 807
    .local v19, expiry:J
    const-wide/16 v5, -0x1

    cmp-long v5, v19, v5

    if-eqz v5, :cond_53

    .line 808
    const-string v5, "exp"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 811
    :cond_53
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getMessageClass()[B

    move-result-object v26

    .line 812
    .local v26, msgClass:[B
    if-eqz v26, :cond_62

    .line 813
    const-string v5, "m_cls"

    invoke-static/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    :cond_62
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPriority()I

    move-result v29

    .line 817
    .local v29, priority:I
    if-eqz v29, :cond_71

    .line 818
    const-string v5, "pri"

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 821
    :cond_71
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getReadReport()I

    move-result v30

    .line 822
    .local v30, readReport:I
    if-eqz v30, :cond_80

    .line 823
    const-string v5, "rr"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 826
    :cond_80
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getTransactionId()[B

    move-result-object v35

    .line 827
    .local v35, transId:[B
    if-eqz v35, :cond_8f

    .line 828
    const-string v5, "tr_id"

    invoke-static/range {v35 .. v35}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    :cond_8f
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v32

    .line 832
    .local v32, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v32, :cond_af

    .line 833
    const-string v5, "sub"

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const-string v5, "sub_cs"

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 837
    :cond_af
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v21

    .line 838
    .local v21, headers:Lcom/google/android/mms/pdu/PduHeaders;
    new-instance v31, Ljava/util/HashSet;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashSet;-><init>()V

    .line 839
    .local v31, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v12, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    .local v12, arr$:[I
    move-object v0, v12

    array-length v0, v0

    move/from16 v24, v0

    .local v24, len$:I
    const/16 v22, 0x0

    .local v22, i$:I
    move/from16 v23, v22

    .end local v12           #arr$:[I
    .end local v22           #i$:I
    .end local v24           #len$:I
    .local v23, i$:I
    :goto_c2
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_11c

    aget v11, v12, v23

    .line 840
    .local v11, addrType:I
    const/4 v14, 0x0

    .line 841
    .local v14, array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v5, 0x89

    if-ne v11, v5, :cond_10f

    .line 842
    move-object/from16 v0, v21

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v36

    .line 843
    .local v36, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v36, :cond_de

    .line 844
    const/4 v5, 0x1

    new-array v14, v5, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 845
    const/4 v5, 0x0

    aput-object v36, v14, v5

    .line 851
    .end local v36           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_de
    :goto_de
    if-eqz v14, :cond_117

    .line 852
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v27

    .line 853
    .local v27, msgId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    move v3, v11

    move-object v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->updateAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 854
    const/16 v5, 0x97

    if-ne v11, v5, :cond_117

    .line 855
    move-object v13, v14

    .local v13, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object v0, v13

    array-length v0, v0

    move/from16 v25, v0

    .local v25, len$:I
    const/16 v22, 0x0

    .end local v23           #i$:I
    .restart local v22       #i$:I
    :goto_f8
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_117

    aget-object v36, v13, v22

    .line 856
    .restart local v36       #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v36, :cond_10c

    .line 857
    invoke-virtual/range {v36 .. v36}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 855
    :cond_10c
    add-int/lit8 v22, v22, 0x1

    goto :goto_f8

    .line 848
    .end local v13           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v22           #i$:I
    .end local v25           #len$:I
    .end local v27           #msgId:J
    .end local v36           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v23       #i$:I
    :cond_10f
    move-object/from16 v0, v21

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v14

    goto :goto_de

    .line 839
    .end local v23           #i$:I
    :cond_117
    add-int/lit8 v22, v23, 0x1

    .restart local v22       #i$:I
    move/from16 v23, v22

    .end local v22           #i$:I
    .restart local v23       #i$:I
    goto :goto_c2

    .line 864
    .end local v11           #addrType:I
    .end local v14           #array:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_11c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v33

    .line 865
    .local v33, threadId:J
    const-string v5, "thread_id"

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object v6, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p1

    invoke-static/range {v5 .. v10}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 868
    return-void
.end method

.method public updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V
    .registers 24
    .parameter "uri"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 932
    sget-object v16, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/mms/util/PduCacheEntry;

    .line 933
    .local v4, cacheEntry:Lcom/google/android/mms/util/PduCacheEntry;
    if-eqz v4, :cond_1a

    .line 934
    invoke-virtual {v4}, Lcom/google/android/mms/util/PduCacheEntry;->getPdu()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v4

    .end local v4           #cacheEntry:Lcom/google/android/mms/util/PduCacheEntry;
    check-cast v4, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 937
    :cond_1a
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 938
    .local v14, toBeCreated:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 940
    .local v15, toBeUpdated:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v13

    .line 941
    .local v13, partsNum:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x28

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 942
    .local v6, filter:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_34
    if-ge v7, v13, :cond_87

    .line 943
    move-object/from16 v0, p2

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v11

    .line 944
    .local v11, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v12

    .line 945
    .local v12, partUri:Landroid/net/Uri;
    if-eqz v12, :cond_4f

    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v16

    const-string v17, "mms"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_55

    .line 946
    :cond_4f
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 942
    :goto_52
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    .line 948
    :cond_55
    invoke-virtual {v15, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_6c

    .line 953
    const-string v16, " AND "

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    :cond_6c
    const-string v16, "_id"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    const-string v16, "!="

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    invoke-virtual {v12}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v16

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_52

    .line 961
    .end local v11           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v12           #partUri:Landroid/net/Uri;
    :cond_87
    const/16 v16, 0x29

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 963
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    .line 966
    .local v9, msgId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide v1, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/part"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_f2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_d5
    const/16 v20, 0x0

    invoke-static/range {v16 .. v20}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 971
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_de
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_f5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/mms/pdu/PduPart;

    .line 972
    .restart local v11       #part:Lcom/google/android/mms/pdu/PduPart;
    move-object/from16 v0, p0

    move-object v1, v11

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    goto :goto_de

    .line 966
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_f2
    const/16 v19, 0x0

    goto :goto_d5

    .line 976
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_f5
    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local p1
    .end local p2
    :goto_fd
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_119

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 977
    .local v5, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {p0 .. p2}, Lcom/google/android/mms/pdu/PduPersister;->updatePart(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;)V

    goto :goto_fd

    .line 979
    .end local v5           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    :cond_119
    return-void
.end method
