.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServerThread$AdbSettingsObserver;
    }
.end annotation


# static fields
.field private static final INCLUDE_BACKUP:Z = false

.field private static final INCLUDE_DEMO:Z = false

.field private static final LOG_BOOT_PROGRESS_SYSTEM_RUN:I = 0xbc2

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field private final fileHiddenReset:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/module/pm/parameters/hidden_resetting"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ServerThread;->fileHiddenReset:Ljava/lang/String;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ServerThread;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 47

    .prologue
    .line 89
    const/16 v5, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v44

    move v0, v5

    move-wide/from16 v1, v44

    invoke-static {v0, v1, v2}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 92
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->prepareTraceFile(Z)Z

    .line 94
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 96
    const/4 v5, -0x2

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 99
    const-string v5, "ro.factorytest"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 100
    .local v22, factoryTestStr:Ljava/lang/String;
    const-string v5, ""

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3bf

    const/4 v5, 0x0

    move/from16 v21, v5

    .line 103
    .local v21, factoryTest:I
    :goto_2b
    const/16 v25, 0x0

    .line 104
    .local v25, hardware:Lcom/android/server/HardwareService;
    const/16 v39, 0x0

    .line 105
    .local v39, power:Lcom/android/server/PowerManagerService;
    const/16 v38, 0x0

    .line 106
    .local v38, pm:Landroid/content/pm/IPackageManager;
    const/4 v6, 0x0

    .line 107
    .local v6, context:Landroid/content/Context;
    const/16 v43, 0x0

    .line 108
    .local v43, wm:Lcom/android/server/WindowManagerService;
    const/4 v15, 0x0

    .line 109
    .local v15, bluetooth:Landroid/server/BluetoothDeviceService;
    const/16 v17, 0x0

    .line 111
    .local v17, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v23, 0x0

    .line 112
    .local v23, fmReceiver:Lcom/broadcom/bt/service/fm/FmReceiverService;
    const/16 v27, 0x0

    .line 114
    .local v27, headset:Lcom/android/server/HeadsetObserver;
    const/4 v13, 0x0

    .line 117
    .local v13, atcommand:Lcom/android/server/ATCommandObserver;
    const/16 v34, 0x0

    .line 123
    .local v34, mPowerOnSound:Lcom/android/server/PowerOnSound;
    :try_start_3e
    const-string v5, "SystemServer"

    const-string v7, "Starting Entropy Service."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v5, "entropy"

    new-instance v7, Lcom/android/server/EntropyService;

    invoke-direct {v7}, Lcom/android/server/EntropyService;-><init>()V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 126
    const-string v5, "SystemServer"

    const-string v7, "Starting Power Manager."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v8, Lcom/android/server/PowerManagerService;

    invoke-direct {v8}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_5b
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_5b} :catch_5cf

    .line 128
    .end local v39           #power:Lcom/android/server/PowerManagerService;
    .local v8, power:Lcom/android/server/PowerManagerService;
    :try_start_5b
    const-string v5, "power"

    invoke-static {v5, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 130
    const-string v5, "SystemServer"

    const-string v7, "Starting Activity Manager."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static/range {v21 .. v21}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v6

    .line 133
    const-string v5, "SystemServer"

    const-string v7, "Starting telephony registry"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v5, "telephony.registry"

    new-instance v7, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v7, v6}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 136
    invoke-static {v6}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 138
    const-string v5, "SystemServer"

    const-string v7, "Starting Package Manager."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    if-eqz v21, :cond_3c7

    const/4 v5, 0x1

    :goto_89
    invoke-static {v6, v5}, Lcom/android/server/PackageManagerService;->main(Landroid/content/Context;Z)Landroid/content/pm/IPackageManager;

    move-result-object v38

    .line 142
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 144
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    .line 146
    const-string v5, "SystemServer"

    const-string v7, "Starting Content Manager."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v5, 0x1

    move/from16 v0, v21

    move v1, v5

    if-ne v0, v1, :cond_3ca

    const/4 v5, 0x1

    :goto_a7
    invoke-static {v6, v5}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/IContentService;

    .line 150
    const-string v5, "SystemServer"

    const-string v7, "Starting System Content Providers."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 153
    const-string v5, "SystemServer"

    const-string v7, "Starting Battery Service."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v7, Lcom/android/server/BatteryService;

    invoke-direct {v7, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;)V

    .line 155
    .local v7, battery:Lcom/android/server/BatteryService;
    const-string v5, "battery"

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 157
    const-string v5, "SystemServer"

    const-string v9, "Starting Hardware Service."

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v26, Lcom/android/server/HardwareService;

    move-object/from16 v0, v26

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/HardwareService;-><init>(Landroid/content/Context;)V
    :try_end_d4
    .catch Ljava/lang/RuntimeException; {:try_start_5b .. :try_end_d4} :catch_5d6

    .line 159
    .end local v25           #hardware:Lcom/android/server/HardwareService;
    .local v26, hardware:Lcom/android/server/HardwareService;
    :try_start_d4
    const-string v5, "hardware"

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 163
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    move-object v0, v8

    move-object v1, v6

    move-object/from16 v2, v26

    move-object v3, v5

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/HardwareService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 165
    const-string v5, "SystemServer"

    const-string v9, "Starting Alarm Manager."

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v9, Lcom/android/server/AlarmManagerService;

    invoke-direct {v9, v6}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V

    .line 167
    .local v9, alarm:Lcom/android/server/AlarmManagerService;
    const-string v5, "alarm"

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 169
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 173
    const-string v5, "SystemServer"

    const-string v7, "Starting Sensor Service."

    .end local v7           #battery:Lcom/android/server/BatteryService;
    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v5, "sensor"

    new-instance v7, Lcom/android/server/SensorService;

    invoke-direct {v7, v6}, Lcom/android/server/SensorService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 176
    const-string v5, "SystemServer"

    const-string v7, "Starting Window Manager."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v5, 0x1

    move/from16 v0, v21

    move v1, v5

    if-eq v0, v1, :cond_3cd

    const/4 v5, 0x1

    :goto_124
    invoke-static {v6, v8, v5}, Lcom/android/server/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)Lcom/android/server/WindowManagerService;

    move-result-object v43

    .line 179
    const-string v5, "window"

    move-object v0, v5

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 181
    const-string v5, "activity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityManagerService;

    move-object v0, v5

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/WindowManagerService;)V

    .line 187
    const-string v5, "ro.kernel.qemu"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d0

    .line 192
    const-string v5, "SystemServer"

    const-string v7, "Starting Bluetooth Service."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v16, Landroid/server/BluetoothDeviceService;

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/server/BluetoothDeviceService;-><init>(Landroid/content/Context;)V
    :try_end_15b
    .catch Ljava/lang/RuntimeException; {:try_start_d4 .. :try_end_15b} :catch_3e5

    .line 194
    .end local v15           #bluetooth:Landroid/server/BluetoothDeviceService;
    .local v16, bluetooth:Landroid/server/BluetoothDeviceService;
    :try_start_15b
    invoke-virtual/range {v16 .. v16}, Landroid/server/BluetoothDeviceService;->init()V

    .line 195
    const-string v5, "bluetooth"

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 196
    new-instance v18, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;)V
    :try_end_16e
    .catch Ljava/lang/RuntimeException; {:try_start_15b .. :try_end_16e} :catch_5db

    .line 197
    .end local v17           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v18, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_16e
    const-string v5, "bluetooth_a2dp"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_176
    .catch Ljava/lang/RuntimeException; {:try_start_16e .. :try_end_176} :catch_5e4

    move-object/from16 v17, v18

    .end local v18           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v17       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v15, v16

    .line 234
    .end local v16           #bluetooth:Landroid/server/BluetoothDeviceService;
    .restart local v15       #bluetooth:Landroid/server/BluetoothDeviceService;
    :goto_17a
    :try_start_17a
    const-string v5, "ro.kernel.qemu"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_427

    .line 235
    const-string v5, "SystemServer"

    const-string v7, "Starting FM Receiver Service."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v24, Lcom/broadcom/bt/service/fm/FmReceiverService;

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;-><init>(Landroid/content/Context;)V
    :try_end_197
    .catch Ljava/lang/RuntimeException; {:try_start_17a .. :try_end_197} :catch_3e5

    .line 237
    .end local v23           #fmReceiver:Lcom/broadcom/bt/service/fm/FmReceiverService;
    .local v24, fmReceiver:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_start_197
    invoke-virtual/range {v24 .. v24}, Lcom/broadcom/bt/service/fm/FmReceiverService;->init()V

    .line 238
    const-string v5, "fm_receiver"

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a2
    .catch Ljava/lang/RuntimeException; {:try_start_197 .. :try_end_1a2} :catch_5ef

    move-object/from16 v23, v24

    .end local v24           #fmReceiver:Lcom/broadcom/bt/service/fm/FmReceiverService;
    .restart local v23       #fmReceiver:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :goto_1a4
    move-object/from16 v25, v26

    .line 262
    .end local v9           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v26           #hardware:Lcom/android/server/HardwareService;
    .restart local v25       #hardware:Lcom/android/server/HardwareService;
    :goto_1a6
    const/16 v41, 0x0

    .line 263
    .local v41, statusBar:Lcom/android/server/status/StatusBarService;
    const/16 v30, 0x0

    .line 264
    .local v30, imm:Lcom/android/server/InputMethodManagerService;
    const/4 v11, 0x0

    .line 265
    .local v11, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v36, 0x0

    .line 267
    .local v36, notification:Lcom/android/server/NotificationManagerService;
    const/4 v5, 0x1

    move/from16 v0, v21

    move v1, v5

    if-eq v0, v1, :cond_327

    .line 269
    :try_start_1b3
    const-string v5, "SystemServer"

    const-string v7, "Starting Status Bar Service."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v42, Lcom/android/server/status/StatusBarService;

    move-object/from16 v0, v42

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/status/StatusBarService;-><init>(Landroid/content/Context;)V
    :try_end_1c2
    .catch Ljava/lang/Throwable; {:try_start_1b3 .. :try_end_1c2} :catch_45a

    .line 271
    .end local v41           #statusBar:Lcom/android/server/status/StatusBarService;
    .local v42, statusBar:Lcom/android/server/status/StatusBarService;
    :try_start_1c2
    const-string v5, "statusbar"

    move-object v0, v5

    move-object/from16 v1, v42

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1ca
    .catch Ljava/lang/Throwable; {:try_start_1c2 .. :try_end_1ca} :catch_5c8

    move-object/from16 v41, v42

    .line 277
    .end local v42           #statusBar:Lcom/android/server/status/StatusBarService;
    .restart local v41       #statusBar:Lcom/android/server/status/StatusBarService;
    :goto_1cc
    :try_start_1cc
    const-string v5, "SystemServer"

    const-string v7, "Starting Clipboard Service."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v5, "clipboard"

    new-instance v7, Lcom/android/server/ClipboardService;

    invoke-direct {v7, v6}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1dd
    .catch Ljava/lang/Throwable; {:try_start_1cc .. :try_end_1dd} :catch_46a

    .line 284
    :goto_1dd
    :try_start_1dd
    const-string v5, "SystemServer"

    const-string v7, "Starting Input Method Service."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v31, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v31

    move-object v1, v6

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/status/StatusBarService;)V
    :try_end_1ee
    .catch Ljava/lang/Throwable; {:try_start_1dd .. :try_end_1ee} :catch_47a

    .line 286
    .end local v30           #imm:Lcom/android/server/InputMethodManagerService;
    .local v31, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_1ee
    const-string v5, "input_method"

    move-object v0, v5

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f6
    .catch Ljava/lang/Throwable; {:try_start_1ee .. :try_end_1f6} :catch_5c1

    move-object/from16 v30, v31

    .line 292
    .end local v31           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v30       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_1f8
    :try_start_1f8
    const-string v5, "SystemServer"

    const-string v7, "Starting NetStat Service."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v5, "netstat"

    new-instance v7, Lcom/android/server/NetStatService;

    invoke-direct {v7, v6}, Lcom/android/server/NetStatService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_209
    .catch Ljava/lang/Throwable; {:try_start_1f8 .. :try_end_209} :catch_48a

    .line 299
    :goto_209
    :try_start_209
    const-string v5, "SystemServer"

    const-string v7, "Starting Connectivity Service."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v5, "connectivity"

    invoke-static {v6}, Lcom/android/server/ConnectivityService;->getInstance(Landroid/content/Context;)Lcom/android/server/ConnectivityService;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_219
    .catch Ljava/lang/Throwable; {:try_start_209 .. :try_end_219} :catch_49a

    .line 307
    :goto_219
    :try_start_219
    const-string v5, "SystemServer"

    const-string v7, "Starting Accessibility Manager."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v5, "accessibility"

    new-instance v7, Lcom/android/server/AccessibilityManagerService;

    invoke-direct {v7, v6}, Lcom/android/server/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22a
    .catch Ljava/lang/Throwable; {:try_start_219 .. :try_end_22a} :catch_4aa

    .line 315
    :goto_22a
    :try_start_22a
    const-string v5, "SystemServer"

    const-string v7, "Starting Notification Manager."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v37, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v37

    move-object v1, v6

    move-object/from16 v2, v41

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/status/StatusBarService;Lcom/android/server/HardwareService;)V
    :try_end_23d
    .catch Ljava/lang/Throwable; {:try_start_22a .. :try_end_23d} :catch_4ba

    .line 317
    .end local v36           #notification:Lcom/android/server/NotificationManagerService;
    .local v37, notification:Lcom/android/server/NotificationManagerService;
    :try_start_23d
    const-string v5, "notification"

    move-object v0, v5

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_245
    .catch Ljava/lang/Throwable; {:try_start_23d .. :try_end_245} :catch_5ba

    move-object/from16 v36, v37

    .line 324
    .end local v37           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v36       #notification:Lcom/android/server/NotificationManagerService;
    :goto_247
    :try_start_247
    const-string v5, "SystemServer"

    const-string v7, "Starting Mount Service."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v5, "mount"

    new-instance v7, Lcom/android/server/MountService;

    invoke-direct {v7, v6}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_258
    .catch Ljava/lang/Throwable; {:try_start_247 .. :try_end_258} :catch_4ca

    .line 331
    :goto_258
    :try_start_258
    const-string v5, "SystemServer"

    const-string v7, "Starting DeviceStorageMonitor service"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v5, "devicestoragemonitor"

    new-instance v7, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v7, v6}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_269
    .catch Ljava/lang/Throwable; {:try_start_258 .. :try_end_269} :catch_4da

    .line 339
    :goto_269
    :try_start_269
    const-string v5, "SystemServer"

    const-string v7, "Starting Location Manager."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string v5, "location"

    new-instance v7, Lcom/android/server/LocationManagerService;

    invoke-direct {v7, v6}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27a
    .catch Ljava/lang/Throwable; {:try_start_269 .. :try_end_27a} :catch_4ea

    .line 346
    :goto_27a
    :try_start_27a
    const-string v5, "SystemServer"

    const-string v7, "Starting Search Service."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v5, "search"

    new-instance v7, Landroid/server/search/SearchManagerService;

    invoke-direct {v7, v6}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28b
    .catch Ljava/lang/Throwable; {:try_start_27a .. :try_end_28b} :catch_4fa

    .line 358
    :goto_28b
    :try_start_28b
    const-string v5, "SystemServer"

    const-string v7, "Starting Checkin Service."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    new-instance v7, Landroid/content/ComponentName;

    const-string v9, "com.google.android.server.checkin"

    const-string v10, "com.google.android.server.checkin.CheckinService"

    invoke-direct {v7, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v33

    .line 362
    .local v33, intent:Landroid/content/Intent;
    move-object v0, v6

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_2be

    .line 363
    const-string v5, "SystemServer"

    const-string v7, "Using fallback Checkin Service."

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v5, "checkin"

    new-instance v7, Lcom/android/server/FallbackCheckinService;

    invoke-direct {v7, v6}, Lcom/android/server/FallbackCheckinService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2be
    .catch Ljava/lang/Throwable; {:try_start_28b .. :try_end_2be} :catch_50a

    .line 372
    .end local v33           #intent:Landroid/content/Intent;
    :cond_2be
    :goto_2be
    :try_start_2be
    const-string v5, "SystemServer"

    const-string v7, "Starting LGE System Service."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v5, "lgesystem"

    new-instance v7, Lcom/android/server/LGESystemService;

    invoke-direct {v7, v6}, Lcom/android/server/LGESystemService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2cf
    .catch Ljava/lang/Throwable; {:try_start_2be .. :try_end_2cf} :catch_51a

    .line 380
    :goto_2cf
    :try_start_2cf
    const-string v5, "SystemServer"

    const-string v7, "Starting Wallpaper Service"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v5, "wallpaper"

    new-instance v7, Lcom/android/server/WallpaperService;

    invoke-direct {v7, v6}, Lcom/android/server/WallpaperService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e0
    .catch Ljava/lang/Throwable; {:try_start_2cf .. :try_end_2e0} :catch_52a

    .line 387
    :goto_2e0
    :try_start_2e0
    const-string v5, "SystemServer"

    const-string v7, "Starting Audio Service"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string v5, "audio"

    new-instance v7, Landroid/media/AudioService;

    invoke-direct {v7, v6}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f1
    .catch Ljava/lang/Throwable; {:try_start_2e0 .. :try_end_2f1} :catch_53a

    .line 394
    :goto_2f1
    :try_start_2f1
    const-string v5, "SystemServer"

    const-string v7, "Starting HeadsetObserver"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v28, Lcom/android/server/HeadsetObserver;

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/HeadsetObserver;-><init>(Landroid/content/Context;)V
    :try_end_300
    .catch Ljava/lang/Throwable; {:try_start_2f1 .. :try_end_300} :catch_54a

    .end local v27           #headset:Lcom/android/server/HeadsetObserver;
    .local v28, headset:Lcom/android/server/HeadsetObserver;
    move-object/from16 v27, v28

    .line 411
    .end local v28           #headset:Lcom/android/server/HeadsetObserver;
    .restart local v27       #headset:Lcom/android/server/HeadsetObserver;
    :goto_302
    :try_start_302
    const-string v5, "SystemServer"

    const-string v7, "Starting AppWidget Service"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    new-instance v12, Lcom/android/server/AppWidgetService;

    invoke-direct {v12, v6}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_30e
    .catch Ljava/lang/Throwable; {:try_start_302 .. :try_end_30e} :catch_55a

    .line 413
    .end local v11           #appWidget:Lcom/android/server/AppWidgetService;
    .local v12, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_30e
    const-string v5, "appwidget"

    invoke-static {v5, v12}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_313
    .catch Ljava/lang/Throwable; {:try_start_30e .. :try_end_313} :catch_5b5

    move-object v11, v12

    .line 419
    .end local v12           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v11       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_314
    :try_start_314
    move-object v0, v6

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/android/server/status/StatusBarPolicy;->installIcons(Landroid/content/Context;Lcom/android/server/status/StatusBarService;)V
    :try_end_31a
    .catch Ljava/lang/Throwable; {:try_start_314 .. :try_end_31a} :catch_56a

    .line 425
    :goto_31a
    :try_start_31a
    const-string v5, "SystemServer"

    const-string v7, "Starting ATCommandObserver"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    new-instance v14, Lcom/android/server/ATCommandObserver;

    invoke-direct {v14, v6}, Lcom/android/server/ATCommandObserver;-><init>(Landroid/content/Context;)V
    :try_end_326
    .catch Ljava/lang/Throwable; {:try_start_31a .. :try_end_326} :catch_578

    .end local v13           #atcommand:Lcom/android/server/ATCommandObserver;
    .local v14, atcommand:Lcom/android/server/ATCommandObserver;
    move-object v13, v14

    .line 435
    .end local v14           #atcommand:Lcom/android/server/ATCommandObserver;
    .restart local v13       #atcommand:Lcom/android/server/ATCommandObserver;
    :cond_327
    :goto_327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v7, "adb_enabled"

    const-string v9, "1"

    const-string v10, "persist.service.adb.enable"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_588

    const/4 v9, 0x1

    :goto_33d
    invoke-static {v5, v7, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v7, "adb_enabled"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x0

    new-instance v10, Lcom/android/server/ServerThread$AdbSettingsObserver;

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/ServerThread$AdbSettingsObserver;-><init>(Lcom/android/server/ServerThread;)V

    invoke-virtual {v5, v7, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 443
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/WindowManagerService;->detectSafeMode()Z

    move-result v40

    .line 445
    .local v40, safeMode:Z
    if-eqz v36, :cond_360

    .line 446
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/NotificationManagerService;->systemReady()V

    .line 449
    :cond_360
    if-eqz v41, :cond_365

    .line 450
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/status/StatusBarService;->systemReady()V

    .line 452
    :cond_365
    if-eqz v30, :cond_36a

    .line 453
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/InputMethodManagerService;->systemReady()V

    .line 455
    :cond_36a
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/WindowManagerService;->systemReady()V

    .line 456
    invoke-virtual {v8}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 458
    :try_start_370
    invoke-interface/range {v38 .. v38}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_373
    .catch Landroid/os/RemoteException; {:try_start_370 .. :try_end_373} :catch_5a3

    .line 461
    :goto_373
    if-eqz v11, :cond_37b

    .line 462
    move-object v0, v11

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/server/AppWidgetService;->systemReady(Z)V

    .line 468
    :cond_37b
    const/16 v29, 0x0

    .line 470
    .local v29, hidden_reset_flag:I
    :try_start_37d
    new-instance v32, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServerThread;->fileHiddenReset:Ljava/lang/String;

    move-object v7, v0

    invoke-direct {v5, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 471
    .local v32, inReader:Ljava/io/BufferedReader;
    invoke-virtual/range {v32 .. v32}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    .line 472
    .local v19, buf:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_396
    .catch Ljava/io/IOException; {:try_start_37d .. :try_end_396} :catch_59b

    move-result v29

    .line 474
    if-nez v29, :cond_3a6

    .line 476
    :try_start_399
    new-instance v35, Lcom/android/server/PowerOnSound;

    move-object/from16 v0, v35

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/PowerOnSound;-><init>(Landroid/content/Context;)V
    :try_end_3a1
    .catch Ljava/lang/NullPointerException; {:try_start_399 .. :try_end_3a1} :catch_58b
    .catch Ljava/io/IOException; {:try_start_399 .. :try_end_3a1} :catch_59b

    .line 477
    .end local v34           #mPowerOnSound:Lcom/android/server/PowerOnSound;
    .local v35, mPowerOnSound:Lcom/android/server/PowerOnSound;
    :try_start_3a1
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/PowerOnSound;->play()V
    :try_end_3a4
    .catch Ljava/lang/NullPointerException; {:try_start_3a1 .. :try_end_3a4} :catch_5af
    .catch Ljava/io/IOException; {:try_start_3a1 .. :try_end_3a4} :catch_5a9

    move-object/from16 v34, v35

    .line 494
    .end local v6           #context:Landroid/content/Context;
    .end local v19           #buf:Ljava/lang/String;
    .end local v32           #inReader:Ljava/io/BufferedReader;
    .end local v35           #mPowerOnSound:Lcom/android/server/PowerOnSound;
    .restart local v34       #mPowerOnSound:Lcom/android/server/PowerOnSound;
    :cond_3a6
    :goto_3a6
    :try_start_3a6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->systemReady()V
    :try_end_3ad
    .catch Landroid/os/RemoteException; {:try_start_3a6 .. :try_end_3ad} :catch_5a6

    .line 498
    :goto_3ad
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/Watchdog;->start()V

    .line 500
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 501
    const-string v5, "SystemServer"

    const-string v6, "System ServerThread is exiting!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void

    .line 100
    .end local v8           #power:Lcom/android/server/PowerManagerService;
    .end local v11           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v13           #atcommand:Lcom/android/server/ATCommandObserver;
    .end local v15           #bluetooth:Landroid/server/BluetoothDeviceService;
    .end local v17           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v21           #factoryTest:I
    .end local v23           #fmReceiver:Lcom/broadcom/bt/service/fm/FmReceiverService;
    .end local v25           #hardware:Lcom/android/server/HardwareService;
    .end local v27           #headset:Lcom/android/server/HeadsetObserver;
    .end local v29           #hidden_reset_flag:I
    .end local v30           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v34           #mPowerOnSound:Lcom/android/server/PowerOnSound;
    .end local v36           #notification:Lcom/android/server/NotificationManagerService;
    .end local v38           #pm:Landroid/content/pm/IPackageManager;
    .end local v40           #safeMode:Z
    .end local v41           #statusBar:Lcom/android/server/status/StatusBarService;
    .end local v43           #wm:Lcom/android/server/WindowManagerService;
    :cond_3bf
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move/from16 v21, v5

    goto/16 :goto_2b

    .line 139
    .restart local v6       #context:Landroid/content/Context;
    .restart local v8       #power:Lcom/android/server/PowerManagerService;
    .restart local v13       #atcommand:Lcom/android/server/ATCommandObserver;
    .restart local v15       #bluetooth:Landroid/server/BluetoothDeviceService;
    .restart local v17       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v21       #factoryTest:I
    .restart local v23       #fmReceiver:Lcom/broadcom/bt/service/fm/FmReceiverService;
    .restart local v25       #hardware:Lcom/android/server/HardwareService;
    .restart local v27       #headset:Lcom/android/server/HeadsetObserver;
    .restart local v34       #mPowerOnSound:Lcom/android/server/PowerOnSound;
    .restart local v38       #pm:Landroid/content/pm/IPackageManager;
    .restart local v43       #wm:Lcom/android/server/WindowManagerService;
    :cond_3c7
    const/4 v5, 0x0

    goto/16 :goto_89

    .line 147
    :cond_3ca
    const/4 v5, 0x0

    goto/16 :goto_a7

    .line 177
    .end local v25           #hardware:Lcom/android/server/HardwareService;
    .restart local v9       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v26       #hardware:Lcom/android/server/HardwareService;
    :cond_3cd
    const/4 v5, 0x0

    goto/16 :goto_124

    .line 200
    :cond_3d0
    const/4 v5, 0x1

    move/from16 v0, v21

    move v1, v5

    if-ne v0, v1, :cond_3f7

    .line 201
    :try_start_3d6
    const-string v5, "SystemServer"

    const-string v7, "Registering null Bluetooth Service (factory test)"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v5, "bluetooth"

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e3
    .catch Ljava/lang/RuntimeException; {:try_start_3d6 .. :try_end_3e3} :catch_3e5

    goto/16 :goto_17a

    .line 258
    .end local v9           #alarm:Lcom/android/server/AlarmManagerService;
    :catch_3e5
    move-exception v5

    move-object/from16 v20, v5

    move-object/from16 v25, v26

    .line 259
    .end local v26           #hardware:Lcom/android/server/HardwareService;
    .local v20, e:Ljava/lang/RuntimeException;
    .restart local v25       #hardware:Lcom/android/server/HardwareService;
    :goto_3ea
    const-string v5, "System"

    const-string v7, "Failure starting core service"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a6

    .line 204
    .end local v20           #e:Ljava/lang/RuntimeException;
    .end local v25           #hardware:Lcom/android/server/HardwareService;
    .restart local v9       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v26       #hardware:Lcom/android/server/HardwareService;
    :cond_3f7
    :try_start_3f7
    const-string v5, "SystemServer"

    const-string v7, "Starting Bluetooth Service."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v16, Landroid/server/BluetoothDeviceService;

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/server/BluetoothDeviceService;-><init>(Landroid/content/Context;)V
    :try_end_406
    .catch Ljava/lang/RuntimeException; {:try_start_3f7 .. :try_end_406} :catch_3e5

    .line 206
    .end local v15           #bluetooth:Landroid/server/BluetoothDeviceService;
    .restart local v16       #bluetooth:Landroid/server/BluetoothDeviceService;
    :try_start_406
    invoke-virtual/range {v16 .. v16}, Landroid/server/BluetoothDeviceService;->init()V

    .line 207
    const-string v5, "bluetooth"

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 208
    new-instance v18, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;)V
    :try_end_419
    .catch Ljava/lang/RuntimeException; {:try_start_406 .. :try_end_419} :catch_5db

    .line 209
    .end local v17           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v18       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_419
    const-string v5, "bluetooth_a2dp"

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_421
    .catch Ljava/lang/RuntimeException; {:try_start_419 .. :try_end_421} :catch_5e4

    move-object/from16 v17, v18

    .end local v18           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v17       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v15, v16

    .end local v16           #bluetooth:Landroid/server/BluetoothDeviceService;
    .restart local v15       #bluetooth:Landroid/server/BluetoothDeviceService;
    goto/16 :goto_17a

    .line 241
    :cond_427
    const/4 v5, 0x1

    move/from16 v0, v21

    move v1, v5

    if-ne v0, v1, :cond_43c

    .line 242
    :try_start_42d
    const-string v5, "SystemServer"

    const-string v7, "Registering null FM Receiver Service (factory test)"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v5, "fm_receiver"

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_1a4

    .line 245
    :cond_43c
    const-string v5, "SystemServer"

    const-string v7, "Starting FM Receiver Service."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v24, Lcom/broadcom/bt/service/fm/FmReceiverService;

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;-><init>(Landroid/content/Context;)V
    :try_end_44b
    .catch Ljava/lang/RuntimeException; {:try_start_42d .. :try_end_44b} :catch_3e5

    .line 247
    .end local v23           #fmReceiver:Lcom/broadcom/bt/service/fm/FmReceiverService;
    .restart local v24       #fmReceiver:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_start_44b
    invoke-virtual/range {v24 .. v24}, Lcom/broadcom/bt/service/fm/FmReceiverService;->init()V

    .line 248
    const-string v5, "fm_receiver"

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_456
    .catch Ljava/lang/RuntimeException; {:try_start_44b .. :try_end_456} :catch_5ef

    move-object/from16 v23, v24

    .end local v24           #fmReceiver:Lcom/broadcom/bt/service/fm/FmReceiverService;
    .restart local v23       #fmReceiver:Lcom/broadcom/bt/service/fm/FmReceiverService;
    goto/16 :goto_1a4

    .line 272
    .end local v9           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v26           #hardware:Lcom/android/server/HardwareService;
    .restart local v11       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v25       #hardware:Lcom/android/server/HardwareService;
    .restart local v30       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v36       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v41       #statusBar:Lcom/android/server/status/StatusBarService;
    :catch_45a
    move-exception v5

    move-object/from16 v20, v5

    .line 273
    .local v20, e:Ljava/lang/Throwable;
    :goto_45d
    const-string v5, "SystemServer"

    const-string v7, "Failure starting StatusBarService"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1cc

    .line 279
    .end local v20           #e:Ljava/lang/Throwable;
    :catch_46a
    move-exception v5

    move-object/from16 v20, v5

    .line 280
    .restart local v20       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v7, "Failure starting Clipboard Service"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1dd

    .line 287
    .end local v20           #e:Ljava/lang/Throwable;
    :catch_47a
    move-exception v5

    move-object/from16 v20, v5

    .line 288
    .restart local v20       #e:Ljava/lang/Throwable;
    :goto_47d
    const-string v5, "SystemServer"

    const-string v7, "Failure starting Input Manager Service"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f8

    .line 294
    .end local v20           #e:Ljava/lang/Throwable;
    :catch_48a
    move-exception v5

    move-object/from16 v20, v5

    .line 295
    .restart local v20       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v7, "Failure starting NetStat Service"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_209

    .line 302
    .end local v20           #e:Ljava/lang/Throwable;
    :catch_49a
    move-exception v5

    move-object/from16 v20, v5

    .line 303
    .restart local v20       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v7, "Failure starting Connectivity Service"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_219

    .line 310
    .end local v20           #e:Ljava/lang/Throwable;
    :catch_4aa
    move-exception v5

    move-object/from16 v20, v5

    .line 311
    .restart local v20       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v7, "Failure starting Accessibility Manager"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22a

    .line 318
    .end local v20           #e:Ljava/lang/Throwable;
    :catch_4ba
    move-exception v5

    move-object/from16 v20, v5

    .line 319
    .restart local v20       #e:Ljava/lang/Throwable;
    :goto_4bd
    const-string v5, "SystemServer"

    const-string v7, "Failure starting Notification Manager"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_247

    .line 326
    .end local v20           #e:Ljava/lang/Throwable;
    :catch_4ca
    move-exception v5

    move-object/from16 v20, v5

    .line 327
    .restart local v20       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v7, "Failure starting Mount Service"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_258

    .line 334
    .end local v20           #e:Ljava/lang/Throwable;
    :catch_4da
    move-exception v5

    move-object/from16 v20, v5

    .line 335
    .restart local v20       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v7, "Failure starting DeviceStorageMonitor service"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_269

    .line 341
    .end local v20           #e:Ljava/lang/Throwable;
    :catch_4ea
    move-exception v5

    move-object/from16 v20, v5

    .line 342
    .restart local v20       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v7, "Failure starting Location Manager"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27a

    .line 348
    .end local v20           #e:Ljava/lang/Throwable;
    :catch_4fa
    move-exception v5

    move-object/from16 v20, v5

    .line 349
    .restart local v20       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v7, "Failure starting Search Service"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28b

    .line 366
    .end local v20           #e:Ljava/lang/Throwable;
    :catch_50a
    move-exception v5

    move-object/from16 v20, v5

    .line 367
    .restart local v20       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v7, "Failure starting Checkin Service"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2be

    .line 374
    .end local v20           #e:Ljava/lang/Throwable;
    :catch_51a
    move-exception v5

    move-object/from16 v20, v5

    .line 375
    .restart local v20       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v7, "Failure starting LGE System Service"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2cf

    .line 382
    .end local v20           #e:Ljava/lang/Throwable;
    :catch_52a
    move-exception v5

    move-object/from16 v20, v5

    .line 383
    .restart local v20       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v7, "Failure starting Wallpaper Service"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2e0

    .line 389
    .end local v20           #e:Ljava/lang/Throwable;
    :catch_53a
    move-exception v5

    move-object/from16 v20, v5

    .line 390
    .restart local v20       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v7, "Failure starting Audio Service"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2f1

    .line 397
    .end local v20           #e:Ljava/lang/Throwable;
    :catch_54a
    move-exception v5

    move-object/from16 v20, v5

    .line 398
    .restart local v20       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v7, "Failure starting HeadsetObserver"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_302

    .line 414
    .end local v20           #e:Ljava/lang/Throwable;
    :catch_55a
    move-exception v5

    move-object/from16 v20, v5

    .line 415
    .restart local v20       #e:Ljava/lang/Throwable;
    :goto_55d
    const-string v5, "SystemServer"

    const-string v7, "Failure starting AppWidget Service"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_314

    .line 420
    .end local v20           #e:Ljava/lang/Throwable;
    :catch_56a
    move-exception v20

    .line 421
    .restart local v20       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v7, "Failure installing status bar icons"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31a

    .line 428
    .end local v20           #e:Ljava/lang/Throwable;
    :catch_578
    move-exception v5

    move-object/from16 v20, v5

    .line 429
    .restart local v20       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v7, "Failure starting ATCommandObserver"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_327

    .line 435
    .end local v20           #e:Ljava/lang/Throwable;
    :cond_588
    const/4 v9, 0x0

    goto/16 :goto_33d

    .line 478
    .restart local v19       #buf:Ljava/lang/String;
    .restart local v29       #hidden_reset_flag:I
    .restart local v32       #inReader:Ljava/io/BufferedReader;
    .restart local v40       #safeMode:Z
    :catch_58b
    move-exception v5

    move-object/from16 v20, v5

    .line 479
    .local v20, e:Ljava/lang/NullPointerException;
    :goto_58e
    :try_start_58e
    const-string v5, "SystemServer"

    const-string v6, "Failure playing power-on sound"

    .end local v6           #context:Landroid/content/Context;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_599
    .catch Ljava/io/IOException; {:try_start_58e .. :try_end_599} :catch_59b

    goto/16 :goto_3a6

    .line 482
    .end local v19           #buf:Ljava/lang/String;
    .end local v20           #e:Ljava/lang/NullPointerException;
    .end local v32           #inReader:Ljava/io/BufferedReader;
    :catch_59b
    move-exception v5

    move-object/from16 v20, v5

    .line 483
    .local v20, e:Ljava/io/IOException;
    :goto_59e
    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3a6

    .line 459
    .end local v20           #e:Ljava/io/IOException;
    .end local v29           #hidden_reset_flag:I
    .restart local v6       #context:Landroid/content/Context;
    :catch_5a3
    move-exception v5

    goto/16 :goto_373

    .line 495
    .end local v6           #context:Landroid/content/Context;
    .restart local v29       #hidden_reset_flag:I
    :catch_5a6
    move-exception v5

    goto/16 :goto_3ad

    .line 482
    .end local v34           #mPowerOnSound:Lcom/android/server/PowerOnSound;
    .restart local v6       #context:Landroid/content/Context;
    .restart local v19       #buf:Ljava/lang/String;
    .restart local v32       #inReader:Ljava/io/BufferedReader;
    .restart local v35       #mPowerOnSound:Lcom/android/server/PowerOnSound;
    :catch_5a9
    move-exception v5

    move-object/from16 v20, v5

    move-object/from16 v34, v35

    .end local v35           #mPowerOnSound:Lcom/android/server/PowerOnSound;
    .restart local v34       #mPowerOnSound:Lcom/android/server/PowerOnSound;
    goto :goto_59e

    .line 478
    .end local v34           #mPowerOnSound:Lcom/android/server/PowerOnSound;
    .restart local v35       #mPowerOnSound:Lcom/android/server/PowerOnSound;
    :catch_5af
    move-exception v5

    move-object/from16 v20, v5

    move-object/from16 v34, v35

    .end local v35           #mPowerOnSound:Lcom/android/server/PowerOnSound;
    .restart local v34       #mPowerOnSound:Lcom/android/server/PowerOnSound;
    goto :goto_58e

    .line 414
    .end local v11           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v19           #buf:Ljava/lang/String;
    .end local v29           #hidden_reset_flag:I
    .end local v32           #inReader:Ljava/io/BufferedReader;
    .end local v40           #safeMode:Z
    .restart local v12       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_5b5
    move-exception v5

    move-object/from16 v20, v5

    move-object v11, v12

    .end local v12           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v11       #appWidget:Lcom/android/server/AppWidgetService;
    goto :goto_55d

    .line 318
    .end local v36           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v37       #notification:Lcom/android/server/NotificationManagerService;
    :catch_5ba
    move-exception v5

    move-object/from16 v20, v5

    move-object/from16 v36, v37

    .end local v37           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v36       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_4bd

    .line 287
    .end local v30           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v31       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_5c1
    move-exception v5

    move-object/from16 v20, v5

    move-object/from16 v30, v31

    .end local v31           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v30       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_47d

    .line 272
    .end local v41           #statusBar:Lcom/android/server/status/StatusBarService;
    .restart local v42       #statusBar:Lcom/android/server/status/StatusBarService;
    :catch_5c8
    move-exception v5

    move-object/from16 v20, v5

    move-object/from16 v41, v42

    .end local v42           #statusBar:Lcom/android/server/status/StatusBarService;
    .restart local v41       #statusBar:Lcom/android/server/status/StatusBarService;
    goto/16 :goto_45d

    .line 258
    .end local v8           #power:Lcom/android/server/PowerManagerService;
    .end local v11           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v30           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v36           #notification:Lcom/android/server/NotificationManagerService;
    .end local v41           #statusBar:Lcom/android/server/status/StatusBarService;
    .restart local v39       #power:Lcom/android/server/PowerManagerService;
    :catch_5cf
    move-exception v5

    move-object/from16 v20, v5

    move-object/from16 v8, v39

    .end local v39           #power:Lcom/android/server/PowerManagerService;
    .restart local v8       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_3ea

    :catch_5d6
    move-exception v5

    move-object/from16 v20, v5

    goto/16 :goto_3ea

    .end local v15           #bluetooth:Landroid/server/BluetoothDeviceService;
    .end local v25           #hardware:Lcom/android/server/HardwareService;
    .restart local v9       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v16       #bluetooth:Landroid/server/BluetoothDeviceService;
    .restart local v26       #hardware:Lcom/android/server/HardwareService;
    :catch_5db
    move-exception v5

    move-object/from16 v20, v5

    move-object/from16 v15, v16

    .end local v16           #bluetooth:Landroid/server/BluetoothDeviceService;
    .restart local v15       #bluetooth:Landroid/server/BluetoothDeviceService;
    move-object/from16 v25, v26

    .end local v26           #hardware:Lcom/android/server/HardwareService;
    .restart local v25       #hardware:Lcom/android/server/HardwareService;
    goto/16 :goto_3ea

    .end local v15           #bluetooth:Landroid/server/BluetoothDeviceService;
    .end local v17           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v25           #hardware:Lcom/android/server/HardwareService;
    .restart local v16       #bluetooth:Landroid/server/BluetoothDeviceService;
    .restart local v18       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v26       #hardware:Lcom/android/server/HardwareService;
    :catch_5e4
    move-exception v5

    move-object/from16 v20, v5

    move-object/from16 v17, v18

    .end local v18           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v17       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v15, v16

    .end local v16           #bluetooth:Landroid/server/BluetoothDeviceService;
    .restart local v15       #bluetooth:Landroid/server/BluetoothDeviceService;
    move-object/from16 v25, v26

    .end local v26           #hardware:Lcom/android/server/HardwareService;
    .restart local v25       #hardware:Lcom/android/server/HardwareService;
    goto/16 :goto_3ea

    .end local v23           #fmReceiver:Lcom/broadcom/bt/service/fm/FmReceiverService;
    .end local v25           #hardware:Lcom/android/server/HardwareService;
    .restart local v24       #fmReceiver:Lcom/broadcom/bt/service/fm/FmReceiverService;
    .restart local v26       #hardware:Lcom/android/server/HardwareService;
    :catch_5ef
    move-exception v5

    move-object/from16 v20, v5

    move-object/from16 v23, v24

    .end local v24           #fmReceiver:Lcom/broadcom/bt/service/fm/FmReceiverService;
    .restart local v23       #fmReceiver:Lcom/broadcom/bt/service/fm/FmReceiverService;
    move-object/from16 v25, v26

    .end local v26           #hardware:Lcom/android/server/HardwareService;
    .restart local v25       #hardware:Lcom/android/server/HardwareService;
    goto/16 :goto_3ea
.end method
