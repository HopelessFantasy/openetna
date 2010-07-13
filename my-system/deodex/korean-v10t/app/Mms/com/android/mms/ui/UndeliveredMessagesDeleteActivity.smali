.class public Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;
.super Landroid/app/Activity;
.source "UndeliveredMessagesDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$DeleteMessageListener;,
        Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$ThreadListQueryHandler;
    }
.end annotation


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

.field private static final DELETE_UNDELIVERED_LIST_TOKEN:I = 0x709

.field private static final FILE_NAME:Ljava/lang/String; = "UndeliveredMessagesActivity  "

.field private static final MENU_DESELECT_ALL:I = 0x1

.field private static final MENU_SELECT_ALL:I = 0x0

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "[MMS]"

.field private static final UNDELIVERED_LIST_QUERY_TOKEN:I = 0x6a5


# instance fields
.field private mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

.field private mDeleteMsg:Landroid/widget/Button;

.field private mQueryHandler:Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$ThreadListQueryHandler;

.field private mlistView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const-string v4, "read"

    const-string v3, "date"

    .line 67
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

    sput-object v0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 307
    return-void
.end method

.method private SelectedMessageDelete()V
    .registers 15

    .prologue
    const/4 v2, 0x0

    const-string v13, "[MMS]"

    .line 198
    const-string v0, "[MMS]"

    const-string v0, "onClick Delete button!!"

    invoke-static {v13, v0}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-wide/16 v8, -0x1

    .line 200
    .local v8, msgID:J
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v11

    .line 201
    .local v11, sba:Landroid/util/SparseBooleanArray;
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 203
    .local v7, msgCursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_19
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ge v6, v0, :cond_6f

    .line 205
    invoke-virtual {v11, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 207
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v8

    .line 208
    const-string v0, "[MMS]"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG ID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-eqz v0, :cond_68

    .line 211
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 212
    .local v12, type:Ljava/lang/String;
    const-string v0, "sms"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object v10, v0

    .line 213
    .local v10, msgType:Landroid/net/Uri;
    :goto_5b
    invoke-static {v10, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 215
    .local v3, baseUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$ThreadListQueryHandler;

    const/16 v1, 0x709

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$ThreadListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 203
    .end local v3           #baseUri:Landroid/net/Uri;
    .end local v10           #msgType:Landroid/net/Uri;
    .end local v12           #type:Ljava/lang/String;
    :cond_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    .line 212
    .restart local v12       #type:Ljava/lang/String;
    :cond_6b
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object v10, v0

    goto :goto_5b

    .line 220
    .end local v12           #type:Ljava/lang/String;
    :cond_6f
    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->clear()V

    .line 221
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;)Lcom/android/mms/ui/UndeliveredMessagesListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mlistView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->SelectedMessageDelete()V

    return-void
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 297
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 298
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 299
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 300
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 301
    const v1, 0x7f070070

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 302
    const v1, 0x7f070071

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 303
    const v1, 0x7f0700a9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 304
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 305
    return-void
.end method

.method static deleteMessageByCursor(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 9
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    .line 190
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, type:Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 192
    .local v1, msgId:J
    const-string v4, "sms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v4

    .line 193
    .local v0, baseUri:Landroid/net/Uri;
    :goto_16
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0, v4, v5, v6, v6}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 195
    return-void

    .line 192
    .end local v0           #baseUri:Landroid/net/Uri;
    :cond_22
    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v4

    goto :goto_16
.end method

.method private initActivity()V
    .registers 4

    .prologue
    .line 129
    const v0, 0x7f09002f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mlistView:Landroid/widget/ListView;

    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mlistView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mlistView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$1;-><init>(Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 138
    const v0, 0x7f09002e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mDeleteMsg:Landroid/widget/Button;

    .line 139
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mDeleteMsg:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    new-instance v0, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mlistView:Landroid/widget/ListView;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    .line 143
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mlistView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    return-void
.end method

.method private startAsyncQuery()V
    .registers 10

    .prologue
    .line 245
    const v0, 0x7f07000d

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 246
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 248
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$ThreadListQueryHandler;

    const/16 v1, 0x6a5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$ThreadListQueryHandler;->cancelOperation(I)V

    .line 249
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$ThreadListQueryHandler;

    const/16 v1, 0x6a5

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/Telephony$MmsSms;->CONTENT_UNDELIVERED_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$ThreadListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_24} :catch_25

    .line 254
    :goto_24
    return-void

    .line 251
    :catch_25
    move-exception v0

    move-object v8, v0

    .line 252
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_24
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mlistView:Landroid/widget/ListView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 225
    iget-object v3, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mDeleteMsg:Landroid/widget/Button;

    if-ne p1, v3, :cond_25

    .line 226
    iget-object v3, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 227
    .local v2, sba:Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    .line 228
    .local v1, isChecked:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    iget-object v3, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1b

    .line 229
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 230
    const/4 v1, 0x1

    .line 235
    :cond_1b
    iget-object v3, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-lez v3, :cond_25

    if-nez v1, :cond_29

    .line 241
    .end local v0           #i:I
    .end local v1           #isChecked:Z
    .end local v2           #sba:Landroid/util/SparseBooleanArray;
    :cond_25
    :goto_25
    return-void

    .line 228
    .restart local v0       #i:I
    .restart local v1       #isChecked:Z
    .restart local v2       #sba:Landroid/util/SparseBooleanArray;
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 238
    :cond_29
    const-string v3, "[MMS]"

    const-string v4, "onClick Delete button!!"

    invoke-static {v3, v4}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v3, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$DeleteMessageListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$1;)V

    invoke-direct {p0, v3}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_25
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 114
    const-string v0, "[MMS]"

    const-string v1, "UndeliveredMessagesActivity  onCreate"

    invoke-static {v0, v1}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->requestWindowFeature(I)Z

    .line 118
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->setContentView(I)V

    .line 120
    new-instance v0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$ThreadListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$ThreadListQueryHandler;-><init>(Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mQueryHandler:Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity$ThreadListQueryHandler;

    .line 121
    invoke-direct {p0}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->initActivity()V

    .line 122
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 161
    iget-object v2, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 163
    .local v1, sba:Landroid/util/SparseBooleanArray;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_30

    move v2, v3

    .line 178
    :goto_f
    return v2

    .line 165
    :pswitch_10
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    iget-object v2, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 166
    invoke-virtual {v1, v0, v3}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 168
    :cond_1f
    iget-object v2, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->notifyDataSetChanged()V

    move v2, v3

    .line 169
    goto :goto_f

    .line 172
    .end local v0           #i:I
    :pswitch_26
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 174
    iget-object v2, p0, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->notifyDataSetChanged()V

    move v2, v3

    .line 175
    goto :goto_f

    .line 163
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_10
        :pswitch_26
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 150
    const v0, 0x7f07010f

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02003b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 153
    const v0, 0x7f070110

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020003

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 156
    return v3
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 186
    invoke-direct {p0}, Lcom/android/mms/ui/UndeliveredMessagesDeleteActivity;->startAsyncQuery()V

    .line 187
    return-void
.end method
