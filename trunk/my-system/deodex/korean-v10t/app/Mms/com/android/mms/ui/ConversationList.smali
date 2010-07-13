.class public Lcom/android/mms/ui/ConversationList;
.super Landroid/app/ListActivity;
.source "ConversationList.java"

# interfaces
.implements Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl;,
        Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;,
        Lcom/android/mms/ui/ConversationList$DeleteThreadListener;,
        Lcom/android/mms/ui/ConversationList$CachingNameStore;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DELETE_CONVERSATION_TOKEN:I = 0x709

.field private static final MENU_ADD_TO_CONTACTS:I = 0x3

.field private static final MENU_COMPOSE_NEW:I = 0x0

.field public static final MENU_DELETE:I = 0x0

.field private static final MENU_DELETE_ALL:I = 0x3

.field private static final MENU_PREFERENCES:I = 0x4

.field private static final MENU_SEARCH:I = 0x1

.field private static final MENU_SIM_MESSAGES:I = 0x5

.field private static final MENU_UNDELIVERED_MESSAGES:I = 0x2

.field private static final MENU_VIEW:I = 0x1

.field private static final MENU_VIEW_CONTACT:I = 0x2

.field private static final SEARCH_TOKEN:I = 0x6a6

.field private static final TAG:Ljava/lang/String; = "ConversationList"

.field private static final THREAD_LIST_QUERY_TOKEN:I = 0x6a5


# instance fields
.field private mBaseUri:Landroid/net/Uri;

.field private mCachingNameStore:Lcom/android/mms/ui/ConversationList$CachingNameStore;

.field private final mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mFilter:Ljava/lang/String;

.field private mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

.field private mNewMsg:Landroid/widget/Button;

.field private mProjection:[Ljava/lang/String;

.field private mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

.field private mQueryToken:I

.field private mSearchFlag:Z

.field private mSelection:Ljava/lang/String;

.field private final mThreadListKeyListener:Landroid/view/View$OnKeyListener;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 440
    new-instance v0, Lcom/android/mms/ui/ConversationList$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$2;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 575
    new-instance v0, Lcom/android/mms/ui/ConversationList$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$3;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    .line 691
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ConversationList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mSearchFlag:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/ConversationList;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationList;->mSearchFlag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationList;Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationList;->getAddress(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ConversationList;Landroid/content/DialogInterface$OnClickListener;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationList;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ConversationList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->initNormalQueryArgs()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ConversationList;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .registers 6
    .parameter "listener"
    .parameter "deleteAll"

    .prologue
    .line 562
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 563
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 564
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 565
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 566
    const v1, 0x7f070070

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 567
    const v1, 0x7f070071

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 568
    if-eqz p2, :cond_2e

    const v1, 0x7f0700a2

    :goto_27
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 572
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 573
    return-void

    .line 568
    :cond_2e
    const v1, 0x7f0700a1

    goto :goto_27
.end method

.method public static createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .parameter "address"

    .prologue
    .line 429
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    invoke-static {p0}, Lcom/android/mms/ui/RecipientList$Recipient;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 432
    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    :goto_17
    return-object v0

    .line 434
    :cond_18
    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_17
.end method

.method private createNewMessage()V
    .registers 7

    .prologue
    .line 382
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getFreeMemSize()J

    move-result-wide v0

    .line 383
    .local v0, freeMem:J
    const-string v3, "ConversationList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Free Memsize : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-wide/32 v3, 0x5dc000

    cmp-long v3, v3, v0

    if-ltz v3, :cond_49

    .line 387
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040287

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040074

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070070

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 399
    :goto_48
    return-void

    .line 397
    :cond_49
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 398
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    goto :goto_48
.end method

.method private getAddress(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 8
    .parameter "cursor"

    .prologue
    const/4 v5, 0x0

    .line 530
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 531
    .local v2, threadId:J
    const/4 v0, 0x0

    .line 532
    .local v0, address:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListAdapter;->isSimpleMode()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 533
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Lcom/android/mms/ui/MessageUtils;->getRecipientsByIds(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 545
    :goto_18
    return-object v0

    .line 538
    :cond_19
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, msgType:Ljava/lang/String;
    const-string v4, "sms"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 540
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 542
    :cond_2b
    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_18
.end method

.method private initListAdapter()V
    .registers 5

    .prologue
    .line 176
    new-instance v0, Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mCachingNameStore:Lcom/android/mms/ui/ConversationList$CachingNameStore;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/ConversationListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/mms/ui/ConversationList$CachingNameStore;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    .line 177
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    return-void
.end method

.method private initNormalQueryArgs()V
    .registers 4

    .prologue
    .line 255
    sget-object v1, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 256
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "simple"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 257
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList;->mBaseUri:Landroid/net/Uri;

    .line 258
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList;->mSelection:Ljava/lang/String;

    .line 259
    sget-object v1, Lcom/android/mms/ui/ConversationListAdapter;->PROJECTION:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList;->mProjection:[Ljava/lang/String;

    .line 260
    const/16 v1, 0x6a5

    iput v1, p0, Lcom/android/mms/ui/ConversationList;->mQueryToken:I

    .line 261
    const/high16 v1, 0x7f07

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationList;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList;->mTitle:Ljava/lang/CharSequence;

    .line 262
    return-void
.end method

.method public static isFailedToDeliver(Landroid/content/Intent;)Z
    .registers 3
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 181
    if-eqz p0, :cond_d

    const-string v0, "undelivered_flag"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c
.end method

.method private openThread(JLjava/lang/String;)V
    .registers 6
    .parameter "threadId"
    .parameter "address"

    .prologue
    .line 402
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "thread_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 404
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 405
    const-string v1, "address"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    :cond_17
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    .line 408
    return-void
.end method

.method private startAsyncQuery()V
    .registers 10

    .prologue
    .line 266
    const v0, 0x7f07000d

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->setTitle(Ljava/lang/CharSequence;)V

    .line 267
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->setProgressBarIndeterminateVisibility(Z)V

    .line 269
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v1, 0x6a5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->cancelOperation(I)V

    .line 270
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v1, 0x6a5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mBaseUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mProjection:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mms/ui/ConversationList;->mSelection:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "date DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_26} :catch_27

    .line 275
    :goto_26
    return-void

    .line 272
    :catch_27
    move-exception v0

    move-object v8, v0

    .line 273
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_26
.end method

.method private startPushExpirationService()V
    .registers 3

    .prologue
    .line 754
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 755
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "lgeWapService/start.push.expiration.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 757
    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ConversationList;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 758
    return-void
.end method

.method private stopPushExpirationService()V
    .registers 3

    .prologue
    .line 761
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 762
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "lgeWapService/stop.push.expiration.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 764
    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ConversationList;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 765
    return-void
.end method

.method private viewContact(Ljava/lang/String;)V
    .registers 10
    .parameter "address"

    .prologue
    .line 412
    invoke-static {}, Lcom/android/mms/util/ContactInfoCache;->getInstance()Lcom/android/mms/util/ContactInfoCache;

    move-result-object v0

    .line 414
    .local v0, cache:Lcom/android/mms/util/ContactInfoCache;
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 415
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v4, p1, v5}, Lcom/android/mms/util/ContactInfoCache;->getContactInfoForEmailAddress(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v1

    .line 420
    .local v1, info:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    :goto_13
    if-eqz v1, :cond_2f

    iget-wide v4, v1, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->person_id:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2f

    .line 421
    sget-object v4, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v1, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->person_id:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 422
    .local v3, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 423
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    .line 425
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_2f
    return-void

    .line 418
    .end local v1           #info:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    :cond_30
    invoke-virtual {v0, p0, p1}, Lcom/android/mms/util/ContactInfoCache;->getContactInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v1

    .restart local v1       #info:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    goto :goto_13
.end method


# virtual methods
.method protected handleCreationIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->initNormalQueryArgs()V

    .line 193
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNewMsg:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 749
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->createNewMessage()V

    .line 751
    :cond_7
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 557
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 558
    const-string v0, "ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    .line 498
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 499
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 500
    .local v3, threadId:J
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_3c

    .line 525
    :goto_12
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    return v5

    .line 502
    :pswitch_17
    new-instance v2, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;-><init>(Lcom/android/mms/ui/ConversationList;J)V

    .line 503
    .local v2, l:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;
    invoke-direct {p0, v2, v6}, Lcom/android/mms/ui/ConversationList;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_12

    .line 507
    .end local v2           #l:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;
    :pswitch_20
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationList;->getAddress(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, address:Ljava/lang/String;
    invoke-direct {p0, v3, v4, v0}, Lcom/android/mms/ui/ConversationList;->openThread(JLjava/lang/String;)V

    goto :goto_12

    .line 512
    .end local v0           #address:Ljava/lang/String;
    :pswitch_28
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationList;->getAddress(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 513
    .restart local v0       #address:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationList;->viewContact(Ljava/lang/String;)V

    goto :goto_12

    .line 517
    .end local v0           #address:Ljava/lang/String;
    :pswitch_30
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationList;->getAddress(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 518
    .restart local v0       #address:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    goto :goto_12

    .line 500
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_17
        :pswitch_20
        :pswitch_28
        :pswitch_30
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 131
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationList;->requestWindowFeature(I)Z

    .line 134
    const v3, 0x7f03000f

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationList;->setContentView(I)V

    .line 136
    new-instance v3, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;-><init>(Lcom/android/mms/ui/ConversationList;Landroid/content/ContentResolver;)V

    iput-object v3, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    .line 138
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 139
    .local v2, listView:Landroid/widget/ListView;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 142
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03000d

    invoke-virtual {v1, v3, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 143
    .local v0, headerView:Landroid/view/View;
    const v3, 0x7f09002d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/ui/ConversationList;->mNewMsg:Landroid/widget/Button;

    .line 144
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mNewMsg:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 148
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 149
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 151
    new-instance v3, Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/mms/ui/ConversationList;->mCachingNameStore:Lcom/android/mms/ui/ConversationList$CachingNameStore;

    .line 153
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->initListAdapter()V

    .line 155
    if-eqz p1, :cond_75

    .line 156
    const-string v3, "base_uri"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/mms/ui/ConversationList;->mBaseUri:Landroid/net/Uri;

    .line 157
    const-string v3, "search_flag"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationList;->mSearchFlag:Z

    .line 158
    const-string v3, "filter"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/ConversationList;->mFilter:Ljava/lang/String;

    .line 159
    const-string v3, "query_token"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/ConversationList;->mQueryToken:I

    .line 163
    :cond_75
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_9a

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "from_notifullmessage"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 165
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x37b

    invoke-static {v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 167
    const v3, 0x1040074

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 172
    :cond_9a
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationList;->handleCreationIntent(Landroid/content/Intent;)V

    .line 173
    return-void
.end method

.method public onDraftChanged(JZ)V
    .registers 6
    .parameter "threadId"
    .parameter "hasDraft"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    new-instance v1, Lcom/android/mms/ui/ConversationList$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationList$1;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->post(Ljava/lang/Runnable;)Z

    .line 252
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 13
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 360
    const-string v4, "ConversationList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onListItemClick: position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    if-nez p3, :cond_28

    .line 363
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->createNewMessage()V

    .line 378
    :cond_27
    :goto_27
    return-void

    .line 364
    :cond_28
    instance-of v4, p2, Lcom/android/mms/ui/ConversationHeaderView;

    if-eqz v4, :cond_27

    .line 365
    move-object v0, p2

    check-cast v0, Lcom/android/mms/ui/ConversationHeaderView;

    move-object v2, v0

    .line 366
    .local v2, headerView:Lcom/android/mms/ui/ConversationHeaderView;
    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationHeaderView;->getConversationHeader()Lcom/android/mms/ui/ConversationHeader;

    move-result-object v1

    .line 375
    .local v1, ch:Lcom/android/mms/ui/ConversationHeader;
    const/4 v3, 0x0

    .line 376
    .local v3, somethingDelimitedAddresses:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationHeader;->getThreadId()J

    move-result-wide v4

    invoke-direct {p0, v4, v5, v3}, Lcom/android/mms/ui/ConversationList;->openThread(JLjava/lang/String;)V

    goto :goto_27
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationList;->handleCreationIntent(Landroid/content/Intent;)V

    .line 188
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v2, -0x1

    .line 321
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_40

    .line 353
    const/4 v1, 0x1

    .line 355
    :goto_9
    return v1

    .line 323
    :pswitch_a
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->createNewMessage()V

    .line 355
    :goto_d
    const/4 v1, 0x0

    goto :goto_9

    .line 326
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->onSearchRequested()Z

    goto :goto_d

    .line 331
    :pswitch_13
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ConversationListDeleteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 332
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    goto :goto_d

    .line 336
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1e
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/UndeliveredMessagesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lcom/android/mms/ui/ConversationList;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_d

    .line 341
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 342
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v2}, Lcom/android/mms/ui/ConversationList;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_d

    .line 347
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 348
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    goto :goto_d

    .line 321
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_a
        :pswitch_f
        :pswitch_1e
        :pswitch_13
        :pswitch_29
        :pswitch_34
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 232
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 234
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->removeOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 235
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 12
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 279
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 281
    const v0, 0x7f070005

    invoke-interface {p1, v9, v9, v9, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080187

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 286
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2c

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mSearchFlag:Z

    if-nez v0, :cond_2c

    .line 287
    const/4 v0, 0x3

    const v1, 0x7f070009

    invoke-interface {p1, v9, v0, v9, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 292
    :cond_2c
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 294
    .local v7, mmsCursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "undelivered"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 297
    .local v8, smsCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_56

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5e

    :cond_56
    if-eqz v8, :cond_6c

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6c

    .line 299
    :cond_5e
    const/4 v0, 0x2

    const v1, 0x7f07000b

    invoke-interface {p1, v9, v0, v9, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020024

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 302
    :cond_6c
    if-eqz v7, :cond_71

    .line 303
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 305
    :cond_71
    if-eqz v8, :cond_76

    .line 306
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 309
    :cond_76
    const/4 v0, 0x4

    const v1, 0x7f070006

    invoke-interface {p1, v9, v0, v9, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 312
    const/4 v0, 0x5

    const v1, 0x7f07000e

    invoke-interface {p1, v9, v0, v9, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020023

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 316
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 197
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 199
    new-instance v0, Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$CachingNameStoreImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mCachingNameStore:Lcom/android/mms/ui/ConversationList$CachingNameStore;

    .line 200
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->initListAdapter()V

    .line 202
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->addOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Threads;->OBSOLETE_THREADS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 207
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 209
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    .line 215
    invoke-static {}, Lcom/android/mms/util/ContactInfoCache;->getInstance()Lcom/android/mms/util/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/ContactInfoCache;->invalidateCache()V

    .line 216
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 222
    const-string v0, "base_uri"

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 223
    const-string v0, "query_token"

    iget v1, p0, Lcom/android/mms/ui/ConversationList;->mQueryToken:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    const-string v0, "search_flag"

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationList;->mSearchFlag:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 225
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mSearchFlag:Z

    if-eqz v0, :cond_23

    .line 226
    const-string v0, "filter"

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mFilter:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_23
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 239
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 242
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 243
    return-void
.end method
