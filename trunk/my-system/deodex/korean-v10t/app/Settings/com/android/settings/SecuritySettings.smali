.class public Lcom/android/settings/SecuritySettings;
.super Landroid/preference/PreferenceActivity;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SecuritySettings$CstorAddCredentialHelper;,
        Lcom/android/settings/SecuritySettings$CstorHelper;,
        Lcom/android/settings/SecuritySettings$LockEnabledPref;,
        Lcom/android/settings/SecuritySettings$SettingsObserver;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_CREDENTIAL:Ljava/lang/String; = "android.security.ADD_CREDENTIAL"

.field public static final ACTION_UNLOCK_CREDENTIAL_STORAGE:Ljava/lang/String; = "android.security.UNLOCK_CREDENTIAL_STORAGE"

.field private static final CONFIRM_PATTERN_THEN_DISABLE_AND_CLEAR_REQUEST_CODE:I = 0x37

.field private static final CSTOR_CHANGE_PASSWORD_DIALOG:I = 0x2

.field private static final CSTOR_INIT_DIALOG:I = 0x1

.field private static final CSTOR_MIN_PASSWORD_LENGTH:I = 0x8

.field private static final CSTOR_NAME_CREDENTIAL_DIALOG:I = 0x5

.field private static final CSTOR_RESET_DIALOG:I = 0x4

.field private static final CSTOR_UNLOCK_DIALOG:I = 0x3

.field private static final DBG:Z = false

.field private static final DIALOG_PROGRESS:I = 0x6

.field private static final GSETTINGS_PROVIDER:Ljava/lang/String; = "com.google.android.providers.settings"

.field private static final KEY_CSTOR_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final KEY_CSTOR_ITEM:Ljava/lang/String; = "item"

.field private static final KEY_CSTOR_NAMESPACE:Ljava/lang/String; = "namespace"

.field private static final KEY_CSTOR_TYPE_NAME:Ljava/lang/String; = "typeName"

.field private static final KEY_DONE_USE_LOCATION:Ljava/lang/String; = "doneLocation"

.field private static final KEY_LOCK_ENABLED:Ljava/lang/String; = "lockenabled"

.field private static final KEY_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "tactilefeedback"

.field private static final KEY_VISIBLE_PATTERN:Ljava/lang/String; = "visiblepattern"

.field private static final LOCATION_CATEGORY:Ljava/lang/String; = "location_category"

.field private static final LOCATION_GPS:Ljava/lang/String; = "location_gps"

.field private static final LOCATION_NETWORK:Ljava/lang/String; = "location_network"

.field private static final LOCATION_XTRA_KTF:Ljava/lang/String; = "location_XTRA_KTF"

.field private static final LOCATION_XTRA_download_KTF:Ljava/lang/String; = "location_XTRA_download_KTF"

.field private static final MAX_PROGRESS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SecuritySettings"

.field private static final USE_LOCATION:Ljava/lang/String; = "use_location"


# instance fields
.field private connect:Z

.field private mChoosePattern:Landroid/preference/Preference;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mCstorHelper:Lcom/android/settings/SecuritySettings$CstorHelper;

.field private mFlexOperatorCode:Ljava/lang/String;

.field private mGps:Landroid/preference/CheckBoxPreference;

.field private mGpsDialog:Landroid/app/ProgressDialog;

.field private mGpsProgress:I

.field private mGpsProgressHandler:Landroid/os/Handler;

.field private mILM:Landroid/location/ILocationManager;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLockEnabled:Landroid/preference/CheckBoxPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNetwork:Landroid/preference/CheckBoxPreference;

.field private mOkClicked:Z

.field private mProgress:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressHandler:Landroid/os/Handler;

.field private mShowPassword:Landroid/preference/CheckBoxPreference;

.field private mTactileFeedback:Landroid/preference/CheckBoxPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUseLocation:Landroid/preference/CheckBoxPreference;

.field private mUseLocationDialog:Landroid/app/Dialog;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field private mXTRA_KTF:Landroid/preference/CheckBoxPreference;

.field private mXTRA_download_KTF:Landroid/preference/PreferenceScreen;

.field private xtra_download_time:J

.field private xtra_download_use_time:J

.field private xtra_today_time:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 120
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 167
    new-instance v0, Lcom/android/settings/SecuritySettings$CstorHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SecuritySettings$CstorHelper;-><init>(Lcom/android/settings/SecuritySettings;Lcom/android/settings/SecuritySettings$1;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mCstorHelper:Lcom/android/settings/SecuritySettings$CstorHelper;

    .line 201
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mFlexOperatorCode:Ljava/lang/String;

    .line 1645
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/SecuritySettings;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->isNetworkAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings/SecuritySettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->mProgressDialogShow()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/SecuritySettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->mDisconnectedDialogShow()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/SecuritySettings;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Lcom/android/settings/SecuritySettings;->mProgress:I

    return v0
.end method

.method static synthetic access$1308(Lcom/android/settings/SecuritySettings;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Lcom/android/settings/SecuritySettings;->mProgress:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/SecuritySettings;->mProgress:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings/SecuritySettings;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->xtraTimeSave()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/settings/SecuritySettings;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/SecuritySettings;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mProgressHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/SecuritySettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateToggles()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/SecuritySettings;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/SecuritySettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->confirmPatternThenDisableAndClear()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings/SecuritySettings;)Lcom/android/settings/SecuritySettings$CstorHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mCstorHelper:Lcom/android/settings/SecuritySettings$CstorHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mXTRA_KTF:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/SecuritySettings;)Landroid/preference/PreferenceScreen;
    .registers 2
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mXTRA_download_KTF:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/SecuritySettings;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->xtraConnectValueSave()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/SecuritySettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateProviders()V

    return-void
.end method

.method private confirmPatternThenDisableAndClear()V
    .registers 4

    .prologue
    .line 862
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 863
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ConfirmLockPattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 865
    const/16 v1, 0x37

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 867
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .registers 15

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 335
    .local v7, root:Landroid/preference/PreferenceScreen;
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mFlexOperatorCode:Ljava/lang/String;

    const-string v11, "KTF"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_66

    .line 338
    new-instance v10, Landroid/preference/CheckBoxPreference;

    invoke-direct {v10, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settings/SecuritySettings;->mXTRA_KTF:Landroid/preference/CheckBoxPreference;

    .line 339
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mXTRA_KTF:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f0803b4

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 340
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mXTRA_KTF:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f0803b5

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 341
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mXTRA_KTF:Landroid/preference/CheckBoxPreference;

    iget-boolean v11, p0, Lcom/android/settings/SecuritySettings;->connect:Z

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 342
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mXTRA_KTF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/SecuritySettings;->mXTRA_download_KTF:Landroid/preference/PreferenceScreen;

    .line 345
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mXTRA_download_KTF:Landroid/preference/PreferenceScreen;

    const v11, 0x7f0803b7

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 347
    iget-wide v10, p0, Lcom/android/settings/SecuritySettings;->xtra_download_time:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_186

    .line 348
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mXTRA_download_KTF:Landroid/preference/PreferenceScreen;

    const v11, 0x7f0803b9

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 353
    :goto_53
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mXTRA_KTF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_193

    .line 354
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mXTRA_download_KTF:Landroid/preference/PreferenceScreen;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 359
    :goto_61
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mXTRA_download_KTF:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 365
    :cond_66
    new-instance v4, Landroid/preference/PreferenceCategory;

    invoke-direct {v4, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 366
    .local v4, inlinePrefCat:Landroid/preference/PreferenceCategory;
    const v10, 0x7f080277

    invoke-virtual {v4, v10}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 367
    invoke-virtual {v7, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 370
    new-instance v10, Lcom/android/settings/SecuritySettings$LockEnabledPref;

    invoke-direct {v10, p0, p0}, Lcom/android/settings/SecuritySettings$LockEnabledPref;-><init>(Lcom/android/settings/SecuritySettings;Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settings/SecuritySettings;->mLockEnabled:Landroid/preference/CheckBoxPreference;

    .line 371
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mLockEnabled:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f080289

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 372
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mLockEnabled:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f08028a

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 373
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mLockEnabled:Landroid/preference/CheckBoxPreference;

    const-string v11, "lockenabled"

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 374
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mLockEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 377
    new-instance v10, Landroid/preference/CheckBoxPreference;

    invoke-direct {v10, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 378
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    const-string v11, "visiblepattern"

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 379
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f08028b

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 380
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 383
    new-instance v10, Landroid/preference/CheckBoxPreference;

    invoke-direct {v10, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    .line 384
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    const-string v11, "tactilefeedback"

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 385
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f08028c

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 386
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 389
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 390
    .local v5, intent:Landroid/content/Intent;
    const-string v10, "com.android.settings"

    const-string v11, "com.android.settings.ChooseLockPatternTutorial"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/SecuritySettings;->mChoosePattern:Landroid/preference/Preference;

    .line 393
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mChoosePattern:Landroid/preference/Preference;

    invoke-virtual {v10, v5}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 394
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mChoosePattern:Landroid/preference/Preference;

    invoke-virtual {v4, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 396
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 398
    .local v0, activePhoneType:I
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 401
    .local v3, iccLockPreferences:Landroid/preference/PreferenceScreen;
    const/4 v10, 0x1

    if-ne v10, v0, :cond_19b

    .line 402
    const v10, 0x7f0801d4

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 408
    :goto_106
    new-instance v5, Landroid/content/Intent;

    .end local v5           #intent:Landroid/content/Intent;
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 409
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v10, "com.android.settings"

    const-string v11, "com.android.settings.IccLockSettings"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 413
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 415
    .local v2, iccLockCat:Landroid/preference/PreferenceCategory;
    const/4 v10, 0x1

    if-ne v10, v0, :cond_1a3

    .line 416
    const v10, 0x7f0801d5

    invoke-virtual {v2, v10}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 421
    :goto_123
    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 422
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 425
    new-instance v6, Landroid/preference/PreferenceCategory;

    invoke-direct {v6, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 426
    .local v6, passwordsCat:Landroid/preference/PreferenceCategory;
    const v10, 0x7f0800db

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 427
    invoke-virtual {v7, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 429
    new-instance v9, Landroid/preference/CheckBoxPreference;

    invoke-direct {v9, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    .line 430
    .local v9, showPassword:Landroid/preference/CheckBoxPreference;
    const-string v10, "show_password"

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 431
    const v10, 0x7f0802da

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 432
    const v10, 0x7f0802db

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 433
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 434
    invoke-virtual {v6, v9}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 437
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 438
    .local v1, credStoreCat:Landroid/preference/PreferenceCategory;
    const v10, 0x7f08041a

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 439
    invoke-virtual {v7, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 441
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mCstorHelper:Lcom/android/settings/SecuritySettings$CstorHelper;

    invoke-static {v10}, Lcom/android/settings/SecuritySettings$CstorHelper;->access$200(Lcom/android/settings/SecuritySettings$CstorHelper;)I

    move-result v8

    .line 442
    .local v8, s:I
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mCstorHelper:Lcom/android/settings/SecuritySettings$CstorHelper;

    invoke-static {v10, v8}, Lcom/android/settings/SecuritySettings$CstorHelper;->access$300(Lcom/android/settings/SecuritySettings$CstorHelper;I)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 443
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mCstorHelper:Lcom/android/settings/SecuritySettings$CstorHelper;

    invoke-static {v10}, Lcom/android/settings/SecuritySettings$CstorHelper;->access$400(Lcom/android/settings/SecuritySettings$CstorHelper;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 444
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mCstorHelper:Lcom/android/settings/SecuritySettings$CstorHelper;

    invoke-static {v10, v8}, Lcom/android/settings/SecuritySettings$CstorHelper;->access$500(Lcom/android/settings/SecuritySettings$CstorHelper;I)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 446
    return-object v7

    .line 350
    .end local v0           #activePhoneType:I
    .end local v1           #credStoreCat:Landroid/preference/PreferenceCategory;
    .end local v2           #iccLockCat:Landroid/preference/PreferenceCategory;
    .end local v3           #iccLockPreferences:Landroid/preference/PreferenceScreen;
    .end local v4           #inlinePrefCat:Landroid/preference/PreferenceCategory;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #passwordsCat:Landroid/preference/PreferenceCategory;
    .end local v8           #s:I
    .end local v9           #showPassword:Landroid/preference/CheckBoxPreference;
    :cond_186
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mXTRA_download_KTF:Landroid/preference/PreferenceScreen;

    iget-wide v11, p0, Lcom/android/settings/SecuritySettings;->xtra_download_time:J

    invoke-direct {p0, v11, v12}, Lcom/android/settings/SecuritySettings;->xtraDownTime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_53

    .line 356
    :cond_193
    iget-object v10, p0, Lcom/android/settings/SecuritySettings;->mXTRA_download_KTF:Landroid/preference/PreferenceScreen;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_61

    .line 404
    .restart local v0       #activePhoneType:I
    .restart local v3       #iccLockPreferences:Landroid/preference/PreferenceScreen;
    .restart local v4       #inlinePrefCat:Landroid/preference/PreferenceCategory;
    .restart local v5       #intent:Landroid/content/Intent;
    :cond_19b
    const v10, 0x7f0801ea

    invoke-virtual {v3, v10}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    goto/16 :goto_106

    .line 418
    .restart local v2       #iccLockCat:Landroid/preference/PreferenceCategory;
    :cond_1a3
    const v10, 0x7f0801eb

    invoke-virtual {v2, v10}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto/16 :goto_123
.end method

.method private isNetworkAvailable()Z
    .registers 5

    .prologue
    .line 1743
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1744
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1746
    .local v1, ni:Landroid/net/NetworkInfo;
    if-nez v1, :cond_14

    const-string v2, "none"

    .line 1751
    .local v2, strTemp:Ljava/lang/String;
    :goto_10
    if-nez v1, :cond_19

    const/4 v3, 0x0

    :goto_13
    return v3

    .line 1747
    .end local v2           #strTemp:Ljava/lang/String;
    :cond_14
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #strTemp:Ljava/lang/String;
    goto :goto_10

    .line 1751
    :cond_19
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    goto :goto_13
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .registers 3
    .parameter "pref"

    .prologue
    .line 848
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private mDisconnectedDialogShow()V
    .registers 4

    .prologue
    .line 718
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0803ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0803bf

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 724
    return-void
.end method

.method private final mProgressDialogShow()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 687
    new-instance v0, Lcom/android/settings/SecuritySettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/SecuritySettings$9;-><init>(Lcom/android/settings/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mProgressHandler:Landroid/os/Handler;

    .line 702
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->showDialog(I)V

    .line 703
    iput v1, p0, Lcom/android/settings/SecuritySettings;->mProgress:I

    .line 704
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 705
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mProgressHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 707
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_26

    .line 708
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-string v2, "request_xtra_download"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 715
    :cond_26
    return-void
.end method

.method private saveXtraSetting(I)V
    .registers 8
    .parameter "val"

    .prologue
    .line 1037
    :try_start_0
    const-string v1, "xtra.conf"

    .line 1038
    .local v1, fileName:Ljava/lang/String;
    const/4 v4, 0x3

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/SecuritySettings;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 1040
    .local v0, fOut:Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1041
    .local v3, osw:Ljava/io/OutputStreamWriter;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_25} :catch_26

    .line 1049
    .end local v0           #fOut:Ljava/io/FileOutputStream;
    .end local v1           #fileName:Ljava/lang/String;
    .end local v3           #osw:Ljava/io/OutputStreamWriter;
    :goto_25
    return-void

    .line 1043
    :catch_26
    move-exception v4

    move-object v2, v4

    .line 1044
    .local v2, ioe:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_25
.end method

.method private setProviders(Ljava/lang/String;)V
    .registers 7
    .parameter "providers"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v4, "gps"

    .line 794
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_providers_allowed"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 809
    iput v2, p0, Lcom/android/settings/SecuritySettings;->mGpsProgress:I

    .line 811
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mXTRA_KTF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 812
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-string v1, "set_xtra_enable"

    invoke-virtual {v0, v4, v1, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 814
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings;->saveXtraSetting(I)V

    .line 821
    :goto_24
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mILM:Landroid/location/ILocationManager;

    if-eqz v0, :cond_28

    .line 844
    :cond_28
    return-void

    .line 816
    :cond_29
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-string v1, "set_xtra_disable"

    invoke-virtual {v0, v4, v1, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 818
    invoke-direct {p0, v2}, Lcom/android/settings/SecuritySettings;->saveXtraSetting(I)V

    goto :goto_24
.end method

.method private showPrivacyPolicy()V
    .registers 3

    .prologue
    .line 729
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.TERMS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 730
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 731
    return-void
.end method

.method private showUseLocationDialog(Z)V
    .registers 5
    .parameter "force"

    .prologue
    .line 735
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/SecuritySettings;->mOkClicked:Z

    .line 737
    if-eqz p1, :cond_b

    .line 738
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mUseLocation:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 741
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080268

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 743
    .local v0, msg:Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080266

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080269

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08026a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SecuritySettings;->mUseLocationDialog:Landroid/app/Dialog;

    .line 750
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mUseLocationDialog:Landroid/app/Dialog;

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 752
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mUseLocationDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 753
    return-void
.end method

.method private updateProviders()V
    .registers 4

    .prologue
    .line 773
    const-string v0, ""

    .line 775
    .local v0, preferredProviders:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 776
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "network"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 779
    :cond_1d
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",gps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 784
    :cond_38
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mXTRA_KTF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",xtra"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 789
    :cond_53
    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings;->setProviders(Ljava/lang/String;)V

    .line 790
    return-void
.end method

.method private updateToggles()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 759
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 760
    .local v0, res:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const-string v2, "network"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 762
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    const-string v2, "gps"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 765
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mFlexOperatorCode:Ljava/lang/String;

    const-string v2, "KTF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 766
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mUseLocation:Landroid/preference/CheckBoxPreference;

    const-string v2, "use_location"

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_35

    move v2, v4

    :goto_31
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 769
    :cond_34
    return-void

    .line 766
    :cond_35
    const/4 v2, 0x0

    goto :goto_31
.end method

.method private updateUseLocation()V
    .registers 5

    .prologue
    .line 852
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mUseLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 853
    .local v0, use:Z
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "use_location"

    if-eqz v0, :cond_13

    const/4 v3, 0x1

    :goto_f
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 855
    return-void

    .line 853
    :cond_13
    const/4 v3, 0x0

    goto :goto_f
.end method

.method private final xtraConnectValueSave()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 903
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 904
    .local v0, cp:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 905
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "connect"

    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mXTRA_KTF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_23

    move v3, v4

    :goto_16
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 906
    sget-object v2, Lcom/android/settings/xtraProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 908
    return v4

    .line 905
    :cond_23
    const/4 v3, 0x0

    goto :goto_16
.end method

.method private final xtraDownTime(J)Ljava/lang/String;
    .registers 12
    .parameter "time"

    .prologue
    const-string v8, " "

    .line 932
    const-string v4, ""

    .line 935
    .local v4, str:Ljava/lang/String;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 936
    .local v1, DownloadDate:Ljava/util/Date;
    invoke-virtual {v1, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 937
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0803b8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 941
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    .line 942
    .local v2, mDateFormat:Ljava/text/DateFormat;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 943
    .local v3, mTimeFormat:Ljava/text/DateFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 947
    new-instance v0, Lcom/android/settings/AJTDateUtil;

    const/4 v5, 0x7

    invoke-direct {v0, p1, p2, v5}, Lcom/android/settings/AJTDateUtil;-><init>(JI)V

    .line 949
    .local v0, ADU:Lcom/android/settings/AJTDateUtil;
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0803c4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v0, v5, v8}, Lcom/android/settings/AJTDateUtil;->makeRemainTime(Ljava/lang/String;Ljava/lang/String;)Z

    .line 951
    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0803c3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v0, v5, v6, v8}, Lcom/android/settings/AJTDateUtil;->addTimeString(ILjava/lang/String;Ljava/lang/String;)V

    .line 953
    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0803c6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/settings/AJTDateUtil;->addTimeString(ILjava/lang/String;Ljava/lang/String;)V

    .line 956
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/settings/AJTDateUtil;->getBufferString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0803c8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private final xtraTimeSave()Z
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 913
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 915
    .local v3, xtra_download:J
    new-instance v0, Lcom/android/settings/AJTDateUtil;

    const-wide/16 v5, 0x0

    const/4 v7, 0x7

    invoke-direct {v0, v5, v6, v7}, Lcom/android/settings/AJTDateUtil;-><init>(JI)V

    .line 916
    .local v0, ADU:Lcom/android/settings/AJTDateUtil;
    invoke-virtual {v0}, Lcom/android/settings/AJTDateUtil;->getDownLoadTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/settings/SecuritySettings;->xtra_download_time:J

    .line 917
    invoke-virtual {v0}, Lcom/android/settings/AJTDateUtil;->getDDays()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/settings/SecuritySettings;->xtra_download_use_time:J

    .line 919
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 920
    .local v1, cp:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 921
    .local v2, values:Landroid/content/ContentValues;
    const-string v5, "time"

    iget-wide v6, p0, Lcom/android/settings/SecuritySettings;->xtra_download_time:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 922
    const-string v5, "use_time"

    iget-wide v6, p0, Lcom/android/settings/SecuritySettings;->xtra_download_use_time:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 923
    sget-object v5, Lcom/android/settings/xtraProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v2, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 925
    iget-object v5, p0, Lcom/android/settings/SecuritySettings;->mXTRA_download_KTF:Landroid/preference/PreferenceScreen;

    iget-wide v6, p0, Lcom/android/settings/SecuritySettings;->xtra_download_time:J

    invoke-direct {p0, v6, v7}, Lcom/android/settings/SecuritySettings;->xtraDownTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 927
    const/4 v5, 0x1

    return v5
.end method

.method private final xtra_use_time(J)Ljava/lang/String;
    .registers 8
    .parameter "time"

    .prologue
    const-string v4, " "

    .line 962
    new-instance v0, Lcom/android/settings/AJTDateUtil;

    const/4 v1, 0x7

    invoke-direct {v0, p1, p2, v1}, Lcom/android/settings/AJTDateUtil;-><init>(JI)V

    .line 964
    .local v0, ADU:Lcom/android/settings/AJTDateUtil;
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0803c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n "

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/AJTDateUtil;->makeCheckTime(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 967
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0803c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/settings/AJTDateUtil;->addTimeString(ILjava/lang/String;Ljava/lang/String;)V

    .line 969
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0803c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/settings/AJTDateUtil;->addTimeString(ILjava/lang/String;Ljava/lang/String;)V

    .line 972
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0803c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/AJTDateUtil;->addTimeString(ILjava/lang/String;Ljava/lang/String;)V

    .line 975
    invoke-virtual {v0}, Lcom/android/settings/AJTDateUtil;->getBufferString()Ljava/lang/String;

    move-result-object v1

    .line 977
    :goto_52
    return-object v1

    :cond_53
    const-string v1, "Expired"

    goto :goto_52
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 874
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 876
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1b

    const/4 v1, 0x1

    move v0, v1

    .line 878
    .local v0, resultOk:Z
    :goto_9
    const/16 v1, 0x37

    if-ne p1, v1, :cond_1a

    if-eqz v0, :cond_1a

    .line 880
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 881
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 883
    :cond_1a
    return-void

    .end local v0           #resultOk:Z
    :cond_1b
    move v0, v2

    .line 876
    goto :goto_9
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 984
    const/4 v0, -0x1

    if-ne p2, v0, :cond_d

    .line 985
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateProviders()V

    .line 986
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings;->mOkClicked:Z

    .line 992
    :goto_9
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateUseLocation()V

    .line 993
    return-void

    .line 989
    :cond_d
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mUseLocation:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_9
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 217
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mFlexOperatorCode:Ljava/lang/String;

    .line 220
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 226
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mFlexOperatorCode:Ljava/lang/String;

    const-string v1, "KTF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 227
    const v0, 0x7f040010

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 235
    :goto_23
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 242
    .local v6, cp:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/xtraProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 246
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_117

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings;->connect:Z

    .line 248
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/SecuritySettings;->xtra_download_time:J

    .line 249
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/SecuritySettings;->xtra_download_use_time:J

    .line 250
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/SecuritySettings;->xtra_today_time:J

    .line 269
    :goto_5b
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 273
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mLocationManager:Landroid/location/LocationManager;

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "location_network"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "location_gps"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    .line 280
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mFlexOperatorCode:Ljava/lang/String;

    const-string v1, "KTF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "use_location"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mUseLocation:Landroid/preference/CheckBoxPreference;

    .line 285
    :try_start_9c
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mUseLocation:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_ba

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.providers.settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_ba

    .line 288
    const-string v0, "location_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mUseLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_ba
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9c .. :try_end_ba} :catch_14b

    .line 295
    :cond_ba
    :goto_ba
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mILM:Landroid/location/ILocationManager;

    .line 305
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateToggles()V

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "(name=?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "location_providers_allowed"

    .end local v6           #cp:Landroid/content/ContentResolver;
    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 313
    .local v9, settingsCursor:Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v9, v1, v2, v3}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 315
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    new-instance v1, Lcom/android/settings/SecuritySettings$SettingsObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/SecuritySettings$SettingsObserver;-><init>(Lcom/android/settings/SecuritySettings;Lcom/android/settings/SecuritySettings$1;)V

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 317
    if-nez p1, :cond_142

    const/4 v0, 0x0

    move v8, v0

    .line 321
    .local v8, doneUseLocation:Z
    :goto_f0
    if-nez v8, :cond_105

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SHOW_USE_LOCATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_101

    if-eqz p1, :cond_105

    .line 324
    :cond_101
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/SecuritySettings;->showUseLocationDialog(Z)V

    .line 328
    :cond_105
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mCstorHelper:Lcom/android/settings/SecuritySettings$CstorHelper;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SecuritySettings$CstorHelper;->handleCstorIntents(Landroid/content/Intent;)V

    .line 329
    return-void

    .line 229
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #doneUseLocation:Z
    .end local v9           #settingsCursor:Landroid/database/Cursor;
    :cond_10f
    const v0, 0x7f040015

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_23

    .line 252
    .restart local v6       #cp:Landroid/content/ContentResolver;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_117
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 254
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_13e

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings;->connect:Z

    .line 260
    :goto_124
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/SecuritySettings;->xtra_download_time:J

    .line 261
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/SecuritySettings;->xtra_download_use_time:J

    .line 262
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/SecuritySettings;->xtra_today_time:J

    goto/16 :goto_5b

    .line 257
    :cond_13e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings;->connect:Z

    goto :goto_124

    .line 317
    .end local v6           #cp:Landroid/content/ContentResolver;
    .restart local v9       #settingsCursor:Landroid/database/Cursor;
    :cond_142
    const-string v0, "doneLocation"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v8, v0

    goto :goto_f0

    .line 290
    .end local v9           #settingsCursor:Landroid/database/Cursor;
    .restart local v6       #cp:Landroid/content/ContentResolver;
    :catch_14b
    move-exception v0

    goto/16 :goto_ba
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 1004
    packed-switch p1, :pswitch_data_48

    .line 1025
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1007
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mCstorHelper:Lcom/android/settings/SecuritySettings$CstorHelper;

    invoke-static {v0, p1}, Lcom/android/settings/SecuritySettings$CstorHelper;->access$1700(Lcom/android/settings/SecuritySettings$CstorHelper;I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 1010
    :pswitch_c
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mCstorHelper:Lcom/android/settings/SecuritySettings$CstorHelper;

    invoke-static {v0}, Lcom/android/settings/SecuritySettings$CstorHelper;->access$1800(Lcom/android/settings/SecuritySettings$CstorHelper;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 1013
    :pswitch_13
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mCstorHelper:Lcom/android/settings/SecuritySettings$CstorHelper;

    invoke-static {v0}, Lcom/android/settings/SecuritySettings$CstorHelper;->access$1900(Lcom/android/settings/SecuritySettings$CstorHelper;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 1016
    :pswitch_1a
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mCstorHelper:Lcom/android/settings/SecuritySettings$CstorHelper;

    invoke-static {v0}, Lcom/android/settings/SecuritySettings$CstorHelper;->access$2000(Lcom/android/settings/SecuritySettings$CstorHelper;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_4

    .line 1018
    :pswitch_21
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1019
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1020
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1021
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0803bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1023
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_4

    .line 1004
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_c
        :pswitch_13
        :pswitch_1a
        :pswitch_21
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 997
    iget-boolean v0, p0, Lcom/android/settings/SecuritySettings;->mOkClicked:Z

    if-nez v0, :cond_a

    .line 998
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mUseLocation:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1000
    :cond_a
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 498
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, key:Ljava/lang/String;
    const-string v4, "lockenabled"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 501
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 681
    :cond_15
    :goto_15
    const/4 v4, 0x0

    return v4

    .line 502
    :cond_17
    const-string v4, "visiblepattern"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 503
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_15

    .line 504
    :cond_29
    const-string v4, "tactilefeedback"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 505
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setTactileFeedbackEnabled(Z)V

    goto :goto_15

    .line 506
    :cond_3b
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_54

    .line 507
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_password"

    iget-object v6, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_52

    const/4 v6, 0x1

    :goto_4e
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_15

    :cond_52
    const/4 v6, 0x0

    goto :goto_4e

    .line 510
    :cond_54
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_68

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "network"

    iget-object v6, p0, Lcom/android/settings/SecuritySettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_15

    .line 515
    :cond_68
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_b3

    .line 516
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gps"

    iget-object v6, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 521
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 522
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0803c9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0803bf

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_15

    .line 528
    :cond_ae
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateProviders()V

    goto/16 :goto_15

    .line 534
    :cond_b3
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mXTRA_KTF:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_104

    .line 536
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mXTRA_KTF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_f0

    .line 537
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0803b6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0803bf

    new-instance v6, Lcom/android/settings/SecuritySettings$2;

    invoke-direct {v6, p0}, Lcom/android/settings/SecuritySettings$2;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0803c0

    new-instance v6, Lcom/android/settings/SecuritySettings$1;

    invoke-direct {v6, p0}, Lcom/android/settings/SecuritySettings$1;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_15

    .line 559
    :cond_f0
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mXTRA_KTF:Landroid/preference/CheckBoxPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 560
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mXTRA_download_KTF:Landroid/preference/PreferenceScreen;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 561
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->xtraConnectValueSave()Z

    .line 562
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateProviders()V

    goto/16 :goto_15

    .line 564
    :cond_104
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mXTRA_download_KTF:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_1d4

    .line 568
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mXTRA_KTF:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 569
    iget-wide v4, p0, Lcom/android/settings/SecuritySettings;->xtra_download_time:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_149

    .line 570
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0803ba

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0803bf

    new-instance v6, Lcom/android/settings/SecuritySettings$4;

    invoke-direct {v6, p0}, Lcom/android/settings/SecuritySettings$4;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0803c0

    new-instance v6, Lcom/android/settings/SecuritySettings$3;

    invoke-direct {v6, p0}, Lcom/android/settings/SecuritySettings$3;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_15

    .line 600
    :cond_149
    iget-wide v4, p0, Lcom/android/settings/SecuritySettings;->xtra_download_use_time:J

    iget-wide v6, p0, Lcom/android/settings/SecuritySettings;->xtra_today_time:J

    sub-long v2, v4, v6

    .line 602
    .local v2, value:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_186

    .line 603
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0803ba

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0803bf

    new-instance v6, Lcom/android/settings/SecuritySettings$6;

    invoke-direct {v6, p0}, Lcom/android/settings/SecuritySettings$6;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0803c0

    new-instance v6, Lcom/android/settings/SecuritySettings$5;

    invoke-direct {v6, p0}, Lcom/android/settings/SecuritySettings$5;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_15

    .line 633
    :cond_186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/android/settings/SecuritySettings;->xtra_download_time:J

    invoke-direct {p0, v5, v6}, Lcom/android/settings/SecuritySettings;->xtra_use_time(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0803bb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, msgStr:Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0803bf

    new-instance v6, Lcom/android/settings/SecuritySettings$8;

    invoke-direct {v6, p0}, Lcom/android/settings/SecuritySettings$8;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0803c0

    new-instance v6, Lcom/android/settings/SecuritySettings$7;

    invoke-direct {v6, p0}, Lcom/android/settings/SecuritySettings$7;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_15

    .line 671
    .end local v1           #msgStr:Ljava/lang/String;
    .end local v2           #value:J
    :cond_1d4
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mUseLocation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_15

    .line 673
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->mUseLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1e6

    .line 674
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/settings/SecuritySettings;->showUseLocationDialog(Z)V

    goto/16 :goto_15

    .line 676
    :cond_1e6
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateUseLocation()V

    goto/16 :goto_15
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 451
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 453
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v1

    .line 454
    .local v1, patternExists:Z
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mLockEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 455
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 456
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 458
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mLockEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 459
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 460
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 462
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v2

    if-eqz v2, :cond_5e

    const v2, 0x7f08028e

    move v0, v2

    .line 465
    .local v0, chooseStringRes:I
    :goto_46
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mChoosePattern:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 467
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_password"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_63

    move v3, v5

    :goto_5a
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 469
    return-void

    .line 462
    .end local v0           #chooseStringRes:I
    :cond_5e
    const v2, 0x7f08028d

    move v0, v2

    goto :goto_46

    .line 467
    .restart local v0       #chooseStringRes:I
    :cond_63
    const/4 v3, 0x0

    goto :goto_5a
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mFlexOperatorCode:Ljava/lang/String;

    const-string v1, "KTF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 487
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mUseLocationDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mUseLocationDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 488
    const-string v0, "doneLocation"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 492
    :cond_1c
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 493
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mFlexOperatorCode:Ljava/lang/String;

    const-string v1, "KTF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 474
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mUseLocationDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mUseLocationDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 475
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mUseLocationDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 478
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mUseLocationDialog:Landroid/app/Dialog;

    .line 481
    :cond_1e
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 482
    return-void
.end method
