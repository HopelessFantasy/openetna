.class public Lcom/android/phone/CdmaOptions;
.super Landroid/preference/PreferenceActivity;
.source "CdmaOptions.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaOptions$1;,
        Lcom/android/phone/CdmaOptions$MyHandler;
    }
.end annotation


# static fields
.field private static final BUTTON_CB_SMS_EXPAND_KEY:Ljava/lang/String; = "cdma_cell_broadcast_sms_key"

.field private static final BUTTON_CDMA_NW_PREFERENCE_KEY:Ljava/lang/String; = "cdma_network_prefernces_key"

.field private static final BUTTON_CDMA_ROAMING_KEY:Ljava/lang/String; = "cdma_roaming_mode_key"

.field private static final BUTTON_CDMA_SUBSCRIPTION_KEY:Ljava/lang/String; = "subscription_key"

.field private static final CDMA_ROAMING_MODE_AFFILIATED:I = 0x1

.field private static final CDMA_ROAMING_MODE_ANY:I = 0x2

.field private static final CDMA_ROAMING_MODE_HOME:I = 0x0

.field private static final CDMA_SUBSCRIPTION_NV:I = 0x1

.field private static final CDMA_SUBSCRIPTION_RUIM_SIM:I = 0x0

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "CdmaOptions"

.field static final preferredCdmaRoamingMode:I = 0x0

.field static final preferredSubscriptionMode:I = 0x1


# instance fields
.field private mButtonCbSmsExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCdmaNwPreference:Landroid/preference/ListPreference;

.field private mButtonCdmaRoam:Landroid/preference/ListPreference;

.field private mButtonCdmaSubscription:Landroid/preference/ListPreference;

.field private mHandler:Lcom/android/phone/CdmaOptions$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 247
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CdmaOptions;Landroid/os/Message;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaOptions;->handleSetCdmaSubscriptionMode(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CdmaOptions;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/phone/CdmaOptions;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/CdmaOptions;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private handleSetCdmaSubscriptionMode(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 331
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 332
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 334
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2b

    .line 335
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 336
    .local v1, cdmaSubscriptionMode:I
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "subscription_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 340
    .end local v1           #cdmaSubscriptionMode:I
    :cond_2b
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 343
    const-string v0, "CdmaOptions"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "icicle"

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const v3, 0x7f050006

    invoke-virtual {p0, v3}, Lcom/android/phone/CdmaOptions;->addPreferencesFromResource(I)V

    .line 117
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 118
    new-instance v3, Lcom/android/phone/CdmaOptions$MyHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/phone/CdmaOptions$MyHandler;-><init>(Lcom/android/phone/CdmaOptions;Lcom/android/phone/CdmaOptions$1;)V

    iput-object v3, p0, Lcom/android/phone/CdmaOptions;->mHandler:Lcom/android/phone/CdmaOptions$MyHandler;

    .line 121
    invoke-virtual {p0}, Lcom/android/phone/CdmaOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 123
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v3, "cdma_roaming_mode_key"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Landroid/preference/ListPreference;

    .line 124
    const-string v3, "subscription_key"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Landroid/preference/ListPreference;

    .line 126
    const-string v3, "cdma_network_prefernces_key"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaNwPreference:Landroid/preference/ListPreference;

    .line 128
    const-string v3, "cdma_cell_broadcast_sms_key"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/CdmaOptions;->mButtonCbSmsExpand:Landroid/preference/PreferenceScreen;

    .line 130
    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CDMA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 131
    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Landroid/preference/ListPreference;

    if-eqz v3, :cond_74

    .line 134
    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 137
    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_settings"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 141
    .local v1, settingsCdmaRoamingMode:I
    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 143
    .end local v1           #settingsCdmaRoamingMode:I
    :cond_74
    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Landroid/preference/ListPreference;

    if-eqz v3, :cond_97

    .line 146
    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 149
    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "subscription_mode"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 153
    .local v2, settingsCdmaSubscriptionMode:I
    iget-object v3, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 156
    .end local v2           #settingsCdmaSubscriptionMode:I
    :cond_97
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 15
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v10, 0x1

    const-string v11, "subscription_mode"

    const-string v9, "roaming_settings"

    .line 182
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 183
    iget-object v7, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_55

    .line 186
    iget-object v8, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Landroid/preference/ListPreference;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 188
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 189
    .local v1, buttonCdmaRoamingMode:I
    iget-object v7, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "roaming_settings"

    const/4 v8, 0x0

    invoke-static {v7, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 191
    .local v3, settingsCdmaRoamingMode:I
    if-eq v1, v3, :cond_55

    .line 193
    packed-switch v1, :pswitch_data_a6

    .line 202
    const/4 v5, 0x0

    .line 205
    .local v5, statusCdmaRoamingMode:I
    :goto_3b
    iget-object v7, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "roaming_settings"

    invoke-static {v7, v9, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 209
    iget-object v7, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v8, p0, Lcom/android/phone/CdmaOptions;->mHandler:Lcom/android/phone/CdmaOptions$MyHandler;

    invoke-virtual {v8, v10}, Lcom/android/phone/CdmaOptions$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v5, v8}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 213
    .end local v1           #buttonCdmaRoamingMode:I
    .end local v3           #settingsCdmaRoamingMode:I
    .end local v5           #statusCdmaRoamingMode:I
    :cond_55
    iget-object v7, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Landroid/preference/ListPreference;

    if-ne p1, v7, :cond_9d

    .line 216
    iget-object v8, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Landroid/preference/ListPreference;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 218
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 219
    .local v2, buttonCdmaSubscriptionMode:I
    iget-object v7, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "subscription_mode"

    invoke-static {v7, v11, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 221
    .local v4, settingsCdmaSubscriptionMode:I
    if-eq v2, v4, :cond_9d

    .line 223
    packed-switch v2, :pswitch_data_ae

    .line 231
    const/4 v6, 0x1

    .line 234
    .local v6, statusCdmaSubscriptionMode:I
    :goto_82
    iget-object v7, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "subscription_mode"

    invoke-static {v7, v11, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 238
    iget-object v7, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v8, p0, Lcom/android/phone/CdmaOptions;->mHandler:Lcom/android/phone/CdmaOptions$MyHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/phone/CdmaOptions$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    .line 244
    .end local v2           #buttonCdmaSubscriptionMode:I
    .end local v4           #settingsCdmaSubscriptionMode:I
    .end local v6           #statusCdmaSubscriptionMode:I
    :cond_9d
    return v10

    .line 195
    .restart local v1       #buttonCdmaRoamingMode:I
    .restart local v3       #settingsCdmaRoamingMode:I
    .restart local p2
    :pswitch_9e
    const/4 v5, 0x2

    .line 196
    .restart local v5       #statusCdmaRoamingMode:I
    goto :goto_3b

    .line 198
    .end local v5           #statusCdmaRoamingMode:I
    :pswitch_a0
    const/4 v5, 0x1

    .line 199
    .restart local v5       #statusCdmaRoamingMode:I
    goto :goto_3b

    .line 225
    .end local v1           #buttonCdmaRoamingMode:I
    .end local v3           #settingsCdmaRoamingMode:I
    .end local v5           #statusCdmaRoamingMode:I
    .end local p2
    .restart local v2       #buttonCdmaSubscriptionMode:I
    .restart local v4       #settingsCdmaSubscriptionMode:I
    :pswitch_a2
    const/4 v6, 0x1

    .line 226
    .restart local v6       #statusCdmaSubscriptionMode:I
    goto :goto_82

    .line 228
    .end local v6           #statusCdmaSubscriptionMode:I
    :pswitch_a4
    const/4 v6, 0x0

    .line 229
    .restart local v6       #statusCdmaSubscriptionMode:I
    goto :goto_82

    .line 193
    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_9e
    .end packed-switch

    .line 223
    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_a4
        :pswitch_a2
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 83
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Landroid/preference/ListPreference;

    if-ne p2, v2, :cond_26

    .line 84
    const-string v2, "onPreferenceTreeClick: preference == mButtonCdmaRoam."

    invoke-static {v2}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roaming_settings"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 88
    .local v0, cdmaRoamingMode:I
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move v2, v4

    .line 108
    .end local v0           #cdmaRoamingMode:I
    :goto_25
    return v2

    .line 91
    :cond_26
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaNwPreference:Landroid/preference/ListPreference;

    if-ne p2, v2, :cond_31

    .line 92
    const-string v2, "onPreferenceTreeClick: preference == mButtonCdmaNwPreference."

    invoke-static {v2}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    move v2, v4

    .line 93
    goto :goto_25

    .line 95
    :cond_31
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Landroid/preference/ListPreference;

    if-ne p2, v2, :cond_55

    .line 96
    const-string v2, "onPreferenceTreeClick: preference == mButtonCdmaSubscription."

    invoke-static {v2}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "subscription_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 99
    .local v1, cdmaSubscriptionMode:I
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move v2, v4

    .line 100
    goto :goto_25

    .line 106
    .end local v1           #cdmaSubscriptionMode:I
    :cond_55
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    move v2, v5

    .line 108
    goto :goto_25
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 160
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 162
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 165
    invoke-virtual {p0}, Lcom/android/phone/CdmaOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 167
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2f

    .line 168
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mHandler:Lcom/android/phone/CdmaOptions$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaOptions$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 171
    :cond_2f
    return-void
.end method
