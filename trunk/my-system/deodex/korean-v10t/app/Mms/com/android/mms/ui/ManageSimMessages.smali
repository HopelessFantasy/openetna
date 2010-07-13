.class public Lcom/android/mms/ui/ManageSimMessages;
.super Landroid/app/Activity;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ManageSimMessages$QueryHandler;
    }
.end annotation


# static fields
.field private static final MENU_COPY_TO_PHONE_MEMORY:I = 0x0

.field private static final MENU_DELETE_FROM_SIM:I = 0x1

.field private static final MENU_VIEW:I = 0x2

.field private static final OPTION_MENU_DELETE_ALL:I = 0x0

.field private static final SHOW_BUSY:I = 0x2

.field private static final SHOW_EMPTY:I = 0x1

.field private static final SHOW_LIST:I = 0x0

.field public static final SIM_FULL_NOTIFICATION_ID:I = 0xea

.field private static final SIM_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "ManageSimMessages"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCursor:Landroid/database/Cursor;

.field private mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

.field private mMessage:Landroid/widget/TextView;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mSimList:Landroid/widget/ListView;

.field private mState:I

.field private final simChangeObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const-string v0, "content://sms/sim"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ManageSimMessages;->SIM_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    .line 76
    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    .line 77
    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 81
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ManageSimMessages$1;-><init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->simChangeObserver:Landroid/database/ContentObserver;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ManageSimMessages;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->refreshMessageList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ManageSimMessages;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/MessageListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/ManageSimMessages;Lcom/android/mms/ui/MessageListAdapter;)Lcom/android/mms/ui/MessageListAdapter;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->deleteFromSim(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ManageSimMessages;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->deleteAllFromSim()V

    return-void
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V
    .registers 6
    .parameter "listener"
    .parameter "messageId"

    .prologue
    .line 370
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 371
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 372
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 373
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 374
    const v1, 0x7f070070

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 375
    const v1, 0x7f070071

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 376
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 378
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 379
    return-void
.end method

.method private copyToPhoneMemory(Landroid/database/Cursor;)V
    .registers 16
    .parameter "cursor"

    .prologue
    .line 229
    const-string v0, "address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, address:Ljava/lang/String;
    const-string v0, "body"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, body:Ljava/lang/String;
    const-string v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 234
    .local v4, date:Ljava/lang/Long;
    const/4 v11, 0x0

    .line 235
    .local v11, ret_uri:Landroid/net/Uri;
    const-string v10, ""

    .line 242
    .local v10, message:Ljava/lang/String;
    :try_start_25
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->getMessageStatus(Landroid/database/Cursor;)I

    move-result v9

    .line 243
    .local v9, mStatus:I
    const/4 v0, 0x1

    if-eq v9, v0, :cond_2f

    const/4 v0, 0x3

    if-ne v9, v0, :cond_59

    .line 244
    :cond_2f
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;

    move-result-object v11

    .line 255
    :cond_37
    :goto_37
    if-eqz v11, :cond_95

    .line 256
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700cb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local v2           #body:Ljava/lang/String;
    move-result-object v10

    .line 260
    :goto_44
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f070070

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 270
    .end local v9           #mStatus:I
    :goto_58
    return-void

    .line 246
    .restart local v2       #body:Ljava/lang/String;
    .restart local v9       #mStatus:I
    :cond_59
    const/4 v0, 0x5

    if-ne v9, v0, :cond_6c

    .line 247
    const-string v0, "To: 0"

    const-string v3, "0"

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/Telephony$Sms$Sent;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v11

    goto :goto_37

    .line 249
    :cond_6c
    const/4 v0, 0x7

    if-ne v9, v0, :cond_37

    .line 250
    const-string v0, "To: 0"

    const-string v3, "0"

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-static {p0, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    .line 252
    .local v6, threadid:J
    const-string v0, "is_status_report"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_92

    const/4 v0, 0x1

    move v5, v0

    .line 253
    .local v5, srr:Z
    :goto_8a
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-static/range {v0 .. v7}, Landroid/provider/Telephony$Sms$Outbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;

    move-result-object v11

    goto :goto_37

    .line 252
    .end local v5           #srr:Z
    :cond_92
    const/4 v0, 0x0

    move v5, v0

    goto :goto_8a

    .line 258
    .end local v6           #threadid:J
    :cond_95
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700cc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_9f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25 .. :try_end_9f} :catch_a1

    .end local v2           #body:Ljava/lang/String;
    move-result-object v10

    goto :goto_44

    .line 267
    .end local v9           #mStatus:I
    :catch_a1
    move-exception v0

    move-object v8, v0

    .line 268
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_58
.end method

.method private deleteAllFromSim()V
    .registers 5

    .prologue
    .line 327
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 329
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1e

    .line 330
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 331
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 333
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_13
    if-ge v2, v0, :cond_1e

    .line 334
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ManageSimMessages;->deleteFromSim(Landroid/database/Cursor;)V

    .line 335
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 333
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 339
    .end local v0           #count:I
    .end local v2           #i:I
    :cond_1e
    return-void
.end method

.method private deleteFromSim(Landroid/database/Cursor;)V
    .registers 6
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 312
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 324
    :goto_7
    return-void

    .line 316
    :cond_8
    const-string v2, "index_on_icc"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, messageIndexString:Ljava/lang/String;
    sget-object v2, Lcom/android/mms/ui/ManageSimMessages;->SIM_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 321
    .local v1, simUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v2, v1, v3, v3}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 323
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->refreshMessageList()V

    goto :goto_7
.end method

.method private getMessageStatus(Landroid/database/Cursor;)I
    .registers 3
    .parameter "cursor"

    .prologue
    .line 306
    const-string v0, "status"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method private init()V
    .registers 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xea

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 114
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    .line 115
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery()V

    .line 116
    return-void
.end method

.method private isIncomingMessage(Landroid/database/Cursor;)Z
    .registers 5
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    .line 293
    const-string v1, "status"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 296
    .local v0, messageStatus:I
    if-eq v0, v2, :cond_10

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    :cond_10
    move v1, v2

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private refreshMessageList()V
    .registers 2

    .prologue
    .line 160
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    .line 161
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_12

    .line 162
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 163
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_12
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery()V

    .line 166
    return-void
.end method

.method private registerSimChangeObserver()V
    .registers 5

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/mms/ui/ManageSimMessages;->SIM_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->simChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 226
    return-void
.end method

.method private startQuery()V
    .registers 10

    .prologue
    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/android/mms/ui/ManageSimMessages;->SIM_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 157
    :goto_d
    return-void

    .line 154
    :catch_e
    move-exception v0

    move-object v8, v0

    .line 155
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_d
.end method

.method private updateState(I)V
    .registers 6
    .parameter "state"

    .prologue
    const v3, 0x7f0700c4

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 382
    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    if-ne v0, p1, :cond_b

    .line 409
    :goto_a
    return-void

    .line 386
    :cond_b
    iput p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    .line 387
    packed-switch p1, :pswitch_data_5c

    .line 407
    const-string v0, "ManageSimMessages"

    const-string v1, "Invalid State"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 389
    :pswitch_18
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setTitle(Ljava/lang/CharSequence;)V

    .line 392
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ManageSimMessages;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_a

    .line 395
    :pswitch_2d
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setTitle(Ljava/lang/CharSequence;)V

    .line 398
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ManageSimMessages;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_a

    .line 401
    :pswitch_42
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 403
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setTitle(Ljava/lang/CharSequence;)V

    .line 404
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_a

    .line 387
    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_2d
        :pswitch_42
    .end packed-switch
.end method

.method private viewMessage(Landroid/database/Cursor;)V
    .registers 2
    .parameter "cursor"

    .prologue
    .line 413
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 184
    :try_start_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_7} :catch_1d

    .line 190
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 192
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_40

    .line 208
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_1c
    return v3

    .line 185
    :catch_1d
    move-exception v3

    move-object v1, v3

    .line 186
    .local v1, exception:Ljava/lang/ClassCastException;
    const-string v3, "ManageSimMessages"

    const-string v4, "Bad menuInfo."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    const/4 v3, 0x0

    goto :goto_1c

    .line 194
    .end local v1           #exception:Ljava/lang/ClassCastException;
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v2       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :pswitch_28
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->copyToPhoneMemory(Landroid/database/Cursor;)V

    move v3, v5

    .line 195
    goto :goto_1c

    .line 197
    :pswitch_2d
    new-instance v3, Lcom/android/mms/ui/ManageSimMessages$2;

    invoke-direct {v3, p0, v0}, Lcom/android/mms/ui/ManageSimMessages$2;-><init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)V

    const v4, 0x7f0700a6

    invoke-direct {p0, v3, v4}, Lcom/android/mms/ui/ManageSimMessages;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    move v3, v5

    .line 203
    goto :goto_1c

    .line 205
    :pswitch_3a
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->viewMessage(Landroid/database/Cursor;)V

    move v3, v5

    .line 206
    goto :goto_1c

    .line 192
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_28
        :pswitch_2d
        :pswitch_3a
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->requestWindowFeature(I)Z

    .line 94
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    .line 95
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1, p0}, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;-><init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/content/ContentResolver;Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 96
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setContentView(I)V

    .line 97
    const v0, 0x7f090063

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    .line 98
    const v0, 0x7f090064

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    .line 100
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->init()V

    .line 101
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v2, 0x0

    .line 172
    const v0, 0x7f0700c2

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 174
    const/4 v0, 0x1

    const v1, 0x7f0700c3

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 178
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->setIntent(Landroid/content/Intent;)V

    .line 107
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->init()V

    .line 108
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 355
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 366
    :goto_7
    const/4 v0, 0x1

    return v0

    .line 357
    :pswitch_9
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$3;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    const v1, 0x7f0700a5

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    goto :goto_7

    .line 355
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 220
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->simChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 221
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 343
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 345
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_21

    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    if-nez v0, :cond_21

    .line 346
    const v0, 0x7f0700c0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 350
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 214
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->registerSimChangeObserver()V

    .line 215
    return-void
.end method
