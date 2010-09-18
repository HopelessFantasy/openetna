.class public Lcom/android/settings/ApnSettings;
.super Landroid/preference/PreferenceActivity;
.source "ApnSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ApnSettings$4;,
        Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;,
        Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
    }
.end annotation


# static fields
.field public static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final APN_INDEX:I = 0x2

.field private static final DEFAULTAPN_URI:Landroid/net/Uri; = null

.field private static final DIALOG_RESTORE_DEFAULTAPN:I = 0x3e9

.field private static final EVENT_RESTORE_DEFAULTAPN_COMPLETE:I = 0x2

.field private static final EVENT_RESTORE_DEFAULTAPN_START:I = 0x1

.field public static final EXTRA_POSITION:Ljava/lang/String; = "position"

.field private static final ID_INDEX:I = 0x0

.field private static final MENU_NEW:I = 0x1

.field private static final MENU_RESTORE:I = 0x2

.field private static final NAME_INDEX:I = 0x1

.field private static final PREFERAPN_URI:Landroid/net/Uri; = null

.field public static final PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field public static final RESTORE_CARRIERS_URI:Ljava/lang/String; = "content://telephony/carriers/restore"

.field static final TAG:Ljava/lang/String; = "ApnSettings"

.field private static final TYPES_INDEX:I = 0x3

.field private static countrycode:Ljava/lang/String;

.field private static mRestoreDefaultApnMode:Z

.field private static operator_code:Ljava/lang/String;


# instance fields
.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mNewApnButton:Landroid/view/View;

.field private mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

.field private mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

.field private mSelectedKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 101
    const-string v0, ""

    sput-object v0, Lcom/android/settings/ApnSettings;->countrycode:Ljava/lang/String;

    .line 102
    const-string v0, "OPEN"

    sput-object v0, Lcom/android/settings/ApnSettings;->operator_code:Ljava/lang/String;

    .line 131
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 132
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 148
    new-instance v0, Lcom/android/settings/ApnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnSettings$1;-><init>(Lcom/android/settings/ApnSettings;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 528
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 86
    invoke-static {p0}, Lcom/android/settings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 86
    sget-boolean v0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 86
    sput-boolean p0, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/ApnSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/ApnSettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->addNewApn()V

    return-void
.end method

.method static synthetic access$500()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/settings/ApnSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private addNewApn()V
    .registers 4

    .prologue
    .line 444
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 445
    return-void
.end method

.method private fillList()V
    .registers 22

    .prologue
    .line 314
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "numeric=\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "gsm.sim.operator.numeric"

    const-string v19, ""

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 332
    .local v16, where:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/ApnSettings;->loadOperatorCode()V

    .line 334
    const-string v17, "ApnSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[ApnSettings] operator_code is : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/settings/ApnSettings;->operator_code:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string v17, "OPEN"

    sget-object v18, Lcom/android/settings/ApnSettings;->operator_code:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_52

    const-string v17, "SFR"

    sget-object v18, Lcom/android/settings/ApnSettings;->operator_code:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14c

    .line 343
    :cond_52
    const-string v17, "ApnSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[ApnSettings] where called : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/settings/ApnSettings;->operator_code:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    sget-object v17, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "_id"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "name"

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const-string v20, "apn"

    aput-object v20, v18, v19

    const/16 v19, 0x3

    const-string v20, "type"

    aput-object v20, v18, v19

    const-string v19, "name ASC"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v16

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/ApnSettings;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 359
    .local v7, cursor:Landroid/database/Cursor;
    :goto_9e
    const-string v17, "apn_list"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 360
    .local v6, apnList:Landroid/preference/PreferenceGroup;
    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 362
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v10, mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/ApnSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 366
    if-eqz v7, :cond_1a9

    .line 368
    :try_start_be
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 369
    :goto_c1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v17

    if-nez v17, :cond_1a6

    .line 370
    const/16 v17, 0x1

    move-object v0, v7

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 371
    .local v11, name:Ljava/lang/String;
    const/16 v17, 0x2

    move-object v0, v7

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 372
    .local v5, apn:Ljava/lang/String;
    const/16 v17, 0x0

    move-object v0, v7

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 373
    .local v9, key:Ljava/lang/String;
    const/16 v17, 0x3

    move-object v0, v7

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 375
    .local v15, type:Ljava/lang/String;
    new-instance v12, Lcom/android/settings/ApnPreference;

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/ApnPreference;-><init>(Landroid/content/Context;)V

    .line 377
    .local v12, pref:Lcom/android/settings/ApnPreference;
    invoke-virtual {v12, v9}, Lcom/android/settings/ApnPreference;->setKey(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v12, v11}, Lcom/android/settings/ApnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 379
    invoke-virtual {v12, v5}, Lcom/android/settings/ApnPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 380
    const/16 v17, 0x0

    move-object v0, v12

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setPersistent(Z)V

    .line 381
    move-object v0, v12

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 383
    if-eqz v15, :cond_117

    const-string v17, "mms"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_19c

    :cond_117
    const/16 v17, 0x1

    move/from16 v14, v17

    .line 384
    .local v14, selectable:Z
    :goto_11b
    invoke-virtual {v12, v14}, Lcom/android/settings/ApnPreference;->setSelectable(Z)V

    .line 385
    if-eqz v14, :cond_1a2

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_13f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13f

    .line 387
    const/16 v17, 0x1

    move-object v0, v12

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/ApnPreference;->setChecked(Z)V

    .line 389
    :cond_13f
    invoke-virtual {v6, v12}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 393
    :goto_142
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_145
    .catchall {:try_start_be .. :try_end_145} :catchall_147

    goto/16 :goto_c1

    .line 397
    .end local v5           #apn:Ljava/lang/String;
    .end local v9           #key:Ljava/lang/String;
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #pref:Lcom/android/settings/ApnPreference;
    .end local v14           #selectable:Z
    .end local v15           #type:Ljava/lang/String;
    :catchall_147
    move-exception v17

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v17

    .line 350
    .end local v6           #apnList:Landroid/preference/PreferenceGroup;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v10           #mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    :cond_14c
    const-string v17, "ApnSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[ApnSettings] null called : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/android/settings/ApnSettings;->operator_code:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    sget-object v17, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "_id"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "name"

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const-string v20, "apn"

    aput-object v20, v18, v19

    const/16 v19, 0x3

    const-string v20, "type"

    aput-object v20, v18, v19

    const/16 v19, 0x0

    const-string v20, "name ASC"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/ApnSettings;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .restart local v7       #cursor:Landroid/database/Cursor;
    goto/16 :goto_9e

    .line 383
    .restart local v5       #apn:Ljava/lang/String;
    .restart local v6       #apnList:Landroid/preference/PreferenceGroup;
    .restart local v9       #key:Ljava/lang/String;
    .restart local v10       #mmsApnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    .restart local v11       #name:Ljava/lang/String;
    .restart local v12       #pref:Lcom/android/settings/ApnPreference;
    .restart local v15       #type:Ljava/lang/String;
    :cond_19c
    const/16 v17, 0x0

    move/from16 v14, v17

    goto/16 :goto_11b

    .line 391
    .restart local v14       #selectable:Z
    :cond_1a2
    :try_start_1a2
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1a5
    .catchall {:try_start_1a2 .. :try_end_1a5} :catchall_147

    goto :goto_142

    .line 397
    .end local v5           #apn:Ljava/lang/String;
    .end local v9           #key:Ljava/lang/String;
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #pref:Lcom/android/settings/ApnPreference;
    .end local v14           #selectable:Z
    .end local v15           #type:Ljava/lang/String;
    :cond_1a6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 402
    :cond_1a9
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1ad
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1bd

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/preference/Preference;

    .line 403
    .local v13, preference:Landroid/preference/Preference;
    invoke-virtual {v6, v13}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1ad

    .line 405
    .end local v13           #preference:Landroid/preference/Preference;
    :cond_1bd
    return-void
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .registers 3
    .parameter "intent"

    .prologue
    .line 168
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 170
    const-class v1, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/Phone$DataState;

    move-object v1, p0

    .line 172
    :goto_11
    return-object v1

    .restart local p0
    :cond_12
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_11
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 476
    const/4 v1, 0x0

    .line 478
    .local v1, key:Ljava/lang/String;
    sget-object v2, Lcom/android/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v3, v6

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/settings/ApnSettings;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 480
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1f

    .line 481
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 482
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 484
    :cond_1f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 485
    return-object v1
.end method

.method public static loadOperatorCode()V
    .registers 1

    .prologue
    .line 214
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->countrycode:Ljava/lang/String;

    .line 215
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnSettings;->operator_code:Ljava/lang/String;

    .line 224
    return-void
.end method

.method private restoreDefaultApn()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 489
    const/16 v1, 0x3e9

    invoke-virtual {p0, v1}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    .line 490
    sput-boolean v4, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    .line 492
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    if-nez v1, :cond_14

    .line 493
    new-instance v1, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$1;)V

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    .line 496
    :cond_14
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    if-nez v1, :cond_2f

    .line 497
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Restore default APN Handler: Process Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 499
    .local v0, restoreDefaultApnThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 500
    new-instance v1, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mRestoreApnUiHandler:Lcom/android/settings/ApnSettings$RestoreApnUiHandler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;-><init>(Lcom/android/settings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    .line 504
    .end local v0           #restoreDefaultApnThread:Landroid/os/HandlerThread;
    :cond_2f
    iget-object v1, p0, Lcom/android/settings/ApnSettings;->mRestoreApnProcessHandler:Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;

    invoke-virtual {v1, v4}, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->sendEmptyMessage(I)Z

    .line 506
    return v4
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .registers 7
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 467
    iput-object p1, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 470
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 471
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    sget-object v2, Lcom/android/settings/ApnSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 473
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 234
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->setContentView(I)V

    .line 236
    const v0, 0x7f040002

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->addPreferencesFromResource(I)V

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 240
    const v0, 0x7f0a0002

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mNewApnButton:Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mNewApnButton:Landroid/view/View;

    .line 241
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mNewApnButton:Landroid/view/View;

    new-instance v1, Lcom/android/settings/ApnSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/ApnSettings$2;-><init>(Lcom/android/settings/ApnSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 252
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 551
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_1d

    .line 552
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 553
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080247

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 554
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    move-object v1, v0

    .line 557
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_1c
    return-object v1

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 409
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 418
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080248

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 421
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 426
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 440
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 437
    :pswitch_c
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->restoreDefaultApn()Z

    .line 438
    const/4 v0, 0x1

    goto :goto_b

    .line 426
    nop

    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 308
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 310
    iget-object v0, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/ApnSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 311
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 456
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange(): Preference - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newValue type - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_39

    .line 460
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/ApnSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 463
    :cond_39
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 449
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 450
    .local v0, pos:I
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 451
    .local v1, url:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/ApnSettings;->startActivity(Landroid/content/Intent;)V

    .line 452
    const/4 v2, 0x1

    return v2
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 562
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_c

    .line 563
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 565
    :cond_c
    return-void
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const/16 v5, 0x3e9

    .line 256
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 260
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/ApnSettings;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/ApnSettings;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/ApnSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 273
    const-string v3, "KTF"

    sget-object v4, Lcom/android/settings/ApnSettings;->operator_code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    const-string v3, "KT"

    sget-object v4, Lcom/android/settings/ApnSettings;->operator_code:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 275
    :cond_28
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 276
    sget-boolean v3, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v3, :cond_38

    .line 277
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    .line 304
    :goto_37
    return-void

    .line 279
    :cond_38
    invoke-virtual {p0, v5}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    goto :goto_37

    .line 282
    :cond_3c
    const-string v3, "ApnSettings"

    const-string v4, "This path is not accessed now"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0803cb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0803cc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings/ApnSettings$3;

    invoke-direct {v5, p0}, Lcom/android/settings/ApnSettings$3;-><init>(Lcom/android/settings/ApnSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 291
    .local v1, apnCanNotAccessDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 292
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_37

    .line 297
    .end local v1           #apnCanNotAccessDialog:Landroid/app/AlertDialog;
    :cond_7c
    sget-boolean v3, Lcom/android/settings/ApnSettings;->mRestoreDefaultApnMode:Z

    if-nez v3, :cond_84

    .line 298
    invoke-direct {p0}, Lcom/android/settings/ApnSettings;->fillList()V

    goto :goto_37

    .line 300
    :cond_84
    invoke-virtual {p0, v5}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    goto :goto_37
.end method
