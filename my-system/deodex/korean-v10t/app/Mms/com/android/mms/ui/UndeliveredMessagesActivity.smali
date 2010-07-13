.class public Lcom/android/mms/ui/UndeliveredMessagesActivity;
.super Landroid/app/ListActivity;
.source "UndeliveredMessagesActivity.java"


# static fields
.field static final COLUMN_ID:I = 0x1

.field static final COLUMN_MMS_BOX:I = 0xe

.field static final COLUMN_MMS_DATE:I = 0xb

.field static final COLUMN_MMS_ERROR_TYPE:I = 0xf

.field static final COLUMN_MMS_MSG_TYPE:I = 0xd

.field static final COLUMN_MMS_READ:I = 0xc

.field static final COLUMN_MMS_SUBJECT:I = 0x9

.field static final COLUMN_MMS_SUBJECT_CHARSET:I = 0xa

.field static final COLUMN_MSG_TYPE:I = 0x0

.field static final COLUMN_SMS_ADDRESS:I = 0x3

.field static final COLUMN_SMS_BODY:I = 0x4

.field static final COLUMN_SMS_BOX:I = 0x7

.field static final COLUMN_SMS_DATE:I = 0x5

.field static final COLUMN_SMS_READ:I = 0x6

.field static final COLUMN_SMS_STATUS:I = 0x8

.field static final COLUMN_THREAD_ID:I = 0x2

.field private static final DEBUG:Z = true

.field private static final MENU_DELETE:I = 0x2

.field private static final MENU_DELETE_MESSAGES:I = 0x1

.field private static final MENU_EDIT:I = 0x0

.field private static final MENU_RETRY_SENDING:I = 0x1

.field private static final MENU_RETRY_SENDING_ALL:I = 0x0

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "UndeliveredMessagesActivity"


# instance fields
.field private mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

.field private final mConfirmDeleteAllMessagesListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mConfirmDeleteMessageListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCursor:Landroid/database/Cursor;

.field private final mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const-string v4, "read"

    const-string v3, "date"

    .line 75
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v4, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "date"

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-string v2, "read"

    aput-object v4, v0, v1

    const/16 v1, 0xd

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "err_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 213
    new-instance v0, Lcom/android/mms/ui/UndeliveredMessagesActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity$2;-><init>(Lcom/android/mms/ui/UndeliveredMessagesActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 343
    new-instance v0, Lcom/android/mms/ui/UndeliveredMessagesActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity$3;-><init>(Lcom/android/mms/ui/UndeliveredMessagesActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mConfirmDeleteMessageListener:Landroid/content/DialogInterface$OnClickListener;

    .line 349
    new-instance v0, Lcom/android/mms/ui/UndeliveredMessagesActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity$4;-><init>(Lcom/android/mms/ui/UndeliveredMessagesActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mConfirmDeleteAllMessagesListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/UndeliveredMessagesActivity;JJLjava/lang/String;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->editMessage(JJLjava/lang/String;)V

    return-void
.end method

.method private confirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    .registers 6
    .parameter "messageId"
    .parameter "listener"

    .prologue
    .line 362
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 363
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 364
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 365
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 366
    const v1, 0x7f070070

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 367
    const v1, 0x7f070071

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 369
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 370
    return-void
.end method

.method static deleteMessageByCursor(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 9
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    .line 373
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, type:Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 375
    .local v1, msgId:J
    const-string v4, "sms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v4

    .line 376
    .local v0, baseUri:Landroid/net/Uri;
    :goto_16
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0, v4, v5, v6, v6}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 378
    return-void

    .line 375
    .end local v0           #baseUri:Landroid/net/Uri;
    :cond_22
    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v4

    goto :goto_16
.end method

.method private editMessage(JJLjava/lang/String;)V
    .registers 14
    .parameter "threadId"
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 247
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v7, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    .local v7, intent:Landroid/content/Intent;
    const-string v0, "thread_id"

    invoke-virtual {v7, v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 249
    const-string v0, "from_undelivered"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 251
    const-string v0, "sms"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 252
    sget-object v0, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 253
    .local v6, builder:Landroid/net/Uri$Builder;
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 254
    .local v2, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 255
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "type"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 265
    :goto_45
    const/4 v0, -0x1

    invoke-virtual {p0, v7, v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    .line 266
    return-void

    .line 258
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    .end local v6           #builder:Landroid/net/Uri$Builder;
    :cond_4a
    sget-object v0, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 259
    .restart local v6       #builder:Landroid/net/Uri$Builder;
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 260
    .restart local v2       #uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 261
    .restart local v3       #values:Landroid/content/ContentValues;
    const-string v0, "msg_box"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_45
.end method

.method private initActivity()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x315

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 130
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$MmsSms;->CONTENT_UNDELIVERED_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/ui/UndeliveredMessagesActivity;->PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    .line 133
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4c

    .line 134
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 141
    :goto_24
    new-instance v0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    .line 142
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/UndeliveredMessagesActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity$1;-><init>(Lcom/android/mms/ui/UndeliveredMessagesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    return-void

    .line 136
    :cond_4c
    const-string v0, "UndeliveredMessagesActivity"

    const-string v1, "Cannot load undelivered messages."

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->finish()V

    goto :goto_24
.end method

.method private resendShortMessage(JJ)V
    .registers 16
    .parameter "threadId"
    .parameter "msgId"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 319
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 320
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "address"

    aput-object v0, v3, v5

    const-string v0, "body"

    aput-object v0, v3, v7

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 323
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_53

    .line 325
    :try_start_21
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v7, :cond_50

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 326
    new-instance v3, Lcom/android/mms/transaction/SmsMessageSender;

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, p0

    move-wide v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    .line 329
    .local v3, sender:Lcom/android/mms/transaction/MessageSender;
    invoke-interface {v3, p1, p2}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    .line 333
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v0, v2, v1, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_21 .. :try_end_50} :catchall_63
    .catch Lcom/google/android/mms/MmsException; {:try_start_21 .. :try_end_50} :catch_54

    .line 338
    .end local v3           #sender:Lcom/android/mms/transaction/MessageSender;
    :cond_50
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 341
    :cond_53
    :goto_53
    return-void

    .line 335
    :catch_54
    move-exception v0

    move-object v10, v0

    .line 336
    .local v10, e:Lcom/google/android/mms/MmsException;
    :try_start_56
    const-string v0, "UndeliveredMessagesActivity"

    invoke-virtual {v10}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_63

    .line 338
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_53

    .end local v10           #e:Lcom/google/android/mms/MmsException;
    :catchall_63
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private retryToSendMessage(JJLjava/lang/String;)V
    .registers 28
    .parameter "threadId"
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 269
    const-string v5, "sms"

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 271
    invoke-direct/range {p0 .. p4}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->resendShortMessage(JJ)V

    .line 316
    .end local p0
    :cond_e
    :goto_e
    return-void

    .line 275
    .restart local p0
    :cond_f
    sget-object v5, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v20

    .line 276
    .local v20, uriBuilder:Landroid/net/Uri$Builder;
    const-string v5, "protocol"

    move-object/from16 v0, v20

    move-object v1, v5

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 277
    const-string v5, "message"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v11}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 282
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_e

    .line 284
    :try_start_40
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_10a

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_10a

    .line 286
    new-instance v21, Landroid/content/ContentValues;

    const/4 v5, 0x3

    move-object/from16 v0, v21

    move v1, v5

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 287
    .local v21, values:Landroid/content/ContentValues;
    const-string v5, "err_type"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 288
    const-string v5, "retry_index"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    const-string v5, "due_time"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    const-string v5, "_id"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 293
    .local v13, columnIndex:I
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 294
    .local v16, id:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 297
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/mms/util/SendingProgressTokenManager;->put(Ljava/lang/Object;J)V

    .line 300
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/mms/transaction/TransactionService;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 303
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03001f

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 306
    .local v15, dialog:Landroid/widget/LinearLayout;
    const-string v5, "last_try"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 308
    .local v18, last:J
    const v5, 0x7f0700c1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%s"

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 310
    .local v12, body:Ljava/lang/String;
    const v5, 0x7f090062

    invoke-virtual {v15, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_10a
    .catchall {:try_start_40 .. :try_end_10a} :catchall_10f

    .line 313
    .end local v12           #body:Ljava/lang/String;
    .end local v13           #columnIndex:I
    .end local v15           #dialog:Landroid/widget/LinearLayout;
    .end local v16           #id:J
    .end local v18           #last:J
    .end local v21           #values:Landroid/content/ContentValues;
    :cond_10a
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_e

    :catchall_10f
    move-exception v5

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v5
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter "item"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 226
    .local v1, threadId:J
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 227
    .local v3, msgId:J
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 228
    .local v5, msgType:Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_34

    .line 243
    :goto_1c
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_21
    move-object v0, p0

    .line 230
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->editMessage(JJLjava/lang/String;)V

    goto :goto_1c

    :pswitch_26
    move-object v0, p0

    .line 234
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->retryToSendMessage(JJLjava/lang/String;)V

    goto :goto_1c

    .line 238
    :pswitch_2b
    const v0, 0x7f0700a3

    iget-object v6, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mConfirmDeleteMessageListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v0, v6}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->confirmDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1c

    .line 228
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_21
        :pswitch_26
        :pswitch_2b
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 119
    const-string v0, "UndeliveredMessagesActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-direct {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->initActivity()V

    .line 123
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 11
    .parameter "item"

    .prologue
    const/4 v8, 0x1

    .line 190
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_42

    .line 209
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 193
    :pswitch_d
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    const/4 v7, -0x1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 194
    :goto_13
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 195
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 196
    .local v1, threadId:J
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 197
    .local v3, msgId:J
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, msgType:Ljava/lang/String;
    move-object v0, p0

    .line 198
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->retryToSendMessage(JJLjava/lang/String;)V

    goto :goto_13

    .end local v1           #threadId:J
    .end local v3           #msgId:J
    .end local v5           #msgType:Ljava/lang/String;
    :cond_34
    move v0, v8

    .line 200
    goto :goto_c

    .line 205
    :pswitch_36
    new-instance v6, Landroid/content/Intent;

    const-class v0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;

    invoke-direct {v6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .local v6, intent:Landroid/content/Intent;
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v8

    .line 207
    goto :goto_c

    .line 190
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_d
        :pswitch_36
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 158
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 160
    iget-object v1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_33

    .line 162
    const v1, 0x7f0700bf

    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 164
    .local v0, mi:Landroid/view/MenuItem;
    const v1, 0x1080050

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 165
    const/16 v1, 0x61

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 168
    const v1, 0x7f0700c0

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 170
    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 171
    const/16 v1, 0x78

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move v1, v3

    .line 174
    .end local v0           #mi:Landroid/view/MenuItem;
    :goto_32
    return v1

    :cond_33
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_32
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-nez v0, :cond_d

    .line 183
    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->finish()V

    .line 185
    :cond_d
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 186
    return-void
.end method
