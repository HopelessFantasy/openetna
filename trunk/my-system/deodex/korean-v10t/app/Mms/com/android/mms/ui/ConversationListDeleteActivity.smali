.class public Lcom/android/mms/ui/ConversationListDeleteActivity;
.super Landroid/app/Activity;
.source "ConversationListDeleteActivity.java"

# interfaces
.implements Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationListDeleteActivity$DeleteMessageListener;,
        Lcom/android/mms/ui/ConversationListDeleteActivity$CachingNameStoreImpl;,
        Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DELETE_CONVERSATION_TOKEN:I = 0x709

.field private static final MENU_DESELECT_ALL:I = 0x1

.field private static final MENU_SELECT_ALL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ConversationListDeleteActivity"

.field private static final THREAD_LIST_QUERY_TOKEN:I = 0x6a5


# instance fields
.field private mBaseUri:Landroid/net/Uri;

.field private mCachingNameStore:Lcom/android/mms/ui/ConversationList$CachingNameStore;

.field private mDeleteMsg:Landroid/widget/Button;

.field private mFilter:Ljava/lang/String;

.field private mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

.field private mProjection:[Ljava/lang/String;

.field private mQueryHandler:Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;

.field private mQueryToken:I

.field private mSearchFlag:Z

.field private mSelection:Ljava/lang/String;

.field private mTitle:Ljava/lang/CharSequence;

.field private mlistView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 431
    return-void
.end method

.method private SelectedMessageDelete()V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 355
    const-string v0, "ConversationListDeleteActivity"

    const-string v1, "onClick Delete button!!"

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const/4 v3, 0x0

    .line 357
    .local v3, mDeleteUri:Landroid/net/Uri;
    const-wide/16 v8, -0x1

    .line 359
    .local v8, thID:J
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v7

    .line 361
    .local v7, sba:Landroid/util/SparseBooleanArray;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_12
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ge v6, v0, :cond_43

    .line 363
    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 365
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v8

    .line 367
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-eqz v0, :cond_40

    .line 368
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 371
    const/16 v0, 0x81

    invoke-static {p0, v8, v9, v0}, Lcom/android/mms/ui/MessageUtils;->sendReadReport(Landroid/content/Context;JI)V

    .line 372
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;

    const/16 v1, 0x709

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 361
    :cond_40
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 377
    :cond_43
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->clear()V

    .line 378
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationListDeleteActivity;)Lcom/android/mms/ui/ConversationListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ConversationListDeleteActivity;)Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationListDeleteActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mlistView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ConversationListDeleteActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ConversationListDeleteActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->clearPushNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationListDeleteActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->clearProvNotification()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ConversationListDeleteActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->SelectedMessageDelete()V

    return-void
.end method

.method private clearProvNotification()V
    .registers 3

    .prologue
    .line 413
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "lgeWapService/clear.prov.notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ConversationListDeleteActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method private clearPushNotification()V
    .registers 3

    .prologue
    .line 406
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "lgeWapService/clear.push.notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ConversationListDeleteActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 421
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 422
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 423
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 424
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 425
    const v1, 0x7f070070

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 426
    const v1, 0x7f070071

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 427
    const v1, 0x7f0700a9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 428
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 429
    return-void
.end method

.method private initListAdapter()V
    .registers 5

    .prologue
    .line 122
    new-instance v0, Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mCachingNameStore:Lcom/android/mms/ui/ConversationList$CachingNameStore;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/ConversationListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/mms/ui/ConversationList$CachingNameStore;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mlistView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    return-void
.end method

.method private initNormalQueryArgs()V
    .registers 4

    .prologue
    .line 224
    sget-object v1, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 225
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v1, "simple"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 226
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mBaseUri:Landroid/net/Uri;

    .line 227
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mSelection:Ljava/lang/String;

    .line 228
    sget-object v1, Lcom/android/mms/ui/ConversationListAdapter;->PROJECTION:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mProjection:[Ljava/lang/String;

    .line 229
    const/16 v1, 0x6a5

    iput v1, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mQueryToken:I

    .line 231
    const v1, 0x7f0700c0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationListDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mTitle:Ljava/lang/CharSequence;

    .line 233
    return-void
.end method

.method private startAsyncQuery()V
    .registers 10

    .prologue
    .line 237
    const v0, 0x7f07000d

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 238
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;

    const/16 v1, 0x6a5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;->cancelOperation(I)V

    .line 241
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;

    const/16 v1, 0x6a5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mBaseUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mProjection:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mSelection:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "date DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_26} :catch_27

    .line 246
    :goto_26
    return-void

    .line 243
    :catch_27
    move-exception v0

    move-object v8, v0

    .line 244
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_26
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mlistView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected handleCreationIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->initNormalQueryArgs()V

    .line 129
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 382
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mDeleteMsg:Landroid/widget/Button;

    if-ne p1, v3, :cond_25

    .line 383
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 384
    .local v2, sba:Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    .line 385
    .local v1, isChecked:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1b

    .line 386
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 387
    const/4 v1, 0x1

    .line 392
    :cond_1b
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-lez v3, :cond_25

    if-nez v1, :cond_29

    .line 398
    .end local v0           #i:I
    .end local v1           #isChecked:Z
    .end local v2           #sba:Landroid/util/SparseBooleanArray;
    :cond_25
    :goto_25
    return-void

    .line 385
    .restart local v0       #i:I
    .restart local v1       #isChecked:Z
    .restart local v2       #sba:Landroid/util/SparseBooleanArray;
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 395
    :cond_29
    const-string v3, "ConversationListDeleteActivity"

    const-string v4, "onClick Delete button!!"

    invoke-static {v3, v4}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    new-instance v3, Lcom/android/mms/ui/ConversationListDeleteActivity$DeleteMessageListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/ConversationListDeleteActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ConversationListDeleteActivity;Lcom/android/mms/ui/ConversationListDeleteActivity$1;)V

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ConversationListDeleteActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_25
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->requestWindowFeature(I)Z

    .line 91
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->setContentView(I)V

    .line 93
    new-instance v0, Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;-><init>(Lcom/android/mms/ui/ConversationListDeleteActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;

    .line 95
    const v0, 0x7f09002f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mlistView:Landroid/widget/ListView;

    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mlistView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mlistView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/mms/ui/ConversationListDeleteActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListDeleteActivity$1;-><init>(Lcom/android/mms/ui/ConversationListDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    const v0, 0x7f09002e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mDeleteMsg:Landroid/widget/Button;

    .line 105
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mDeleteMsg:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    new-instance v0, Lcom/android/mms/ui/ConversationListDeleteActivity$CachingNameStoreImpl;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationListDeleteActivity$CachingNameStoreImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mCachingNameStore:Lcom/android/mms/ui/ConversationList$CachingNameStore;

    .line 109
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->initListAdapter()V

    .line 111
    if-eqz p1, :cond_71

    .line 112
    const-string v0, "base_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mBaseUri:Landroid/net/Uri;

    .line 113
    const-string v0, "search_flag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mSearchFlag:Z

    .line 114
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mFilter:Ljava/lang/String;

    .line 115
    const-string v0, "query_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mQueryToken:I

    .line 118
    :cond_71
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->handleCreationIntent(Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method public onDraftChanged(JZ)V
    .registers 6
    .parameter "threadId"
    .parameter "hasDraft"

    .prologue
    .line 215
    const-string v0, "ConversationListDeleteActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;

    new-instance v1, Lcom/android/mms/ui/ConversationListDeleteActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationListDeleteActivity$2;-><init>(Lcom/android/mms/ui/ConversationListDeleteActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListDeleteActivity$ThreadListQueryHandler;->post(Ljava/lang/Runnable;)Z

    .line 221
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 192
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 194
    .local v1, sba:Landroid/util/SparseBooleanArray;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_30

    move v2, v3

    .line 209
    :goto_f
    return v2

    .line 196
    :pswitch_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 197
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 199
    :cond_1f
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    move v2, v3

    .line 200
    goto :goto_f

    .line 203
    .end local v0           #i:I
    :pswitch_26
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 205
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    move v2, v3

    .line 206
    goto :goto_f

    .line 194
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_10
        :pswitch_26
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 167
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->removeOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 168
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 181
    const v0, 0x7f07010f

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 184
    const v0, 0x7f070110

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020003

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 187
    return v3
.end method

.method protected onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 135
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->addOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Threads;->OBSOLETE_THREADS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 140
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 142
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationListDeleteActivity;->startAsyncQuery()V

    .line 148
    invoke-static {}, Lcom/android/mms/util/ContactInfoCache;->getInstance()Lcom/android/mms/util/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/ContactInfoCache;->invalidateCache()V

    .line 149
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 155
    const-string v0, "base_uri"

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 156
    const-string v0, "query_token"

    iget v1, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mQueryToken:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 157
    const-string v0, "search_flag"

    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mSearchFlag:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mSearchFlag:Z

    if-eqz v0, :cond_23

    .line 159
    const-string v0, "filter"

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mFilter:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_23
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 174
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListDeleteActivity;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 175
    return-void
.end method
