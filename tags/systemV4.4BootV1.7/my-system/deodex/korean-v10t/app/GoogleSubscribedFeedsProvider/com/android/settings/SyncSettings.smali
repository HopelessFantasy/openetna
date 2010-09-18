.class public Lcom/android/settings/SyncSettings;
.super Landroid/preference/PreferenceActivity;
.source "SyncSettings.java"


# static fields
.field private static final BACKGROUND_DATA_CHECKBOX_KEY:Ljava/lang/String; = "backgroundDataCheckBox"

.field private static final BACKGROUND_DATA_INTENT_EXTRA_NAME:Ljava/lang/String; = "value"

.field private static final BACKGROUND_DATA_SETTING_CHANGED:Ljava/lang/String; = "com.android.sync.BG_DATA_STATUS_CHANGED"

.field private static final DIALOG_DISABLE_BACKGROUND_DATA:I = 0x1

.field private static final GET_ACCOUNT_REQUEST:I = 0x3828

.field private static final MENU_SYNC_CANCEL_ID:I = 0x2

.field private static final MENU_SYNC_NOW_ID:I = 0x1

.field private static final SYNC_CHECKBOX_KEY:Ljava/lang/String; = "autoSyncCheckBox"

.field private static final SYNC_CONNECTION_SETTING_CHANGED:Ljava/lang/String; = "com.android.sync.SYNC_CONN_STATUS_CHANGED"

.field private static final SYNC_KEY_PREFIX:Ljava/lang/String; = "sync_"


# instance fields
.field mAutoSyncCheckBox:Landroid/preference/CheckBoxPreference;

.field mContentService:Landroid/content/IContentService;

.field mDateFormat:Ljava/text/DateFormat;

.field mErrorInfoView:Landroid/widget/TextView;

.field final mHandler:Landroid/os/Handler;

.field mProviderInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mProviderNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncStatusObserver:Landroid/content/ISyncStatusObserver;

.field mTimeFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SyncSettings;->mHandler:Landroid/os/Handler;

    .line 424
    new-instance v0, Lcom/android/settings/SyncSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SyncSettings$2;-><init>(Lcom/android/settings/SyncSettings;)V

    iput-object v0, p0, Lcom/android/settings/SyncSettings;->mSyncStatusObserver:Landroid/content/ISyncStatusObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SyncSettings;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/SyncSettings;->setBackgroundDataInt(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/SyncSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/SyncSettings;->onSyncStateUpdated()V

    return-void
.end method

.method private cancelOrStartSyncForEnabledProviders(Z)V
    .registers 11
    .parameter "startSync"

    .prologue
    const-string v8, "sync_"

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 388
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_b
    if-ge v3, v2, :cond_4c

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 390
    .local v4, pref:Landroid/preference/Preference;
    invoke-virtual {v4}, Landroid/preference/Preference;->hasKey()Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "sync_"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 391
    move-object v0, v4

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v5, v0

    .line 392
    .local v5, toggle:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_34

    .line 388
    .end local v5           #toggle:Landroid/preference/CheckBoxPreference;
    :cond_31
    :goto_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 395
    .restart local v5       #toggle:Landroid/preference/CheckBoxPreference;
    :cond_34
    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "sync_"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, authority:Ljava/lang/String;
    if-eqz p1, :cond_48

    .line 397
    invoke-direct {p0, v1}, Lcom/android/settings/SyncSettings;->startSync(Ljava/lang/String;)V

    goto :goto_31

    .line 399
    :cond_48
    invoke-direct {p0, v1}, Lcom/android/settings/SyncSettings;->cancelSync(Ljava/lang/String;)V

    goto :goto_31

    .line 405
    .end local v1           #authority:Ljava/lang/String;
    .end local v4           #pref:Landroid/preference/Preference;
    .end local v5           #toggle:Landroid/preference/CheckBoxPreference;
    :cond_4c
    sget-object v6, Landroid/provider/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 406
    .restart local v1       #authority:Ljava/lang/String;
    if-eqz p1, :cond_58

    .line 407
    invoke-direct {p0, v1}, Lcom/android/settings/SyncSettings;->startSync(Ljava/lang/String;)V

    .line 411
    :goto_57
    return-void

    .line 409
    :cond_58
    invoke-direct {p0, v1}, Lcom/android/settings/SyncSettings;->cancelSync(Ljava/lang/String;)V

    goto :goto_57
.end method

.method private cancelSync(Ljava/lang/String;)V
    .registers 5
    .parameter "authority"

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/android/settings/SyncSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->cancelSync(Landroid/net/Uri;)V

    .line 422
    return-void
.end method

.method private cancelSyncForEnabledProviders()V
    .registers 2

    .prologue
    .line 383
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/SyncSettings;->cancelOrStartSyncForEnabledProviders(Z)V

    .line 384
    return-void
.end method

.method private checkForAccount()V
    .registers 7

    .prologue
    .line 123
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v2, bundle:Landroid/os/Bundle;
    const-string v0, "optional_message"

    const v1, 0x7f050015

    invoke-virtual {p0, v1}, Lcom/android/settings/SyncSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 125
    const/16 v1, 0x3828

    const/4 v3, 0x0

    const-string v4, "mail"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->getCredentials(Landroid/app/Activity;ILandroid/os/Bundle;ZLjava/lang/String;Z)V

    .line 132
    return-void
.end method

.method private confirmDisablingOfBackgroundData(Landroid/preference/CheckBoxPreference;)V
    .registers 3
    .parameter "backgroundDataPreference"

    .prologue
    const/4 v0, 0x1

    .line 344
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 345
    invoke-virtual {p0, v0}, Lcom/android/settings/SyncSettings;->showDialog(I)V

    .line 346
    return-void
.end method

.method private initProviders()V
    .registers 4

    .prologue
    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SyncSettings;->mProviderNames:Ljava/util/List;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SyncSettings;->mProviderInfos:Ljava/util/List;

    .line 187
    :try_start_e
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SyncSettings;->mProviderNames:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/SyncSettings;->mProviderInfos:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->querySyncProviders(Ljava/util/List;Ljava/util/List;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_19} :catch_1a

    .line 196
    :goto_19
    return-void

    .line 189
    :catch_1a
    move-exception v0

    goto :goto_19
.end method

.method private initUI()V
    .registers 14

    .prologue
    const-string v12, "sync_"

    .line 228
    const-string v10, "backgroundDataCheckBox"

    invoke-virtual {p0, v10}, Lcom/android/settings/SyncSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 230
    .local v2, backgroundData:Landroid/preference/CheckBoxPreference;
    const-string v10, "connectivity"

    invoke-virtual {p0, v10}, Lcom/android/settings/SyncSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 232
    .local v3, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v10

    invoke-virtual {v2, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 235
    const-string v10, "autoSyncCheckBox"

    invoke-virtual {p0, v10}, Lcom/android/settings/SyncSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 237
    .local v1, autoSync:Landroid/preference/CheckBoxPreference;
    :try_start_21
    iget-object v10, p0, Lcom/android/settings/SyncSettings;->mContentService:Landroid/content/IContentService;

    invoke-interface {v10}, Landroid/content/IContentService;->getListenForNetworkTickles()Z

    move-result v10

    invoke-virtual {v1, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2a} :catch_7d

    .line 240
    :goto_2a
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_78

    const/4 v10, 0x1

    :goto_31
    invoke-direct {p0, v10}, Lcom/android/settings/SyncSettings;->setOneTimeSyncMode(Z)V

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    .line 245
    .local v4, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3d
    if-ge v6, v4, :cond_7a

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    .line 247
    .local v7, pref:Landroid/preference/Preference;
    invoke-virtual {v7}, Landroid/preference/Preference;->hasKey()Z

    move-result v10

    if-eqz v10, :cond_75

    invoke-virtual {v7}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    const-string v11, "sync_"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_75

    .line 248
    move-object v0, v7

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v9, v0

    .line 249
    .local v9, toggle:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v10

    const-string v11, "sync_"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 250
    .local v8, providerName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 252
    .local v5, enabled:Z
    :try_start_6c
    iget-object v10, p0, Lcom/android/settings/SyncSettings;->mContentService:Landroid/content/IContentService;

    invoke-interface {v10, v8}, Landroid/content/IContentService;->getSyncProviderAutomatically(Ljava/lang/String;)Z
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_71} :catch_7b

    move-result v5

    .line 255
    :goto_72
    invoke-virtual {v9, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 245
    .end local v5           #enabled:Z
    .end local v8           #providerName:Ljava/lang/String;
    .end local v9           #toggle:Landroid/preference/CheckBoxPreference;
    :cond_75
    add-int/lit8 v6, v6, 0x1

    goto :goto_3d

    .line 240
    .end local v4           #count:I
    .end local v6           #i:I
    .end local v7           #pref:Landroid/preference/Preference;
    :cond_78
    const/4 v10, 0x0

    goto :goto_31

    .line 259
    .restart local v4       #count:I
    .restart local v6       #i:I
    :cond_7a
    return-void

    .line 253
    .restart local v5       #enabled:Z
    .restart local v7       #pref:Landroid/preference/Preference;
    .restart local v8       #providerName:Ljava/lang/String;
    .restart local v9       #toggle:Landroid/preference/CheckBoxPreference;
    :catch_7b
    move-exception v10

    goto :goto_72

    .line 238
    .end local v4           #count:I
    .end local v5           #enabled:Z
    .end local v6           #i:I
    .end local v7           #pref:Landroid/preference/Preference;
    .end local v8           #providerName:Ljava/lang/String;
    .end local v9           #toggle:Landroid/preference/CheckBoxPreference;
    :catch_7d
    move-exception v10

    goto :goto_2a
.end method

.method private onSyncStateUpdated()V
    .registers 25

    .prologue
    .line 436
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 437
    .local v8, date:Ljava/util/Date;
    const/4 v3, 0x0

    .line 439
    .local v3, activeSyncValues:Landroid/content/ActiveSyncInfo;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SyncSettings;->mContentService:Landroid/content/IContentService;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/content/IContentService;->getActiveSync()Landroid/content/ActiveSyncInfo;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_149

    move-result-object v3

    .line 442
    :goto_10
    const/16 v17, 0x0

    .line 443
    .local v17, syncIsFailing:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v7

    .line 444
    .local v7, count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1b
    if-ge v9, v7, :cond_135

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v11

    .line 446
    .local v11, pref:Landroid/preference/Preference;
    invoke-virtual {v11}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    .line 447
    .local v12, prefKey:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_118

    const-string v20, "sync_"

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_118

    .line 448
    const-string v20, "sync_"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 449
    .local v5, authority:Ljava/lang/String;
    move-object v0, v11

    check-cast v0, Lcom/android/settings/SyncStateCheckBoxPreference;

    move-object/from16 v19, v0

    .line 450
    .local v19, toggle:Lcom/android/settings/SyncStateCheckBoxPreference;
    const/4 v13, 0x0

    .line 451
    .local v13, status:Landroid/content/SyncStatusInfo;
    const/16 v16, 0x0

    .line 452
    .local v16, syncEnabled:Z
    const/4 v6, 0x0

    .line 454
    .local v6, authorityIsPending:Z
    :try_start_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SyncSettings;->mContentService:Landroid/content/IContentService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/content/IContentService;->getStatusByAuthority(Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v13

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SyncSettings;->mContentService:Landroid/content/IContentService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/content/IContentService;->getSyncProviderAutomatically(Ljava/lang/String;)Z

    move-result v16

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SyncSettings;->mContentService:Landroid/content/IContentService;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/IContentService;->isAuthorityPending(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_7d} :catch_146

    move-result v6

    .line 460
    :goto_7e
    if-eqz v3, :cond_11c

    move-object v0, v3

    iget-object v0, v0, Landroid/content/ActiveSyncInfo;->authority:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11c

    const/16 v20, 0x1

    move/from16 v4, v20

    .line 462
    .local v4, activelySyncing:Z
    :goto_92
    if-eqz v13, :cond_122

    move-object v0, v13

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_122

    const/16 v20, 0x0

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_122

    const/16 v20, 0x1

    move/from16 v10, v20

    .line 466
    .local v10, lastSyncFailed:Z
    :goto_b4
    if-nez v16, :cond_b7

    const/4 v10, 0x0

    .line 467
    :cond_b7
    if-eqz v10, :cond_bf

    if-nez v4, :cond_bf

    if-nez v6, :cond_bf

    .line 468
    const/16 v17, 0x1

    .line 470
    :cond_bf
    if-nez v13, :cond_127

    const-wide/16 v20, 0x0

    move-wide/from16 v14, v20

    .line 472
    .local v14, successEndTime:J
    :goto_c5
    const-wide/16 v20, 0x0

    cmp-long v20, v14, v20

    if-eqz v20, :cond_12f

    .line 473
    invoke-virtual {v8, v14, v15}, Ljava/util/Date;->setTime(J)V

    .line 474
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SyncSettings;->mDateFormat:Ljava/text/DateFormat;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SyncSettings;->mTimeFormat:Ljava/text/DateFormat;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 476
    .local v18, timeString:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/SyncStateCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 480
    .end local v18           #timeString:Ljava/lang/String;
    :goto_106
    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/settings/SyncStateCheckBoxPreference;->setActive(Z)V

    .line 481
    move-object/from16 v0, v19

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/settings/SyncStateCheckBoxPreference;->setPending(Z)V

    .line 482
    move-object/from16 v0, v19

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/settings/SyncStateCheckBoxPreference;->setFailed(Z)V

    .line 444
    .end local v4           #activelySyncing:Z
    .end local v5           #authority:Ljava/lang/String;
    .end local v6           #authorityIsPending:Z
    .end local v10           #lastSyncFailed:Z
    .end local v13           #status:Landroid/content/SyncStatusInfo;
    .end local v14           #successEndTime:J
    .end local v16           #syncEnabled:Z
    .end local v19           #toggle:Lcom/android/settings/SyncStateCheckBoxPreference;
    :cond_118
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1b

    .line 460
    .restart local v5       #authority:Ljava/lang/String;
    .restart local v6       #authorityIsPending:Z
    .restart local v13       #status:Landroid/content/SyncStatusInfo;
    .restart local v16       #syncEnabled:Z
    .restart local v19       #toggle:Lcom/android/settings/SyncStateCheckBoxPreference;
    :cond_11c
    const/16 v20, 0x0

    move/from16 v4, v20

    goto/16 :goto_92

    .line 462
    .restart local v4       #activelySyncing:Z
    :cond_122
    const/16 v20, 0x0

    move/from16 v10, v20

    goto :goto_b4

    .line 470
    .restart local v10       #lastSyncFailed:Z
    :cond_127
    move-object v0, v13

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v20, v0

    move-wide/from16 v14, v20

    goto :goto_c5

    .line 478
    .restart local v14       #successEndTime:J
    :cond_12f
    const-string v20, ""

    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/SyncStateCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_106

    .line 485
    .end local v4           #activelySyncing:Z
    .end local v5           #authority:Ljava/lang/String;
    .end local v6           #authorityIsPending:Z
    .end local v10           #lastSyncFailed:Z
    .end local v11           #pref:Landroid/preference/Preference;
    .end local v12           #prefKey:Ljava/lang/String;
    .end local v13           #status:Landroid/content/SyncStatusInfo;
    .end local v14           #successEndTime:J
    .end local v16           #syncEnabled:Z
    .end local v19           #toggle:Lcom/android/settings/SyncStateCheckBoxPreference;
    :cond_135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    if-eqz v17, :cond_143

    const/16 v21, 0x0

    :goto_13f
    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    return-void

    .line 485
    :cond_143
    const/16 v21, 0x8

    goto :goto_13f

    .line 457
    .restart local v5       #authority:Ljava/lang/String;
    .restart local v6       #authorityIsPending:Z
    .restart local v11       #pref:Landroid/preference/Preference;
    .restart local v12       #prefKey:Ljava/lang/String;
    .restart local v13       #status:Landroid/content/SyncStatusInfo;
    .restart local v16       #syncEnabled:Z
    .restart local v19       #toggle:Lcom/android/settings/SyncStateCheckBoxPreference;
    :catch_146
    move-exception v20

    goto/16 :goto_7e

    .line 440
    .end local v5           #authority:Ljava/lang/String;
    .end local v6           #authorityIsPending:Z
    .end local v7           #count:I
    .end local v9           #i:I
    .end local v11           #pref:Landroid/preference/Preference;
    .end local v12           #prefKey:Ljava/lang/String;
    .end local v13           #status:Landroid/content/SyncStatusInfo;
    .end local v16           #syncEnabled:Z
    .end local v17           #syncIsFailing:Z
    .end local v19           #toggle:Lcom/android/settings/SyncStateCheckBoxPreference;
    :catch_149
    move-exception v20

    goto/16 :goto_10
.end method

.method private setBackgroundDataInt(Z)V
    .registers 4
    .parameter "enabled"

    .prologue
    .line 373
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/SyncSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 375
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    .line 376
    return-void
.end method

.method private setOneTimeSyncMode(Z)V
    .registers 9
    .parameter "oneTimeSyncMode"

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/android/settings/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 332
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    if-ge v2, v1, :cond_2f

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/SyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 334
    .local v3, pref:Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->hasKey()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sync_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 335
    move-object v0, v3

    check-cast v0, Lcom/android/settings/SyncStateCheckBoxPreference;

    move-object v4, v0

    .line 336
    .local v4, syncPref:Lcom/android/settings/SyncStateCheckBoxPreference;
    invoke-virtual {v4, p1}, Lcom/android/settings/SyncStateCheckBoxPreference;->setOneTimeSyncMode(Z)V

    .line 332
    .end local v4           #syncPref:Lcom/android/settings/SyncStateCheckBoxPreference;
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 339
    .end local v3           #pref:Landroid/preference/Preference;
    :cond_2f
    return-void
.end method

.method private startSync(Ljava/lang/String;)V
    .registers 6
    .parameter "providerName"

    .prologue
    .line 414
    if-eqz p1, :cond_2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v1, v2

    .line 415
    .local v1, uriToSync:Landroid/net/Uri;
    :goto_1a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 416
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "force"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 417
    invoke-virtual {p0}, Lcom/android/settings/SyncSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->startSync(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 418
    return-void

    .line 414
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #uriToSync:Landroid/net/Uri;
    :cond_2d
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_1a
.end method

.method private startSyncForEnabledProviders()V
    .registers 2

    .prologue
    .line 379
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/SyncSettings;->cancelOrStartSyncForEnabledProviders(Z)V

    .line 380
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 136
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 137
    const/16 v0, 0x3828

    if-ne p1, v0, :cond_d

    .line 138
    const/4 v0, -0x1

    if-eq p2, v0, :cond_d

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/SyncSettings;->finish()V

    .line 144
    :cond_d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 97
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SyncSettings;->mContentService:Landroid/content/IContentService;

    .line 101
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/android/settings/SyncSettings;->setContentView(I)V

    .line 102
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Lcom/android/settings/SyncSettings;->addPreferencesFromResource(I)V

    .line 104
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Lcom/android/settings/SyncSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/android/settings/SyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/SyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/SyncSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 109
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SyncSettings;->mDateFormat:Ljava/text/DateFormat;

    .line 110
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SyncSettings;->mTimeFormat:Ljava/text/DateFormat;

    .line 112
    const-string v0, "autoSyncCheckBox"

    invoke-virtual {p0, v0}, Lcom/android/settings/SyncSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SyncSettings;->mAutoSyncCheckBox:Landroid/preference/CheckBoxPreference;

    .line 114
    if-nez p1, :cond_51

    invoke-direct {p0}, Lcom/android/settings/SyncSettings;->checkForAccount()V

    .line 116
    :cond_51
    invoke-direct {p0}, Lcom/android/settings/SyncSettings;->initProviders()V

    .line 117
    invoke-direct {p0}, Lcom/android/settings/SyncSettings;->initUI()V

    .line 118
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 7
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 350
    packed-switch p1, :pswitch_data_40

    move-object v1, v4

    .line 369
    :goto_5
    return-object v1

    .line 352
    :pswitch_6
    const-string v1, "backgroundDataCheckBox"

    invoke-virtual {p0, v1}, Lcom/android/settings/SyncSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 354
    .local v0, pref:Landroid/preference/CheckBoxPreference;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f050005

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f050006

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/SyncSettings$1;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/SyncSettings$1;-><init>(Lcom/android/settings/SyncSettings;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_5

    .line 350
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 149
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/android/settings/SyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080193

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 151
    const/4 v0, 0x2

    const v1, 0x7f05000b

    invoke-virtual {p0, v1}, Lcom/android/settings/SyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 153
    return v3
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 223
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 224
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 171
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 179
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 173
    :pswitch_d
    invoke-direct {p0}, Lcom/android/settings/SyncSettings;->startSyncForEnabledProviders()V

    move v0, v1

    .line 174
    goto :goto_c

    .line 176
    :pswitch_12
    invoke-direct {p0}, Lcom/android/settings/SyncSettings;->cancelSyncForEnabledProviders()V

    move v0, v1

    .line 177
    goto :goto_c

    .line 171
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 214
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 216
    :try_start_3
    iget-object v0, p0, Lcom/android/settings/SyncSettings;->mContentService:Landroid/content/IContentService;

    iget-object v1, p0, Lcom/android/settings/SyncSettings;->mSyncStatusObserver:Landroid/content/ISyncStatusObserver;

    invoke-interface {v0, v1}, Landroid/content/IContentService;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    .line 219
    :goto_a
    return-void

    .line 217
    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 17
    .parameter "preferences"
    .parameter "preference"

    .prologue
    .line 263
    move-object/from16 v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v12, v0

    .line 264
    .local v12, togglePreference:Landroid/preference/CheckBoxPreference;
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, key:Ljava/lang/String;
    const-string v13, "backgroundDataCheckBox"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2f

    .line 266
    const-string v13, "connectivity"

    invoke-virtual {p0, v13}, Lcom/android/settings/SyncSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 268
    .local v2, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v6

    .line 269
    .local v6, oldBackgroundDataSetting:Z
    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 270
    .local v1, backgroundDataSetting:Z
    if-eq v6, v1, :cond_29

    .line 271
    if-eqz v1, :cond_2b

    .line 272
    const/4 v13, 0x1

    invoke-direct {p0, v13}, Lcom/android/settings/SyncSettings;->setBackgroundDataInt(Z)V

    .line 327
    .end local v1           #backgroundDataSetting:Z
    .end local v2           #connManager:Landroid/net/ConnectivityManager;
    .end local v6           #oldBackgroundDataSetting:Z
    :cond_29
    :goto_29
    const/4 v13, 0x1

    :goto_2a
    return v13

    .line 274
    .restart local v1       #backgroundDataSetting:Z
    .restart local v2       #connManager:Landroid/net/ConnectivityManager;
    .restart local v6       #oldBackgroundDataSetting:Z
    :cond_2b
    invoke-direct {p0, v12}, Lcom/android/settings/SyncSettings;->confirmDisablingOfBackgroundData(Landroid/preference/CheckBoxPreference;)V

    goto :goto_29

    .line 277
    .end local v1           #backgroundDataSetting:Z
    .end local v2           #connManager:Landroid/net/ConnectivityManager;
    .end local v6           #oldBackgroundDataSetting:Z
    :cond_2f
    const-string v13, "autoSyncCheckBox"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_69

    .line 278
    const/4 v7, 0x0

    .line 280
    .local v7, oldListenForTickles:Z
    :try_start_38
    iget-object v13, p0, Lcom/android/settings/SyncSettings;->mContentService:Landroid/content/IContentService;

    invoke-interface {v13}, Landroid/content/IContentService;->getListenForNetworkTickles()Z
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3d} :catch_ae

    move-result v7

    .line 283
    :goto_3e
    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    .line 284
    .local v5, listenForTickles:Z
    if-eq v7, v5, :cond_5b

    .line 286
    :try_start_44
    iget-object v13, p0, Lcom/android/settings/SyncSettings;->mContentService:Landroid/content/IContentService;

    invoke-interface {v13, v5}, Landroid/content/IContentService;->setListenForNetworkTickles(Z)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_49} :catch_ac

    .line 289
    :goto_49
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 290
    .local v3, intent:Landroid/content/Intent;
    const-string v13, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-virtual {v3, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v3}, Lcom/android/settings/SyncSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 292
    if-eqz v5, :cond_5b

    .line 293
    invoke-direct {p0}, Lcom/android/settings/SyncSettings;->startSyncForEnabledProviders()V

    .line 296
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5b
    if-nez v5, :cond_60

    .line 297
    invoke-direct {p0}, Lcom/android/settings/SyncSettings;->cancelSyncForEnabledProviders()V

    .line 299
    :cond_60
    if-nez v5, :cond_67

    const/4 v13, 0x1

    :goto_63
    invoke-direct {p0, v13}, Lcom/android/settings/SyncSettings;->setOneTimeSyncMode(Z)V

    goto :goto_29

    :cond_67
    const/4 v13, 0x0

    goto :goto_63

    .line 300
    .end local v5           #listenForTickles:Z
    .end local v7           #oldListenForTickles:Z
    :cond_69
    const-string v13, "sync_"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a6

    .line 301
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/settings/SyncStateCheckBoxPreference;

    move-object v11, v0

    .line 302
    .local v11, syncPref:Lcom/android/settings/SyncStateCheckBoxPreference;
    const-string v13, "sync_"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 303
    .local v9, providerName:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/settings/SyncStateCheckBoxPreference;->isOneTimeSyncMode()Z

    move-result v13

    if-eqz v13, :cond_8a

    .line 304
    invoke-direct {p0, v9}, Lcom/android/settings/SyncSettings;->startSync(Ljava/lang/String;)V

    goto :goto_29

    .line 306
    :cond_8a
    invoke-virtual {v12}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    .line 307
    .local v10, syncOn:Z
    const/4 v8, 0x0

    .line 309
    .local v8, oldSyncState:Z
    :try_start_8f
    iget-object v13, p0, Lcom/android/settings/SyncSettings;->mContentService:Landroid/content/IContentService;

    invoke-interface {v13, v9}, Landroid/content/IContentService;->getSyncProviderAutomatically(Ljava/lang/String;)Z
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_94} :catch_aa

    move-result v8

    .line 312
    :goto_95
    if-eq v10, v8, :cond_29

    .line 314
    :try_start_97
    iget-object v13, p0, Lcom/android/settings/SyncSettings;->mContentService:Landroid/content/IContentService;

    invoke-interface {v13, v9, v10}, Landroid/content/IContentService;->setSyncProviderAutomatically(Ljava/lang/String;Z)V
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_9c} :catch_a8

    .line 317
    :goto_9c
    if-eqz v10, :cond_a2

    .line 318
    invoke-direct {p0, v9}, Lcom/android/settings/SyncSettings;->startSync(Ljava/lang/String;)V

    goto :goto_29

    .line 320
    :cond_a2
    invoke-direct {p0, v9}, Lcom/android/settings/SyncSettings;->cancelSync(Ljava/lang/String;)V

    goto :goto_29

    .line 325
    .end local v8           #oldSyncState:Z
    .end local v9           #providerName:Ljava/lang/String;
    .end local v10           #syncOn:Z
    .end local v11           #syncPref:Lcom/android/settings/SyncStateCheckBoxPreference;
    :cond_a6
    const/4 v13, 0x0

    goto :goto_2a

    .line 315
    .restart local v8       #oldSyncState:Z
    .restart local v9       #providerName:Ljava/lang/String;
    .restart local v10       #syncOn:Z
    .restart local v11       #syncPref:Lcom/android/settings/SyncStateCheckBoxPreference;
    :catch_a8
    move-exception v13

    goto :goto_9c

    .line 310
    :catch_aa
    move-exception v13

    goto :goto_95

    .line 287
    .end local v8           #oldSyncState:Z
    .end local v9           #providerName:Ljava/lang/String;
    .end local v10           #syncOn:Z
    .end local v11           #syncPref:Lcom/android/settings/SyncStateCheckBoxPreference;
    .restart local v5       #listenForTickles:Z
    .restart local v7       #oldListenForTickles:Z
    :catch_ac
    move-exception v13

    goto :goto_49

    .line 281
    .end local v5           #listenForTickles:Z
    :catch_ae
    move-exception v13

    goto :goto_3e
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 158
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, syncActive:Z
    :try_start_6
    iget-object v1, p0, Lcom/android/settings/SyncSettings;->mContentService:Landroid/content/IContentService;

    invoke-interface {v1}, Landroid/content/IContentService;->getActiveSync()Landroid/content/ActiveSyncInfo;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_24

    move-result-object v1

    if-eqz v1, :cond_22

    move v0, v3

    .line 164
    :goto_f
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v0, :cond_16

    move v2, v3

    :cond_16
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 165
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 166
    return v3

    :cond_22
    move v0, v2

    .line 161
    goto :goto_f

    .line 162
    :catch_24
    move-exception v1

    goto :goto_f
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 200
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 202
    :try_start_3
    iget-object v0, p0, Lcom/android/settings/SyncSettings;->mContentService:Landroid/content/IContentService;

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/settings/SyncSettings;->mSyncStatusObserver:Landroid/content/ISyncStatusObserver;

    invoke-interface {v0, v1, v2}, Landroid/content/IContentService;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_10

    .line 209
    :goto_c
    invoke-direct {p0}, Lcom/android/settings/SyncSettings;->onSyncStateUpdated()V

    .line 210
    return-void

    .line 207
    :catch_10
    move-exception v0

    goto :goto_c
.end method
