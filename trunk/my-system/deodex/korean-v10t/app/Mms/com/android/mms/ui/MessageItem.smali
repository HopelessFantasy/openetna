.class public Lcom/android/mms/ui/MessageItem;
.super Ljava/lang/Object;
.source "MessageItem.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mAddress:Ljava/lang/String;

.field mAttachmentType:I

.field mBody:Ljava/lang/String;

.field final mBoxId:I

.field mCachedFormattedMessage:Ljava/lang/CharSequence;

.field mContact:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field mDeliveryReport:Z

.field mDoc:Ljava/lang/String;

.field mErrorType:I

.field mMac:Ljava/lang/String;

.field mMessageSize:I

.field mMessageType:I

.field mMessageUri:Landroid/net/Uri;

.field final mMsgId:J

.field mPriority:I

.field mReadReport:Z

.field mSec:Ljava/lang/String;

.field mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field mSubject:Ljava/lang/String;

.field mThreadType:I

.field mTimestamp:Ljava/lang/String;

.field final mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-string v0, "MessageItem"

    sput-object v0, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;I)V
    .registers 32
    .parameter "context"
    .parameter "type"
    .parameter "cursor"
    .parameter "columnsMap"
    .parameter "threadType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    .line 97
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mThreadType:I

    .line 98
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move/from16 v22, v0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    .line 100
    const-string v22, "sms"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3b

    const-string v22, "cbs"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16a

    .line 101
    :cond_3b
    invoke-static {}, Lcom/android/mms/util/ContactInfoCache;->getInstance()Lcom/android/mms/util/ContactInfoCache;

    move-result-object v6

    .line 102
    .local v6, infoCache:Lcom/android/mms/util/ContactInfoCache;
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 103
    const-string v22, "sms"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_107

    .line 104
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsStatus:I

    move/from16 v22, v0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    const-wide/16 v24, -0x1

    cmp-long v22, v22, v24

    if-eqz v22, :cond_103

    const/16 v22, 0x1

    :goto_69
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryReport:Z

    .line 109
    :cond_6f
    :goto_6f
    sget-object v22, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v23, v0

    invoke-static/range {v22 .. v24}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 111
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    move/from16 v22, v0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 112
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    move/from16 v22, v0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 113
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v22

    if-eqz v22, :cond_153

    .line 114
    const v22, 0x7f070013

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 117
    .local v7, meString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mThreadType:I

    move/from16 v22, v0

    if-nez v22, :cond_11d

    .line 118
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 129
    .end local v7           #meString:Ljava/lang/String;
    :goto_cd
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move/from16 v22, v0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 132
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move/from16 v22, v0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 134
    .local v4, date:J
    move-object/from16 v0, p1

    move-wide v1, v4

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    .line 291
    .end local v4           #date:J
    .end local v6           #infoCache:Lcom/android/mms/util/ContactInfoCache;
    :cond_fc
    :goto_fc
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    .line 292
    return-void

    .line 104
    .restart local v6       #infoCache:Lcom/android/mms/util/ContactInfoCache;
    :cond_103
    const/16 v22, 0x0

    goto/16 :goto_69

    .line 106
    :cond_107
    const-string v22, "cbs"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6f

    .line 107
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryReport:Z

    goto/16 :goto_6f

    .line 120
    .restart local v7       #meString:Ljava/lang/String;
    :cond_11d
    const v22, 0x7f070010

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v7, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/ContactInfoCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    goto/16 :goto_cd

    .line 127
    .end local v7           #meString:Ljava/lang/String;
    :cond_153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/ContactInfoCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    goto/16 :goto_cd

    .line 137
    .end local v6           #infoCache:Lcom/android/mms/util/ContactInfoCache;
    :cond_16a
    const-string v22, "mms"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_48c

    .line 138
    sget-object v22, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v23, v0

    invoke-static/range {v22 .. v24}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 139
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    move/from16 v22, v0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 140
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageType:I

    move/from16 v22, v0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    .line 141
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsErrorType:I

    move/from16 v22, v0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mErrorType:I

    .line 142
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubject:I

    move/from16 v22, v0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 143
    .local v17, subject:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1f9

    .line 144
    new-instance v21, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubjectCharset:I

    move/from16 v22, v0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v23

    invoke-direct/range {v21 .. v23}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 147
    .local v21, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    .line 150
    .end local v21           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1f9
    const-wide/16 v18, 0x0

    .line 151
    .local v18, timestamp:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v12

    .line 152
    .local v12, p:Lcom/google/android/mms/pdu/PduPersister;
    const/16 v22, 0x82

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_292

    .line 153
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryReport:Z

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v10

    check-cast v10, Lcom/google/android/mms/pdu/NotificationInd;

    .line 155
    .local v10, notifInd:Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 157
    new-instance v22, Ljava/lang/String;

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 158
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    .line 159
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    mul-long v18, v22, v24

    .line 239
    .end local v10           #notifInd:Lcom/google/android/mms/pdu/NotificationInd;
    :goto_25b
    const/16 v22, 0x82

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_47c

    .line 240
    const v22, 0x7f07001a

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p1

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_fc

    .line 161
    :cond_292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    move-object v0, v12

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v8

    check-cast v8, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 162
    .local v8, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/MessageUtils;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    .line 165
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getPriority()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mPriority:I

    .line 167
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move/from16 v22, v0

    const/16 v23, 0x84

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_393

    .line 168
    move-object v0, v8

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    move-object v15, v0

    .line 169
    .local v15, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 170
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/RetrieveConf;->getDate()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    mul-long v18, v22, v24

    .line 179
    .end local v8           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v15           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :goto_2f2
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDeliveryReport:I

    move/from16 v22, v0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 180
    .local v13, report:Ljava/lang/String;
    if-eqz v13, :cond_319

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    const v23, 0x7f070013

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3b6

    .line 182
    :cond_319
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryReport:Z

    .line 195
    :goto_321
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReadReport:I

    move/from16 v22, v0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 196
    if-eqz v13, :cond_348

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    const v23, 0x7f070013

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3e2

    .line 198
    :cond_348
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 210
    :goto_350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v16

    .line 211
    .local v16, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v16, :cond_381

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v22

    if-eqz v22, :cond_381

    .line 212
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v20

    .line 213
    .local v20, tm:Lcom/android/mms/model/TextModel;
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/TextModel;->isDrmProtected()Z

    move-result v22

    if-eqz v22, :cond_40e

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f070024

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 235
    .end local v20           #tm:Lcom/android/mms/model/TextModel;
    :cond_381
    :goto_381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    goto/16 :goto_25b

    .line 173
    .end local v13           #report:Ljava/lang/String;
    .end local v16           #slide:Lcom/android/mms/model/SlideModel;
    .restart local v8       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :cond_393
    const v22, 0x7f070013

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 175
    check-cast v8, Lcom/google/android/mms/pdu/SendReq;

    .end local v8           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v8}, Lcom/google/android/mms/pdu/SendReq;->getDate()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    mul-long v18, v22, v24

    goto/16 :goto_2f2

    .line 186
    .restart local v13       #report:Ljava/lang/String;
    :cond_3b6
    :try_start_3b6
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 187
    .local v14, reportInt:I
    const/16 v22, 0x80

    move v0, v14

    move/from16 v1, v22

    if-ne v0, v1, :cond_3df

    const/16 v22, 0x1

    :goto_3c3
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryReport:Z
    :try_end_3c9
    .catch Ljava/lang/NumberFormatException; {:try_start_3b6 .. :try_end_3c9} :catch_3cb

    goto/16 :goto_321

    .line 189
    .end local v14           #reportInt:I
    :catch_3cb
    move-exception v22

    move-object/from16 v9, v22

    .line 190
    .local v9, nfe:Ljava/lang/NumberFormatException;
    sget-object v22, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    const-string v23, "Value for delivery report was invalid."

    invoke-static/range {v22 .. v23}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryReport:Z

    goto/16 :goto_321

    .line 187
    .end local v9           #nfe:Ljava/lang/NumberFormatException;
    .restart local v14       #reportInt:I
    :cond_3df
    const/16 v22, 0x0

    goto :goto_3c3

    .line 202
    .end local v14           #reportInt:I
    :cond_3e2
    :try_start_3e2
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 203
    .restart local v14       #reportInt:I
    const/16 v22, 0x80

    move v0, v14

    move/from16 v1, v22

    if-ne v0, v1, :cond_40b

    const/16 v22, 0x1

    :goto_3ef
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z
    :try_end_3f5
    .catch Ljava/lang/NumberFormatException; {:try_start_3e2 .. :try_end_3f5} :catch_3f7

    goto/16 :goto_350

    .line 204
    .end local v14           #reportInt:I
    :catch_3f7
    move-exception v22

    move-object/from16 v9, v22

    .line 205
    .restart local v9       #nfe:Ljava/lang/NumberFormatException;
    sget-object v22, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    const-string v23, "Value for read report was invalid."

    invoke-static/range {v22 .. v23}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    goto/16 :goto_350

    .line 203
    .end local v9           #nfe:Ljava/lang/NumberFormatException;
    .restart local v14       #reportInt:I
    :cond_40b
    const/16 v22, 0x0

    goto :goto_3ef

    .line 216
    .end local v14           #reportInt:I
    .restart local v16       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v20       #tm:Lcom/android/mms/model/TextModel;
    :cond_40e
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 220
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v11

    .line 221
    .local v11, operatorCode:Ljava/lang/String;
    const-string v22, "KTF"

    move-object v0, v11

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_381

    .line 223
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/model/TextModel;->getCharset()I

    move-result v3

    .line 224
    .local v3, bodyChSet:I
    sget-object v22, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Body Charset: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/16 v22, 0x4

    move v0, v3

    move/from16 v1, v22

    if-ne v0, v1, :cond_381

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_381

    .line 227
    new-instance v21, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    .line 228
    .restart local v21       #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    goto/16 :goto_381

    .line 243
    .end local v3           #bodyChSet:I
    .end local v11           #operatorCode:Ljava/lang/String;
    .end local v13           #report:Ljava/lang/String;
    .end local v16           #slide:Lcom/android/mms/model/SlideModel;
    .end local v20           #tm:Lcom/android/mms/model/TextModel;
    .end local v21           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_47c
    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_fc

    .line 248
    .end local v12           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v17           #subject:Ljava/lang/String;
    .end local v18           #timestamp:J
    :cond_48c
    const-string v22, "push"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4a4

    const-string v22, "prov"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5c6

    .line 249
    :cond_4a4
    invoke-static {}, Lcom/android/mms/util/ContactInfoCache;->getInstance()Lcom/android/mms/util/ContactInfoCache;

    move-result-object v6

    .line 250
    .restart local v6       #infoCache:Lcom/android/mms/util/ContactInfoCache;
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 251
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryReport:Z

    .line 252
    sget-object v22, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v23, v0

    invoke-static/range {v22 .. v24}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 255
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    move/from16 v22, v0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 258
    const-string v22, "push"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_59d

    .line 259
    const v22, 0x7f070150

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 267
    :goto_4fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object v0, v6

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/ContactInfoCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 268
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsSubject:I

    move/from16 v22, v0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    .line 269
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move/from16 v22, v0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 272
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move/from16 v22, v0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 274
    .restart local v4       #date:J
    move-object/from16 v0, p1

    move-wide v1, v4

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    .line 278
    const-string v22, "prov"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_fc

    .line 280
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWapServiceMac:I

    move/from16 v22, v0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mMac:Ljava/lang/String;

    .line 281
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWapServiceSec:I

    move/from16 v22, v0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mSec:Ljava/lang/String;

    .line 282
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWapServiceDoc:I

    move/from16 v22, v0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDoc:Ljava/lang/String;

    goto/16 :goto_fc

    .line 260
    .end local v4           #date:J
    :cond_59d
    const-string v22, "prov"

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5bc

    .line 261
    const v22, 0x7f070151

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    goto/16 :goto_4fb

    .line 263
    :cond_5bc
    const-string v22, "Message"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    goto/16 :goto_4fb

    .line 288
    .end local v6           #infoCache:Lcom/android/mms/util/ContactInfoCache;
    :cond_5c6
    new-instance v22, Lcom/google/android/mms/MmsException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unknown type of the message: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v22
.end method

.method private getTimestampStrId()I
    .registers 3

    .prologue
    .line 316
    const/16 v0, 0x82

    iget v1, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    if-ne v0, v1, :cond_a

    .line 317
    const v0, 0x7f07001a

    .line 319
    :goto_9
    return v0

    :cond_a
    const v0, 0x7f070019

    goto :goto_9
.end method

.method private interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .registers 5
    .parameter "from"

    .prologue
    .line 306
    if-eqz p1, :cond_17

    .line 307
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 308
    invoke-static {}, Lcom/android/mms/util/ContactInfoCache;->getInstance()Lcom/android/mms/util/ContactInfoCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/ContactInfoCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 313
    :goto_16
    return-void

    .line 310
    :cond_17
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    goto :goto_16
.end method


# virtual methods
.method public getCachedFormattedMessage()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isCbs()Z
    .registers 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v1, "cbs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDownloaded()Z
    .registers 3

    .prologue
    .line 345
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v1, 0x82

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isMms()Z
    .registers 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOutgoingMessage()Z
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 349
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v2

    if-eqz v2, :cond_29

    iget v2, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v2, v6, :cond_29

    move v0, v5

    .line 350
    .local v0, isOutgoingMms:Z
    :goto_e
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v2

    if-eqz v2, :cond_2b

    iget v2, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_22

    iget v2, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-eq v2, v6, :cond_22

    iget v2, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2b

    :cond_22
    move v1, v5

    .line 354
    .local v1, isOutgoingSms:Z
    :goto_23
    if-nez v0, :cond_27

    if-eqz v1, :cond_2d

    :cond_27
    move v2, v5

    :goto_28
    return v2

    .end local v0           #isOutgoingMms:Z
    .end local v1           #isOutgoingSms:Z
    :cond_29
    move v0, v4

    .line 349
    goto :goto_e

    .restart local v0       #isOutgoingMms:Z
    :cond_2b
    move v1, v4

    .line 350
    goto :goto_23

    .restart local v1       #isOutgoingSms:Z
    :cond_2d
    move v2, v4

    .line 354
    goto :goto_28
.end method

.method public isProv()Z
    .registers 3

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v1, "prov"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPush()Z
    .registers 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v1, "push"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSms()Z
    .registers 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCachedFormattedMessage(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "formattedMessage"

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    .line 364
    return-void
.end method
