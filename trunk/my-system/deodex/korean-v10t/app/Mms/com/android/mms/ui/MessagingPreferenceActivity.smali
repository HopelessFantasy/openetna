.class public Lcom/android/mms/ui/MessagingPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final AUTO_RETRIEVAL:Ljava/lang/String; = "pref_key_mms_auto_retrieval"

.field public static final CELL_INFO_TURNOFF_ACTION:Ljava/lang/String; = "com.android.mms.ui.CELL_INFO_TURN_OFF"

.field public static final CELL_INFO_TURNON_ACTION:Ljava/lang/String; = "com.android.mms.ui.CELL_INFO_TURN_ON"

.field public static final COMPRESS_IMAGE_MODE:Ljava/lang/String; = "pref_key_mms_compress_images"

.field public static final CREATION_MODE:Ljava/lang/String; = "pref_key_mms_creation_mode"

.field private static final DEFAULT_VALIDITY_PERIOD_VALUE:Ljava/lang/String; = "255"

.field public static final EXPIRY_TIME:Ljava/lang/String; = "pref_key_mms_expiry"

.field public static final INFO_SERVICE_ONOFF_MODE:Ljava/lang/String; = "pref_key_info_service_onoff"

.field private static final MENU_RESTORE_DEFAULTS:I = 0x1

.field public static final MMS_DELIVERY_REPORT_MODE:Ljava/lang/String; = "pref_key_mms_delivery_reports"

.field public static final NOTIFICATION_ENABLED:Ljava/lang/String; = "pref_key_enable_notifications"

.field public static final NOTIFICATION_RINGTONE:Ljava/lang/String; = "pref_key_ringtone"

.field public static final NOTIFICATION_SOUND:Ljava/lang/String; = "pref_key_sound"

.field public static final NOTIFICATION_VIBRATE:Ljava/lang/String; = "pref_key_vibrate"

.field public static final PRIORITY:Ljava/lang/String; = "pref_key_mms_priority"

.field public static final READ_REPORT_MODE:Ljava/lang/String; = "pref_key_mms_read_reports"

.field public static final RESUBMISSION_MODE:Ljava/lang/String; = "pref_key_mms_resubmission_mode"

.field public static final RETRIEVAL_DURING_ROAMING:Ljava/lang/String; = "pref_key_mms_retrieval_during_roaming"

.field public static final SERVICE_MESSAGE_RECEIVE:Ljava/lang/String; = "pref_key_service_message_receive"

.field public static final SMS_DELIVERY_REPORT_MODE:Ljava/lang/String; = "pref_key_sms_delivery_reports"

.field public static final SMS_SC_ADDRESS:Ljava/lang/String; = "pref_key_service_center_address"

.field public static final SMS_VALIDITY_PERIOD:Ljava/lang/String; = "pref_key_set_validity_period"

.field private static final TAG:Ljava/lang/String; = "MessagingPreferenceActiviry"

.field public static final VALUE_CREATION_MODE_FREE:I = 0x2

.field public static final VALUE_CREATION_MODE_RESTRICTED:I = 0x0

.field public static final VALUE_CREATION_MODE_WARNING:I = 0x1

.field public static final VALUE_RESUBMISSION_MODE_FREE:I = 0x2

.field public static final VALUE_RESUBMISSION_MODE_RESTRICTED:I = 0x0

.field public static final VALUE_RESUBMISSION_MODE_WARNING:I = 0x1


# instance fields
.field private countryCode:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSCAddress:Ljava/lang/String;

.field private mSMSC:Landroid/preference/EditTextPreference;

.field private mValidityperiod:Landroid/preference/ListPreference;

.field private mValidityperiodvalue:I

.field private mccCode:Ljava/lang/String;

.field private operatorCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const-string v1, ""

    .line 61
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 117
    const-string v0, ""

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->operatorCode:Ljava/lang/String;

    .line 118
    const-string v0, ""

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->countryCode:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mccCode:Ljava/lang/String;

    .line 130
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$1;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/MessagingPreferenceActivity;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessagingPreferenceActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSCAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSCAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/preference/EditTextPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSC:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method public static convertContentClass(Ljava/lang/String;)I
    .registers 2
    .parameter "contentValue"

    .prologue
    .line 534
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static convertCreationMode(Ljava/lang/String;)I
    .registers 3
    .parameter "modeName"

    .prologue
    .line 586
    const-string v0, "restricted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 587
    const/4 v0, 0x0

    .line 591
    :goto_9
    return v0

    .line 588
    :cond_a
    const-string v0, "warning"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 589
    const/4 v0, 0x1

    goto :goto_9

    .line 590
    :cond_14
    const-string v0, "free"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 591
    const/4 v0, 0x2

    goto :goto_9

    .line 593
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown MMS creation mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static convertExpiryTime(Ljava/lang/String;)I
    .registers 2
    .parameter "expiryTimeName"

    .prologue
    .line 546
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static convertMaxMmsSize(Ljava/lang/String;)J
    .registers 3
    .parameter "maxSize"

    .prologue
    .line 558
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertPriorityId(Ljava/lang/String;)I
    .registers 3
    .parameter "priorityValue"

    .prologue
    .line 568
    const-string v0, "low"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 569
    const/16 v0, 0x80

    .line 573
    :goto_a
    return v0

    .line 570
    :cond_b
    const-string v0, "medium"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 571
    const/16 v0, 0x81

    goto :goto_a

    .line 572
    :cond_16
    const-string v0, "high"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 573
    const/16 v0, 0x82

    goto :goto_a

    .line 575
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown MMS priority."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static convertResubmissionMode(Ljava/lang/String;)I
    .registers 3
    .parameter "modeName"

    .prologue
    .line 604
    const-string v0, "restricted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 605
    const/4 v0, 0x0

    .line 609
    :goto_9
    return v0

    .line 606
    :cond_a
    const-string v0, "warning"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 607
    const/4 v0, 0x1

    goto :goto_9

    .line 608
    :cond_14
    const-string v0, "free"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 609
    const/4 v0, 0x2

    goto :goto_9

    .line 611
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown MMS resubmission mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getVisualTextNameCreationMode(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 7
    .parameter "enumName"

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 650
    .local v2, visualNames:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 653
    .local v0, enumNames:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_17
    array-length v3, v0

    if-ge v1, v3, :cond_28

    .line 654
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 655
    aget-object v3, v2, v1

    .line 658
    :goto_24
    return-object v3

    .line 653
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 658
    :cond_28
    const-string v3, ""

    goto :goto_24
.end method

.method private getVisualTextNameExpiry(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 7
    .parameter "enumName"

    .prologue
    .line 632
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 634
    .local v2, visualNames:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 637
    .local v0, enumNames:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_17
    array-length v3, v0

    if-ge v1, v3, :cond_28

    .line 638
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 639
    aget-object v3, v2, v1

    .line 643
    :goto_24
    return-object v3

    .line 637
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 643
    :cond_28
    const-string v3, ""

    goto :goto_24
.end method

.method private getVisualTextNamePriority(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 7
    .parameter "enumName"

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 619
    .local v2, visualNames:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 622
    .local v0, enumNames:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_17
    array-length v3, v0

    if-ge v1, v3, :cond_28

    .line 623
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 624
    aget-object v3, v2, v1

    .line 628
    :goto_24
    return-object v3

    .line 622
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 628
    :cond_28
    const-string v3, ""

    goto :goto_24
.end method

.method private restoreDefaultPreferences()V
    .registers 14

    .prologue
    .line 384
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 386
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 387
    const v9, 0x7f040001

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 415
    const-string v9, "pref_key_service_center_address"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSC:Landroid/preference/EditTextPreference;

    .line 416
    iget-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSC:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSCAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSC:Landroid/preference/EditTextPreference;

    iget-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSCAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 418
    iget-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSC:Landroid/preference/EditTextPreference;

    new-instance v10, Lcom/android/mms/ui/MessagingPreferenceActivity$4;

    invoke-direct {v10, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$4;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 444
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->isInsertedKTUsim()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4e

    .line 445
    iget-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSC:Landroid/preference/EditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 446
    iget-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSC:Landroid/preference/EditTextPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setClickable(Z)V

    .line 449
    :cond_4e
    iget-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSC:Landroid/preference/EditTextPreference;

    invoke-virtual {v9}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    .line 450
    .local v4, mText:Landroid/widget/EditText;
    new-instance v9, Lcom/android/mms/ui/MessagingPreferenceActivity$5;

    invoke-direct {v9, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$5;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "MMSSETTINGDB_DELIVERYREPORTREQ_I"

    invoke-static {v9, v10}, Landroid/provider/Settings$FlexInfo;->getDefaultFlexValue(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 462
    .local v3, deliveryReport_DefaultflexValues:Ljava/lang/String;
    if-eqz v3, :cond_88

    .line 464
    const-string v9, "pref_key_mms_delivery_reports"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 465
    .local v2, deliveryReportPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 466
    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16d

    .line 467
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 471
    :goto_7f
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "MMSSETTINGDB_DELIVERYREPORTREQ_I"

    invoke-static {v9, v10, v3}, Landroid/provider/Settings$FlexInfo;->saveFlexValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 474
    .end local v2           #deliveryReportPref:Landroid/preference/CheckBoxPreference;
    :cond_88
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "MMSSETTINGDB_READREPLYREQUEST_I"

    invoke-static {v9, v10}, Landroid/provider/Settings$FlexInfo;->getDefaultFlexValue(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 475
    .local v6, readReport_DefaultflexValues:Ljava/lang/String;
    if-eqz v6, :cond_b4

    .line 477
    const-string v9, "pref_key_mms_read_reports"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 478
    .local v5, readReportPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v5, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 479
    const-string v9, "1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_173

    .line 480
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 484
    :goto_ab
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "MMSSETTINGDB_READREPLYREQUEST_I"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$FlexInfo;->saveFlexValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 487
    .end local v5           #readReportPref:Landroid/preference/CheckBoxPreference;
    :cond_b4
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "MMSSETTINGDB_ROAMINGNETWORK_I"

    invoke-static {v9, v10}, Landroid/provider/Settings$FlexInfo;->getDefaultFlexValue(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 488
    .local v8, roamingNetwork_DefaultflexValues:Ljava/lang/String;
    if-eqz v8, :cond_e0

    .line 490
    const-string v9, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    .line 491
    .local v7, retvRomingPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v7, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 492
    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_179

    .line 493
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 497
    :goto_d7
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "MMSSETTINGDB_ROAMINGNETWORK_I"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$FlexInfo;->saveFlexValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 500
    .end local v7           #retvRomingPref:Landroid/preference/CheckBoxPreference;
    :cond_e0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "MMSSETTINGDB_CREATIONMODE_I"

    invoke-static {v9, v10}, Landroid/provider/Settings$FlexInfo;->getDefaultFlexValue(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, creationMode_DefaultflexValues:Ljava/lang/String;
    if-eqz v1, :cond_122

    .line 503
    const-string v9, "pref_key_mms_creation_mode"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 504
    .local v0, creationModePref:Landroid/preference/ListPreference;
    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 505
    const-string v9, "0"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17f

    .line 506
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 512
    :cond_103
    :goto_103
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "pref_key_mms_creation_mode"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getVisualTextNameCreationMode(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 515
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "MMSSETTINGDB_CREATIONMODE_I"

    invoke-static {v9, v10, v1}, Landroid/provider/Settings$FlexInfo;->saveFlexValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 518
    .end local v0           #creationModePref:Landroid/preference/ListPreference;
    :cond_122
    const-string v9, "pref_key_mms_priority"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 519
    const-string v9, "pref_key_mms_priority"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "pref_key_mms_priority"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getVisualTextNamePriority(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 522
    const-string v9, "pref_key_mms_expiry"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 523
    const-string v9, "pref_key_mms_expiry"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "pref_key_mms_expiry"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getVisualTextNameExpiry(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 525
    return-void

    .line 469
    .end local v1           #creationMode_DefaultflexValues:Ljava/lang/String;
    .end local v6           #readReport_DefaultflexValues:Ljava/lang/String;
    .end local v8           #roamingNetwork_DefaultflexValues:Ljava/lang/String;
    .restart local v2       #deliveryReportPref:Landroid/preference/CheckBoxPreference;
    :cond_16d
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_7f

    .line 482
    .end local v2           #deliveryReportPref:Landroid/preference/CheckBoxPreference;
    .restart local v5       #readReportPref:Landroid/preference/CheckBoxPreference;
    .restart local v6       #readReport_DefaultflexValues:Ljava/lang/String;
    :cond_173
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_ab

    .line 495
    .end local v5           #readReportPref:Landroid/preference/CheckBoxPreference;
    .restart local v7       #retvRomingPref:Landroid/preference/CheckBoxPreference;
    .restart local v8       #roamingNetwork_DefaultflexValues:Ljava/lang/String;
    :cond_179
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_d7

    .line 507
    .end local v7           #retvRomingPref:Landroid/preference/CheckBoxPreference;
    .restart local v0       #creationModePref:Landroid/preference/ListPreference;
    .restart local v1       #creationMode_DefaultflexValues:Ljava/lang/String;
    :cond_17f
    const-string v9, "1"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18d

    .line 508
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_103

    .line 509
    :cond_18d
    const-string v9, "2"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_103

    .line 510
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_103
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 23
    .parameter "icicle"

    .prologue
    .line 147
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 148
    const-string v18, "MessagingPreferenceActiviry"

    const-string v19, "onCreate"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const v18, 0x7f040001

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 151
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->operatorCode:Ljava/lang/String;

    .line 152
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getCountryCode()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->countryCode:Ljava/lang/String;

    .line 153
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getMccCode()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mccCode:Ljava/lang/String;

    .line 154
    const-string v18, "MessagingPreferenceActiviry"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "operatorCode: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->operatorCode:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "  countryCode: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->countryCode:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "  MCC: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mccCode:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v7, Landroid/content/IntentFilter;

    const-string v18, "android.media.RINGER_MODE_CHANGED"

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 157
    .local v7, filter:Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    const-string v18, "pref_key_mms_delivery_reports"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 161
    .local v5, deliveryReportPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "MMSSETTINGDB_DELIVERYREPORTREQ_I"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, deliveryReport_flexValues:Ljava/lang/String;
    const-string v18, "[FLEX]"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "deliveryReport_flexValues :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 164
    if-eqz v6, :cond_d4

    .line 166
    const-string v18, "1"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2ff

    .line 167
    const/16 v18, 0x1

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 172
    :cond_d4
    :goto_d4
    const-string v18, "pref_key_mms_read_reports"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    .line 173
    .local v11, readReportPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "MMSSETTINGDB_READREPLYREQUEST_I"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 174
    .local v12, readReport_flexValues:Ljava/lang/String;
    const-string v18, "[FLEX]"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "readReport_flexValues :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    move-object v0, v11

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 176
    if-eqz v12, :cond_120

    .line 178
    const-string v18, "1"

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_309

    .line 179
    const/16 v18, 0x1

    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 184
    :cond_120
    :goto_120
    const-string v18, "pref_key_mms_retrieval_during_roaming"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/CheckBoxPreference;

    .line 185
    .local v13, retvRomingPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "MMSSETTINGDB_ROAMINGNETWORK_I"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 186
    .local v14, retvRoming_flexValues:Ljava/lang/String;
    const-string v18, "[FLEX]"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "retvRoming_flexValues :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    move-object v0, v13

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 188
    if-eqz v12, :cond_16c

    .line 190
    const-string v18, "1"

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_313

    .line 191
    const/16 v18, 0x1

    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 197
    :cond_16c
    :goto_16c
    const-string v18, "pref_key_mms_creation_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    .line 198
    .local v3, creationModePref:Landroid/preference/ListPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "MMSSETTINGDB_CREATIONMODE_I"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$FlexInfo;->getFlexCode(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, creationMode_flexValues:Ljava/lang/String;
    const-string v18, "[FLEX]"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "creationMode_flexValues :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    if-eqz v4, :cond_1b8

    .line 203
    const-string v18, "0"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_31d

    .line 204
    const/16 v18, 0x0

    move-object v0, v3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 210
    :cond_1b8
    :goto_1b8
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v18

    const-string v19, "pref_key_mms_creation_mode"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getVisualTextNameCreationMode(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 214
    const-string v18, "pref_key_mms_priority"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 215
    .local v10, pref_priority:Landroid/preference/Preference;
    move-object v0, v10

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v18

    const-string v19, "pref_key_mms_priority"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getVisualTextNamePriority(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 219
    const-string v18, "pref_key_mms_expiry"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 220
    .local v9, pref_expiry:Landroid/preference/Preference;
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v18

    const-string v19, "pref_key_mms_expiry"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getVisualTextNameExpiry(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v18

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 225
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v15

    .line 227
    .local v15, smsManager:Landroid/telephony/SmsManager;
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mValidityperiodvalue:I

    .line 228
    invoke-virtual {v15}, Landroid/telephony/SmsManager;->readValidityPeriod()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mValidityperiodvalue:I

    .line 232
    invoke-virtual {v15}, Landroid/telephony/SmsManager;->readSCAddress()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSCAddress:Ljava/lang/String;

    .line 235
    const-string v18, "pref_key_service_center_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/preference/EditTextPreference;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSC:Landroid/preference/EditTextPreference;

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSC:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSCAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSC:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSCAddress:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSC:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/mms/ui/MessagingPreferenceActivity$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$2;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 262
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->isInsertedKTUsim()Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2b6

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSC:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSC:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/EditTextPreference;->setClickable(Z)V

    .line 269
    :cond_2b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSC:Landroid/preference/EditTextPreference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v8

    .line 270
    .local v8, mText:Landroid/widget/EditText;
    new-instance v18, Lcom/android/mms/ui/MessagingPreferenceActivity$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity$3;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    const-string v18, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 282
    const-string v18, "pref_key_vibrate"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    .line 284
    .local v17, vibrate:Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v16

    .line 285
    .local v16, valueMode:I
    if-nez v16, :cond_347

    .line 286
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 290
    :cond_2fe
    :goto_2fe
    return-void

    .line 169
    .end local v3           #creationModePref:Landroid/preference/ListPreference;
    .end local v4           #creationMode_flexValues:Ljava/lang/String;
    .end local v8           #mText:Landroid/widget/EditText;
    .end local v9           #pref_expiry:Landroid/preference/Preference;
    .end local v10           #pref_priority:Landroid/preference/Preference;
    .end local v11           #readReportPref:Landroid/preference/CheckBoxPreference;
    .end local v12           #readReport_flexValues:Ljava/lang/String;
    .end local v13           #retvRomingPref:Landroid/preference/CheckBoxPreference;
    .end local v14           #retvRoming_flexValues:Ljava/lang/String;
    .end local v15           #smsManager:Landroid/telephony/SmsManager;
    .end local v16           #valueMode:I
    .end local v17           #vibrate:Landroid/preference/CheckBoxPreference;
    .restart local p1
    :cond_2ff
    const/16 v18, 0x0

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_d4

    .line 181
    .restart local v11       #readReportPref:Landroid/preference/CheckBoxPreference;
    .restart local v12       #readReport_flexValues:Ljava/lang/String;
    :cond_309
    const/16 v18, 0x0

    move-object v0, v11

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_120

    .line 193
    .restart local v13       #retvRomingPref:Landroid/preference/CheckBoxPreference;
    .restart local v14       #retvRoming_flexValues:Ljava/lang/String;
    :cond_313
    const/16 v18, 0x0

    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_16c

    .line 205
    .restart local v3       #creationModePref:Landroid/preference/ListPreference;
    .restart local v4       #creationMode_flexValues:Ljava/lang/String;
    :cond_31d
    const-string v18, "1"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_332

    .line 206
    const/16 v18, 0x1

    move-object v0, v3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_1b8

    .line 207
    :cond_332
    const-string v18, "2"

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1b8

    .line 208
    const/16 v18, 0x2

    move-object v0, v3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_1b8

    .line 287
    .end local p1
    .restart local v8       #mText:Landroid/widget/EditText;
    .restart local v9       #pref_expiry:Landroid/preference/Preference;
    .restart local v10       #pref_priority:Landroid/preference/Preference;
    .restart local v15       #smsManager:Landroid/telephony/SmsManager;
    .restart local v16       #valueMode:I
    .restart local v17       #vibrate:Landroid/preference/CheckBoxPreference;
    :cond_347
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_2fe

    .line 288
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2fe
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 294
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 295
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 296
    const v0, 0x7f070077

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 299
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 304
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 309
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 306
    :pswitch_9
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->restoreDefaultPreferences()V

    .line 307
    const/4 v0, 0x1

    goto :goto_8

    .line 304
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 13
    .parameter "pref"
    .parameter "objValue"

    .prologue
    const/4 v6, 0x1

    const-string v9, "MMSSETTINGDB_READREPLYREQUEST_I"

    const-string v5, "MMSSETTINGDB_DELIVERYREPORTREQ_I"

    const-string v8, "1"

    const-string v7, "0"

    .line 314
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_key_mms_delivery_reports"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 315
    move-object v0, p1

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v1, v0

    .line 317
    .local v1, checkPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 318
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "MMSSETTINGDB_DELIVERYREPORTREQ_I"

    const-string v4, "0"

    invoke-static {v3, v5, v7}, Landroid/provider/Settings$FlexInfo;->saveFlexValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_2a
    move v3, v6

    .line 352
    .end local v1           #checkPref:Landroid/preference/CheckBoxPreference;
    .end local p2
    :goto_2b
    return v3

    .line 320
    .restart local v1       #checkPref:Landroid/preference/CheckBoxPreference;
    .restart local p2
    :cond_2c
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "MMSSETTINGDB_DELIVERYREPORTREQ_I"

    const-string v4, "1"

    invoke-static {v3, v5, v8}, Landroid/provider/Settings$FlexInfo;->saveFlexValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2a

    .line 322
    .end local v1           #checkPref:Landroid/preference/CheckBoxPreference;
    :cond_38
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_key_mms_read_reports"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 323
    move-object v0, p1

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v1, v0

    .line 325
    .restart local v1       #checkPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 326
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "MMSSETTINGDB_READREPLYREQUEST_I"

    const-string v4, "0"

    invoke-static {v3, v9, v7}, Landroid/provider/Settings$FlexInfo;->saveFlexValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_59
    move v3, v6

    .line 329
    goto :goto_2b

    .line 328
    :cond_5b
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "MMSSETTINGDB_READREPLYREQUEST_I"

    const-string v4, "1"

    invoke-static {v3, v9, v8}, Landroid/provider/Settings$FlexInfo;->saveFlexValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_59

    .line 330
    .end local v1           #checkPref:Landroid/preference/CheckBoxPreference;
    :cond_67
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 331
    move-object v0, p1

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v1, v0

    .line 333
    .restart local v1       #checkPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 334
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "MMSSETTINGDB_ROAMINGNETWORK_I"

    const-string v5, "0"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$FlexInfo;->saveFlexValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_88
    move v3, v6

    .line 337
    goto :goto_2b

    .line 336
    :cond_8a
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "MMSSETTINGDB_ROAMINGNETWORK_I"

    const-string v5, "1"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$FlexInfo;->saveFlexValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_88

    .line 338
    .end local v1           #checkPref:Landroid/preference/CheckBoxPreference;
    :cond_96
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_key_mms_priority"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 339
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getVisualTextNamePriority(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move v3, v6

    .line 340
    goto/16 :goto_2b

    .line 341
    .restart local p2
    :cond_ae
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_key_mms_expiry"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 342
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getVisualTextNameExpiry(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move v3, v6

    .line 343
    goto/16 :goto_2b

    .line 344
    .restart local p2
    :cond_c6
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_key_mms_creation_mode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10b

    .line 345
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->convertCreationMode(Ljava/lang/String;)I

    move-result v2

    .line 346
    .local v2, creation_mode_val:I
    const-string v3, "[onchange]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "creation_mode_val :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "MMSSETTINGDB_CREATIONMODE_I"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$FlexInfo;->saveFlexValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 348
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getVisualTextNameCreationMode(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move v3, v6

    .line 349
    goto/16 :goto_2b

    .line 352
    .end local v2           #creation_mode_val:I
    .restart local p2
    :cond_10b
    const/4 v3, 0x0

    goto/16 :goto_2b
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 359
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 360
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_key_vibrate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 361
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v1, v0

    .line 363
    .local v1, checkPref:Landroid/preference/CheckBoxPreference;
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    packed-switch v2, :pswitch_data_3c

    .line 372
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_38

    move v3, v4

    :goto_27
    invoke-virtual {v2, v5, v3}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    :goto_2a
    move v2, v4

    .line 379
    .end local v1           #checkPref:Landroid/preference/CheckBoxPreference;
    :goto_2b
    return v2

    .line 365
    .restart local v1       #checkPref:Landroid/preference/CheckBoxPreference;
    :pswitch_2c
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2a

    .line 368
    :pswitch_32
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2a

    :cond_38
    move v3, v5

    .line 372
    goto :goto_27

    .end local v1           #checkPref:Landroid/preference/CheckBoxPreference;
    :cond_3a
    move v2, v4

    .line 379
    goto :goto_2b

    .line 363
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_32
    .end packed-switch
.end method
