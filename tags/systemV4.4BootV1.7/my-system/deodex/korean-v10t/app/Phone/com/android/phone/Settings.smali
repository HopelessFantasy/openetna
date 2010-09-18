.class public Lcom/android/phone/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Settings$1;,
        Lcom/android/phone/Settings$MyHandler;
    }
.end annotation


# static fields
.field private static final BUTTON_CDMA_SYSTEM_SELECT_KEY:Ljava/lang/String; = "cdma_system_select_key"

.field private static final BUTTON_PREFERED_NETWORK_MODE:Ljava/lang/String; = "preferred_network_mode_key"

.field private static final BUTTON_PREFER_2G_KEY:Ljava/lang/String; = "button_prefer_2g_key"

.field private static final BUTTON_ROAMING_KEY:Ljava/lang/String; = "button_roaming_key"

.field private static final CDMA_OPTIONS_KEY:Ljava/lang/String; = "cdma_options_key"

.field private static final CDMA_ROAMING_MODE_AFFILIATED:I = 0x1

.field private static final CDMA_ROAMING_MODE_ANY:I = 0x2

.field private static final CDMA_ROAMING_MODE_HOME:I = 0x0

.field private static final DBG:Z = true

.field private static final GSM_OPTIONS_KEY:Ljava/lang/String; = "gsm_umts_options_key"

.field private static final LOG_TAG:Ljava/lang/String; = "NetworkSettings"

.field static final PREFERRED_CDMA_ROAMING_MODE:I

.field static final preferredNetworkMode:I


# instance fields
.field private mButtonCdmaRoam:Landroid/preference/ListPreference;

.field private mButtonDataRoam:Landroid/preference/CheckBoxPreference;

.field private mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field private mHandler:Lcom/android/phone/Settings$MyHandler;

.field private mOkClicked:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private oldPhoneName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 354
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/Settings;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/Settings;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/Settings;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/phone/Settings;->updatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/Settings;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/Settings;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/Settings;->oldPhoneName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/Settings;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/phone/Settings;->oldPhoneName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/Settings;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonCdmaRoam:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 592
    const-string v0, "NetworkSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    return-void
.end method

.method private updatePreferredNetworkModeSummary(I)V
    .registers 4
    .parameter "NetworkMode"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 589
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 88
    const/4 v0, -0x1

    if-ne p2, v0, :cond_c

    .line 89
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 90
    iput-boolean v1, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    .line 95
    :goto_b
    return-void

    .line 93
    :cond_c
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    const-string v7, "CDMA"

    .line 171
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 173
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 174
    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/Settings;->oldPhoneName:Ljava/lang/String;

    .line 176
    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CDMA"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 177
    const v4, 0x7f05000d

    invoke-virtual {p0, v4}, Lcom/android/phone/Settings;->addPreferencesFromResource(I)V

    .line 184
    :goto_28
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 186
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    new-instance v4, Lcom/android/phone/Settings$MyHandler;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/phone/Settings$MyHandler;-><init>(Lcom/android/phone/Settings;Lcom/android/phone/Settings$1;)V

    iput-object v4, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    .line 187
    const-string v4, "button_roaming_key"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    .line 190
    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CDMA"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 193
    .local v0, isCdma:Z
    if-eqz v0, :cond_a4

    .line 194
    const-string v4, "cdma_system_select_key"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/phone/Settings;->mButtonCdmaRoam:Landroid/preference/ListPreference;

    .line 198
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonCdmaRoam:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "roaming_settings"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 205
    .local v2, settingsCdmaRoamingMode:I
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonCdmaRoam:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 209
    .end local v2           #settingsCdmaRoamingMode:I
    :goto_74
    const-string v4, "preferred_network_mode_key"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    .line 214
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 217
    iget-object v4, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 220
    .local v3, settingsNetworkMode:I
    iget-object v4, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 223
    return-void

    .line 180
    .end local v0           #isCdma:Z
    .end local v1           #prefSet:Landroid/preference/PreferenceScreen;
    .end local v3           #settingsNetworkMode:I
    :cond_9d
    const v4, 0x7f05000c

    invoke-virtual {p0, v4}, Lcom/android/phone/Settings;->addPreferencesFromResource(I)V

    goto :goto_28

    .line 207
    .restart local v0       #isCdma:Z
    .restart local v1       #prefSet:Landroid/preference/PreferenceScreen;
    :cond_a4
    const-string v4, "button_prefer_2g_key"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/Settings;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    goto :goto_74
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    if-nez v0, :cond_a

    .line 100
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 102
    :cond_a
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 16
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v12, "roaming_settings"

    const-string v11, "preferred_network_mode"

    .line 262
    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_7a

    .line 263
    iget-object v7, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v7, v8, :cond_22

    .line 264
    const-string v7, "Error while changing radio technology"

    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 266
    invoke-virtual {p0}, Lcom/android/phone/Settings;->finish()V

    move v7, v9

    .line 351
    .end local p2
    :goto_21
    return v7

    .line 271
    .restart local p2
    :cond_22
    iget-object v8, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 273
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 274
    .local v2, buttonNetworkMode:I
    iget-object v7, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "preferred_network_mode"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 277
    .local v5, settingsNetworkMode:I
    if-eq v2, v5, :cond_68

    .line 279
    packed-switch v2, :pswitch_data_c6

    .line 305
    const/4 v3, 0x0

    .line 307
    .local v3, modemNetworkMode:I
    :goto_4b
    invoke-direct {p0, v2}, Lcom/android/phone/Settings;->updatePreferredNetworkModeSummary(I)V

    .line 309
    iget-object v7, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "preferred_network_mode"

    invoke-static {v7, v11, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 313
    iget-object v7, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v8, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {v8, v10}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v3, v8}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .end local v2           #buttonNetworkMode:I
    .end local v3           #modemNetworkMode:I
    .end local v5           #settingsNetworkMode:I
    :cond_68
    :goto_68
    move v7, v10

    .line 351
    goto :goto_21

    .line 281
    .restart local v2       #buttonNetworkMode:I
    .restart local v5       #settingsNetworkMode:I
    :pswitch_6a
    const/4 v3, 0x7

    .line 282
    .restart local v3       #modemNetworkMode:I
    goto :goto_4b

    .line 284
    .end local v3           #modemNetworkMode:I
    :pswitch_6c
    const/4 v3, 0x6

    .line 285
    .restart local v3       #modemNetworkMode:I
    goto :goto_4b

    .line 287
    .end local v3           #modemNetworkMode:I
    :pswitch_6e
    const/4 v3, 0x5

    .line 288
    .restart local v3       #modemNetworkMode:I
    goto :goto_4b

    .line 290
    .end local v3           #modemNetworkMode:I
    :pswitch_70
    const/4 v3, 0x4

    .line 291
    .restart local v3       #modemNetworkMode:I
    goto :goto_4b

    .line 293
    .end local v3           #modemNetworkMode:I
    :pswitch_72
    const/4 v3, 0x3

    .line 294
    .restart local v3       #modemNetworkMode:I
    goto :goto_4b

    .line 296
    .end local v3           #modemNetworkMode:I
    :pswitch_74
    const/4 v3, 0x2

    .line 297
    .restart local v3       #modemNetworkMode:I
    goto :goto_4b

    .line 299
    .end local v3           #modemNetworkMode:I
    :pswitch_76
    const/4 v3, 0x1

    .line 300
    .restart local v3       #modemNetworkMode:I
    goto :goto_4b

    .line 302
    .end local v3           #modemNetworkMode:I
    :pswitch_78
    const/4 v3, 0x0

    .line 303
    .restart local v3       #modemNetworkMode:I
    goto :goto_4b

    .line 316
    .end local v2           #buttonNetworkMode:I
    .end local v3           #modemNetworkMode:I
    .end local v5           #settingsNetworkMode:I
    .restart local p2
    :cond_7a
    iget-object v7, p0, Lcom/android/phone/Settings;->mButtonCdmaRoam:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_68

    .line 319
    iget-object v8, p0, Lcom/android/phone/Settings;->mButtonCdmaRoam:Landroid/preference/ListPreference;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 321
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 322
    .local v1, buttonCdmaRoamingMode:I
    iget-object v7, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "roaming_settings"

    invoke-static {v7, v12, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 325
    .local v4, settingsCdmaRoamingMode:I
    if-eq v1, v4, :cond_68

    .line 327
    packed-switch v1, :pswitch_data_da

    .line 338
    const/4 v6, 0x0

    .line 341
    .local v6, statusCdmaRoamingMode:I
    :goto_a7
    iget-object v7, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "roaming_settings"

    invoke-static {v7, v12, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 345
    iget-object v7, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v8, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    goto :goto_68

    .line 329
    .end local v6           #statusCdmaRoamingMode:I
    :pswitch_c3
    const/4 v6, 0x2

    .line 330
    .restart local v6       #statusCdmaRoamingMode:I
    goto :goto_a7

    .line 279
    nop

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_78
        :pswitch_76
        :pswitch_74
        :pswitch_72
        :pswitch_70
        :pswitch_6e
        :pswitch_6c
        :pswitch_6a
    .end packed-switch

    .line 327
    :pswitch_data_da
    .packed-switch 0x2
        :pswitch_c3
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "preferred_network_mode"

    .line 111
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    if-ne p2, v3, :cond_23

    .line 113
    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 116
    .local v2, settingsNetworkMode:I
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move v3, v6

    .line 165
    .end local v2           #settingsNetworkMode:I
    :goto_22
    return v3

    .line 119
    :cond_23
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_75

    .line 120
    const-string v3, "onPreferenceTreeClick: preference == mButtonDataRoam."

    invoke-static {v3}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 123
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 125
    iput-boolean v5, p0, Lcom/android/phone/Settings;->mOkClicked:Z

    .line 126
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900fa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :goto_6d
    move v3, v6

    .line 138
    goto :goto_22

    .line 136
    :cond_6f
    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_6d

    .line 140
    :cond_75
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonCdmaRoam:Landroid/preference/ListPreference;

    if-ne p2, v3, :cond_99

    .line 141
    const-string v3, "onPreferenceTreeClick: preference == mButtonCdmaRoam."

    invoke-static {v3}, Lcom/android/phone/Settings;->log(Ljava/lang/String;)V

    .line 143
    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_settings"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 146
    .local v0, cdmaRoamingMode:I
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonCdmaRoam:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move v3, v6

    .line 147
    goto :goto_22

    .line 149
    .end local v0           #cdmaRoamingMode:I
    :cond_99
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_c5

    .line 150
    iget-object v3, p0, Lcom/android/phone/Settings;->mButtonPrefer2g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_c3

    move v1, v6

    .line 152
    .local v1, networkType:I
    :goto_a6
    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v7, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 155
    iget-object v3, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {v4, v6}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    move v3, v6

    .line 157
    goto/16 :goto_22

    .end local v1           #networkType:I
    :cond_c3
    move v1, v5

    .line 150
    goto :goto_a6

    .line 163
    :cond_c5
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    move v3, v5

    .line 165
    goto/16 :goto_22
.end method

.method protected onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 227
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 233
    invoke-virtual {p0}, Lcom/android/phone/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 238
    iget-object v0, p0, Lcom/android/phone/Settings;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 243
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 244
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 251
    :goto_3c
    return-void

    .line 248
    :cond_3d
    iget-object v0, p0, Lcom/android/phone/Settings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;

    invoke-virtual {v1, v2}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_3c
.end method
