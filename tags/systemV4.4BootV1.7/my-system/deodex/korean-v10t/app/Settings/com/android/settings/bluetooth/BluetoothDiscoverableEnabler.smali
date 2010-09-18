.class public Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;
.super Ljava/lang/Object;
.source "BluetoothDiscoverableEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DISCOVERABLE_TIMEOUT:I = 0x78

.field private static final SHARED_PREFERENCES_KEY_DISCOVERABLE_END_TIMESTAMP:Ljava/lang/String; = "discoverable_end_timestamp"

.field private static final SYSTEM_PROPERTY_DISCOVERABLE_TIMEOUT:Ljava/lang/String; = "debug.bt.discoverable_time"

.field private static final TAG:Ljava/lang/String; = "BluetoothDiscoverableEnabler"


# instance fields
.field private final mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private final mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mUiHandler:Landroid/os/Handler;

.field private final mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .registers 5
    .parameter "context"
    .parameter "checkBoxPreference"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$1;-><init>(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler$2;-><init>(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    .line 74
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    .line 76
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    .line 78
    invoke-virtual {p2, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 80
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 81
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_2d

    .line 83
    invoke-virtual {p2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 85
    :cond_2d
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->handleModeChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->updateCountdownSummary()V

    return-void
.end method

.method private getDiscoverableTimeout()I
    .registers 4

    .prologue
    .line 137
    const-string v1, "debug.bt.discoverable_time"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 138
    .local v0, timeout:I
    if-gtz v0, :cond_b

    .line 139
    const/16 v0, 0x78

    .line 142
    :cond_b
    return v0
.end method

.method private handleModeChanged(I)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 152
    const/4 v0, 0x3

    if-ne p1, v0, :cond_d

    .line 153
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 154
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->updateCountdownSummary()V

    .line 159
    :goto_c
    return-void

    .line 157
    :cond_d
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_c
.end method

.method private persistDiscoverableEndTimestamp(J)V
    .registers 5
    .parameter "endTimestamp"

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 147
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "discoverable_end_timestamp"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 149
    return-void
.end method

.method private setEnabled(Z)V
    .registers 12
    .parameter "enable"

    .prologue
    const/4 v7, 0x1

    .line 117
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 119
    .local v2, manager:Landroid/bluetooth/BluetoothDevice;
    if-eqz p1, :cond_3c

    .line 121
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v3

    .line 122
    .local v3, timeout:I
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->setDiscoverableTimeout(I)V

    .line 124
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080045

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    mul-int/lit16 v6, v3, 0x3e8

    int-to-long v6, v6

    add-long v0, v4, v6

    .line 128
    .local v0, endTimestamp:J
    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->persistDiscoverableEndTimestamp(J)V

    .line 130
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothDevice;->setScanMode(I)V

    .line 134
    .end local v0           #endTimestamp:J
    .end local v3           #timeout:I
    :goto_3b
    return-void

    .line 132
    :cond_3c
    invoke-virtual {v2, v7}, Landroid/bluetooth/BluetoothDevice;->setScanMode(I)V

    goto :goto_3b
.end method

.method private updateCountdownSummary()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x3e8

    .line 162
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getScanMode()I

    move-result v5

    .line 163
    .local v5, mode:I
    const/4 v6, 0x3

    if-eq v5, v6, :cond_10

    .line 187
    :goto_f
    return-void

    .line 167
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 168
    .local v0, currentTimestamp:J
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "discoverable_end_timestamp"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 171
    .local v2, endTimestamp:J
    cmp-long v6, v0, v2

    if-lez v6, :cond_2d

    .line 173
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 177
    :cond_2d
    sub-long v6, v2, v0

    div-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, formattedTimeLeft:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080045

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 183
    monitor-enter p0

    .line 184
    :try_start_4d
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 186
    monitor-exit p0

    goto :goto_f

    :catchall_5f
    move-exception v6

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_4d .. :try_end_61} :catchall_5f

    throw v6
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 111
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->setEnabled(Z)V

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_5

    .line 107
    :goto_4
    return-void

    .line 104
    :cond_5
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_4
.end method

.method public resume()V
    .registers 4

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_5

    .line 97
    :goto_4
    return-void

    .line 92
    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.intent.action.SCAN_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothManager()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getScanMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->handleModeChanged(I)V

    goto :goto_4
.end method
