.class public Lcom/android/settings/MobileNetwork;
.super Landroid/preference/PreferenceActivity;
.source "MobileNetwork.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MobileNetwork$4;
    }
.end annotation


# static fields
.field private static final MOBILE_NETWORK_OFF:I = 0x0

.field private static final MOBILE_NETWORK_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MobileNetwork"


# instance fields
.field private final mCheckbox:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private final mKey:Ljava/lang/String;

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "preferId"
    .parameter "key"

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 51
    new-instance v1, Lcom/android/settings/MobileNetwork$1;

    invoke-direct {v1, p0}, Lcom/android/settings/MobileNetwork$1;-><init>(Lcom/android/settings/MobileNetwork;)V

    iput-object v1, p0, Lcom/android/settings/MobileNetwork;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    const-string v1, "MobileNetwork"

    const-string v2, "MobileNetwork()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput-object p1, p0, Lcom/android/settings/MobileNetwork;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/android/settings/MobileNetwork;->mCheckbox:Landroid/preference/CheckBoxPreference;

    .line 106
    iput-object p3, p0, Lcom/android/settings/MobileNetwork;->mKey:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcom/android/settings/MobileNetwork;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/MobileNetwork;->getMobileNetworkValue()I

    move-result v0

    .line 111
    .local v0, value:I
    invoke-direct {p0, v0}, Lcom/android/settings/MobileNetwork;->setSelectionAndSummary(I)V

    .line 113
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/MobileNetwork;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 115
    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    invoke-static {p0}, Lcom/android/settings/MobileNetwork;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/MobileNetwork;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/MobileNetwork;->mCheckbox:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/MobileNetwork;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/MobileNetwork;->switchMobileNetwork(I)V

    return-void
.end method

.method private dataOffMsgDlg()V
    .registers 4

    .prologue
    .line 158
    const-string v0, "MobileNetwork"

    const-string v1, "dataOffMsgDlg()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/MobileNetwork;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080440

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080443

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802bf

    new-instance v2, Lcom/android/settings/MobileNetwork$3;

    invoke-direct {v2, p0}, Lcom/android/settings/MobileNetwork$3;-><init>(Lcom/android/settings/MobileNetwork;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 170
    return-void
.end method

.method private dataOnMsgDlg()V
    .registers 4

    .prologue
    .line 141
    const-string v0, "MobileNetwork"

    const-string v1, "dataServiceOnDlg()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/MobileNetwork;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080440

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080442

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802bf

    new-instance v2, Lcom/android/settings/MobileNetwork$2;

    invoke-direct {v2, p0}, Lcom/android/settings/MobileNetwork$2;-><init>(Lcom/android/settings/MobileNetwork;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 154
    return-void
.end method

.method private enableDataConnection(Z)V
    .registers 6
    .parameter "enable"

    .prologue
    const-string v3, "MobileNetwork"

    .line 220
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 221
    .local v1, telephony_service:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_16

    .line 222
    const-string v2, "MobileNetwork"

    const-string v2, "telephony_service is null return and finish"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_15
    return-void

    .line 226
    :cond_16
    if-eqz p1, :cond_25

    .line 229
    :try_start_18
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_15

    .line 230
    :catch_1c
    move-exception v0

    .line 231
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MobileNetwork"

    const-string v2, "enableDataConnection() error"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 235
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_25
    :try_start_25
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_15

    .line 236
    :catch_29
    move-exception v0

    .line 237
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v2, "MobileNetwork"

    const-string v2, "disableDataConnection() error"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    .registers 3
    .parameter "intent"

    .prologue
    .line 75
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, str:Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 77
    const-class v1, Lcom/android/internal/telephony/Phone$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/Phone$DataState;

    move-object v1, p0

    .line 79
    :goto_11
    return-object v1

    .restart local p0
    :cond_12
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_11
.end method

.method private setSelectionAndSummary(I)V
    .registers 5
    .parameter "flg"

    .prologue
    const/4 v2, 0x1

    .line 197
    if-ne p1, v2, :cond_f

    .line 198
    iget-object v0, p0, Lcom/android/settings/MobileNetwork;->mCheckbox:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/android/settings/MobileNetwork;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 204
    :goto_e
    return-void

    .line 201
    :cond_f
    iget-object v0, p0, Lcom/android/settings/MobileNetwork;->mCheckbox:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f080441

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/MobileNetwork;->mCheckbox:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_e
.end method

.method private switchMobileNetwork(I)V
    .registers 8
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "socket_data_call_enable"

    const-string v2, "MobileNetwork"

    .line 174
    const-string v0, "MobileNetwork"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchMobileNetwork id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/android/settings/MobileNetwork;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_network_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    if-nez p1, :cond_41

    .line 180
    const-string v0, "MobileNetwork"

    const-string v0, "SOCKET_DATA_CALL_ENABLE set 0"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/android/settings/MobileNetwork;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "socket_data_call_enable"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 184
    invoke-direct {p0, v3}, Lcom/android/settings/MobileNetwork;->enableDataConnection(Z)V

    .line 193
    :goto_40
    return-void

    .line 186
    :cond_41
    const-string v0, "MobileNetwork"

    const-string v0, "SOCKET_DATA_CALL_ENABLE set 1"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/android/settings/MobileNetwork;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "socket_data_call_enable"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 190
    invoke-direct {p0, v4}, Lcom/android/settings/MobileNetwork;->enableDataConnection(Z)V

    goto :goto_40
.end method


# virtual methods
.method public getMobileNetworkValue()I
    .registers 6

    .prologue
    const/4 v3, 0x1

    const-string v4, "mobile_network_mode"

    .line 208
    :try_start_3
    iget-object v1, p0, Lcom/android/settings/MobileNetwork;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_network_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_e} :catch_10

    move-result v1

    .line 213
    :goto_f
    return v1

    .line 209
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 212
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v1, p0, Lcom/android/settings/MobileNetwork;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_network_mode"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v1, v3

    .line 213
    goto :goto_f
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 8
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x1

    .line 120
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 122
    .local v1, value:Z
    if-eqz v1, :cond_16

    move v0, v4

    .line 125
    .local v0, mode:I
    :goto_a
    if-ne v0, v4, :cond_19

    .line 126
    invoke-direct {p0}, Lcom/android/settings/MobileNetwork;->dataOnMsgDlg()V

    .line 127
    iget-object v2, p0, Lcom/android/settings/MobileNetwork;->mCheckbox:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 135
    :goto_15
    return v4

    .line 122
    .end local v0           #mode:I
    :cond_16
    const/4 v2, 0x0

    move v0, v2

    goto :goto_a

    .line 130
    .restart local v0       #mode:I
    :cond_19
    invoke-direct {p0}, Lcom/android/settings/MobileNetwork;->dataOffMsgDlg()V

    .line 131
    iget-object v2, p0, Lcom/android/settings/MobileNetwork;->mCheckbox:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f080441

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_15
.end method

.method public pause()V
    .registers 3

    .prologue
    .line 95
    const-string v0, "MobileNetwork"

    const-string v1, "pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/android/settings/MobileNetwork;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/MobileNetwork;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/MobileNetwork;->mCheckbox:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    return-void
.end method

.method public resume()V
    .registers 5

    .prologue
    .line 85
    const-string v1, "MobileNetwork"

    const-string v2, "resume()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v1, p0, Lcom/android/settings/MobileNetwork;->mCheckbox:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/MobileNetwork;->getMobileNetworkValue()I

    move-result v0

    .line 88
    .local v0, value:I
    invoke-direct {p0, v0}, Lcom/android/settings/MobileNetwork;->setSelectionAndSummary(I)V

    .line 89
    iget-object v1, p0, Lcom/android/settings/MobileNetwork;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 91
    iget-object v1, p0, Lcom/android/settings/MobileNetwork;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/MobileNetwork;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/MobileNetwork;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    return-void
.end method
