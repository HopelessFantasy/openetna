.class public Lcom/android/settings/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final LOCAL_LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothEnabler"


# instance fields
.field private mCanProcessChange:Z

.field private final mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private final mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private final mOriginalSummary:Ljava/lang/CharSequence;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .registers 5
    .parameter "context"
    .parameter "checkBoxPreference"

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    .line 64
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 65
    invoke-virtual {p2, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 67
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 68
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_25

    .line 70
    invoke-virtual {p2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 73
    :cond_25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCanProcessChange:Z

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothEnabler;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    return-void
.end method

.method private getDependencyPreference()Landroid/preference/Preference;
    .registers 3

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getDependency()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, depKey:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 158
    const/4 v1, 0x0

    .line 161
    :goto_d
    return-object v1

    :cond_e
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    goto :goto_d
.end method

.method private handleStateChanged(I)V
    .registers 6
    .parameter "state"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 123
    if-eqz p1, :cond_7

    if-ne p1, v3, :cond_26

    .line 125
    :cond_7
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_c

    move v1, v2

    :cond_c
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_24

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    :goto_15
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->isEnabledByDependency()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 132
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCanProcessChange:Z

    .line 144
    :goto_23
    return-void

    .line 126
    :cond_24
    const/4 v1, 0x0

    goto :goto_15

    .line 133
    :cond_26
    if-eq p1, v2, :cond_2b

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3a

    .line 135
    :cond_2b
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_36

    const v1, 0x7f08015e

    :goto_32
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_23

    :cond_36
    const v1, 0x7f08015f

    goto :goto_32

    .line 140
    :cond_3a
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f080160

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_23
.end method

.method private isEnabledByDependency()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 147
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->getDependencyPreference()Landroid/preference/Preference;

    move-result-object v0

    .line 148
    .local v0, dep:Landroid/preference/Preference;
    if-nez v0, :cond_9

    move v1, v2

    .line 152
    :goto_8
    return v1

    :cond_9
    invoke-virtual {v0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v1

    if-nez v1, :cond_11

    move v1, v2

    goto :goto_8

    :cond_11
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private setEnabled(Z)V
    .registers 4
    .parameter "enable"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setBluetoothEnabled(Z)V

    .line 119
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCanProcessChange:Z

    if-eqz v0, :cond_10

    .line 104
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCanProcessChange:Z

    .line 107
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setEnabled(Z)V

    .line 111
    :cond_10
    return v1
.end method

.method public pause()V
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_5

    .line 100
    :goto_4
    return-void

    .line 98
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_4
.end method

.method public resume()V
    .registers 6

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_5

    .line 91
    :goto_4
    return-void

    .line 81
    :cond_5
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v0

    .line 83
    .local v0, state:I
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x2

    if-eq v0, v2, :cond_12

    if-nez v0, :cond_2d

    :cond_12
    const/4 v2, 0x1

    :goto_13
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 86
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 88
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_4

    .line 83
    :cond_2d
    const/4 v2, 0x0

    goto :goto_13
.end method
