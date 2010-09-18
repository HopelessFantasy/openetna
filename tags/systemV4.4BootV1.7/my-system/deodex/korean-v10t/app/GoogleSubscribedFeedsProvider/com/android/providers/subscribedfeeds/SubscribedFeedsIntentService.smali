.class public Lcom/android/providers/subscribedfeeds/SubscribedFeedsIntentService;
.super Landroid/app/IntentService;
.source "SubscribedFeedsIntentService.java"


# static fields
.field private static final GTALK_DATA_MESSAGE_RECEIVED:Ljava/lang/String; = "android.intent.action.GTALK_DATA_MESSAGE_RECEIVED"

.field private static final LOG_TICKLE:I = 0xab6

.field private static final PROVIDER_GMAIL:Ljava/lang/String; = "gmail-ls"

.field private static final PROVIDER_SUBSCRIBEDFEEDS:Ljava/lang/String; = "subscribedfeeds"

.field private static final SUBSCRIBED_FEEDS_REFRESH_ACTION:Ljava/lang/String; = "com.android.subscribedfeeds.action.REFRESH"

.field private static final SUBSCRIPTION_REFRESH_INTERVAL:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "Sync"

.field private static final sAccountProjection:[Ljava/lang/String; = null

.field private static final sRefreshTime:Ljava/lang/String; = "refreshTime"

.field private static final sSubscribedFeedsPrefs:Ljava/lang/String; = "subscribedFeeds"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/subscribedfeeds/SubscribedFeedsIntentService;->sAccountProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 64
    const-string v0, "SubscribedFeedsIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private static getOperator()Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, operatorCode:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    move-object v1, v0

    .line 175
    :goto_b
    return-object v1

    :cond_c
    const-string v1, "NULL"

    goto :goto_b
.end method

.method private handleRefreshAlarm(Landroid/content/Context;)V
    .registers 22
    .parameter "context"

    .prologue
    .line 224
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 225
    .local v12, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 226
    .local v5, contentResolver:Landroid/content/ContentResolver;
    sget-object v6, Landroid/provider/SubscribedFeeds$Accounts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/providers/subscribedfeeds/SubscribedFeedsIntentService;->sAccountProjection:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 228
    .local v13, c:Landroid/database/Cursor;
    :cond_14
    :goto_14
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 229
    const/4 v6, 0x0

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 230
    .local v11, account:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 233
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 235
    .end local v11           #account:Ljava/lang/String;
    :cond_29
    invoke-interface {v13}, Landroid/database/Cursor;->deactivate()V

    .line 244
    :try_start_2c
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 245
    .local v19, values:Landroid/content/ContentValues;
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_35
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_67

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 246
    .restart local v11       #account:Ljava/lang/String;
    const-string v6, "_sync_account"

    move-object/from16 v0, v19

    move-object v1, v6

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    sget-object v6, Landroid/provider/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_sync_account=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v11, v8, v9

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v19

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5d
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2c .. :try_end_5d} :catch_5e

    goto :goto_35

    .line 250
    .end local v11           #account:Ljava/lang/String;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v19           #values:Landroid/content/ContentValues;
    :catch_5e
    move-exception v6

    move-object v14, v6

    .line 251
    .local v14, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v6, "Sync"

    const-string v7, "disk full while trying to mark the feeds as dirty, skipping"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .end local v14           #e:Landroid/database/sqlite/SQLiteFullException;
    :cond_67
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    add-long v17, v6, v8

    .line 256
    .local v17, refreshTime:J
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsIntentService;->scheduleRefresh(Landroid/content/Context;J)V

    .line 257
    const-string v6, "subscribedFeeds"

    const/4 v7, 0x1

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 259
    .local v15, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "refreshTime"

    move-object v0, v15

    move-object v1, v6

    move-wide/from16 v2, v17

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 260
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 261
    return-void
.end method

.method private handleTickle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter "feed"

    .prologue
    const-string v0, "Sync"

    .line 120
    const/4 v7, 0x0

    .line 121
    .local v7, c:Landroid/database/Cursor;
    const-string v11, "_sync_account= ? and feed= ?"

    .line 124
    .local v11, where:Ljava/lang/String;
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_sync_account= ? and feed= ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 126
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_69

    .line 127
    const-string v0, "Sync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received tickle for non-existent feed: account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", feed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/16 v0, 0xab6

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 133
    invoke-static {}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsIntentService;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ORG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    const-string v0, "https"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 134
    const-string v0, "Sync"

    const-string v1, "feed does not match"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0, p1}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsIntentService;->startSyncForFeeds(Landroid/content/Context;)V

    .line 140
    :cond_69
    :goto_69
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 142
    const-string v0, "authority"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, authority:Ljava/lang/String;
    const/16 v0, 0xab6

    invoke-static {v0, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_5 .. :try_end_7e} :catchall_d8

    .line 146
    :try_start_7e
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/content/IContentService;->getSyncProviderAutomatically(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_aa

    .line 148
    const-string v0, "Sync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supressing tickle since provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is configured to not sync automatically"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catchall {:try_start_7e .. :try_end_a6} :catchall_d8
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_a6} :catch_a7

    goto :goto_69

    .line 152
    :catch_a7
    move-exception v0

    move-object v8, v0

    .line 153
    .local v8, e:Landroid/os/RemoteException;
    goto :goto_69

    .line 155
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_aa
    :try_start_aa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 156
    .local v10, uri:Landroid/net/Uri;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v9, extras:Landroid/os/Bundle;
    const-string v0, "account"

    invoke-virtual {v9, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "feed"

    invoke-virtual {v9, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v10, v9}, Landroid/content/ContentResolver;->startSync(Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_d7
    .catchall {:try_start_aa .. :try_end_d7} :catchall_d8

    goto :goto_69

    .line 162
    .end local v6           #authority:Ljava/lang/String;
    .end local v9           #extras:Landroid/os/Bundle;
    .end local v10           #uri:Landroid/net/Uri;
    :catchall_d8
    move-exception v0

    if-eqz v7, :cond_de

    invoke-interface {v7}, Landroid/database/Cursor;->deactivate()V

    :cond_de
    throw v0

    :cond_df
    if-eqz v7, :cond_e4

    invoke-interface {v7}, Landroid/database/Cursor;->deactivate()V

    .line 164
    :cond_e4
    return-void
.end method

.method private scheduleRefresh(Landroid/content/Context;J)V
    .registers 9
    .parameter "context"
    .parameter "when"

    .prologue
    const/4 v4, 0x0

    .line 112
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 114
    .local v0, alarmManager:Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.subscribedfeeds.action.REFRESH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 116
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p2, p3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 117
    return-void
.end method

.method private startSyncForFeeds(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const-string v7, "startSyncForFeeds :"

    const-string v6, "force"

    const-string v4, "Sync"

    .line 193
    const-string v2, "Sync"

    const-string v2, "startSyncForFeeds START"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v2, "content://subscribedfeeds"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 198
    .local v1, uriToSync:Landroid/net/Uri;
    const-string v2, "Sync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSyncForFeeds :"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 200
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "force"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->startSync(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 205
    const-string v2, "content://gmail-ls"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 206
    const-string v2, "Sync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSyncForFeeds :"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 208
    const-string v2, "force"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->startSync(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 210
    const-string v2, "Sync"

    const-string v2, "startSyncForFeeds END"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 11
    .parameter "intent"

    .prologue
    const-string v7, "Sync"

    .line 68
    const-string v5, "android.intent.action.GTALK_DATA_MESSAGE_RECEIVED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 69
    const-string v5, "from_trusted_server"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 70
    .local v1, fromTrustedServer:Z
    if-eqz v1, :cond_5d

    .line 71
    const-string v5, "account"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, account:Ljava/lang/String;
    const-string v5, "message_token"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, token:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2f

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 76
    :cond_2f
    const-string v5, "Sync"

    const-string v5, "Ignoring malformed tickle -- missing account or token."

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v0           #account:Ljava/lang/String;
    .end local v1           #fromTrustedServer:Z
    .end local v4           #token:Ljava/lang/String;
    :cond_36
    :goto_36
    return-void

    .line 82
    .restart local v0       #account:Ljava/lang/String;
    .restart local v1       #fromTrustedServer:Z
    .restart local v4       #token:Ljava/lang/String;
    :cond_37
    const-string v5, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received network tickle for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0, p0, v0, v4}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsIntentService;->handleTickle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    .line 88
    .end local v0           #account:Ljava/lang/String;
    .end local v4           #token:Ljava/lang/String;
    :cond_5d
    const-string v5, "Sync"

    const/4 v5, 0x2

    invoke-static {v7, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 89
    const-string v5, "Sync"

    const-string v5, "Ignoring tickle -- not from trusted server."

    invoke-static {v7, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 93
    .end local v1           #fromTrustedServer:Z
    :cond_6e
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 96
    const-string v5, "Sync"

    const-string v5, "Received boot completed action"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v5, "subscribedFeeds"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsIntentService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "refreshTime"

    const-wide/16 v7, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 103
    .local v2, refreshTime:J
    invoke-direct {p0, p0, v2, v3}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsIntentService;->scheduleRefresh(Landroid/content/Context;J)V

    goto :goto_36

    .line 104
    .end local v2           #refreshTime:J
    :cond_94
    const-string v5, "com.android.subscribedfeeds.action.REFRESH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 106
    const-string v5, "Sync"

    const-string v5, "Received sSubscribedFeedsRefreshIntent"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-direct {p0, p0}, Lcom/android/providers/subscribedfeeds/SubscribedFeedsIntentService;->handleRefreshAlarm(Landroid/content/Context;)V

    goto :goto_36
.end method
