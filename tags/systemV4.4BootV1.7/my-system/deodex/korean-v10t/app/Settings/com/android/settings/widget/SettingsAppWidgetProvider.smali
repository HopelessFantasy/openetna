.class public Lcom/android/settings/widget/SettingsAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SettingsAppWidgetProvider.java"


# static fields
.field private static final BUTTON_BLUETOOTH:I = 0x4

.field private static final BUTTON_BRIGHTNESS:I = 0x1

.field private static final BUTTON_GPS:I = 0x3

.field private static final BUTTON_SYNC:I = 0x2

.field private static final BUTTON_WIFI:I = 0x0

.field private static final DEFAULT_BACKLIGHT:I = 0x66

.field private static final MAXIMUM_BACKLIGHT:I = 0xff

.field private static final MINIMUM_BACKLIGHT:I = 0x1e

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_INTERMEDIATE:I = 0x2

.field static final TAG:Ljava/lang/String; = "SettingsAppWidgetProvider"

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static mLocalBluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 48
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->mLocalBluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .registers 5
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 105
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030038

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 107
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f0a00cc

    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 109
    const v1, 0x7f0a00d0

    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 112
    const v1, 0x7f0a00cf

    const/4 v2, 0x2

    invoke-static {p0, p1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 115
    const v1, 0x7f0a00ce

    const/4 v2, 0x3

    invoke-static {p0, p1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 117
    const v1, 0x7f0a00cd

    const/4 v2, 0x4

    invoke-static {p0, p1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 121
    invoke-static {v0, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 122
    return-object v0
.end method

.method private static getBackgroundDataState(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 268
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 269
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    return v1
.end method

.method private static getBluetoothState(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    const/4 v2, 0x2

    .line 374
    sget-object v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->mLocalBluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_11

    .line 375
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    sput-object v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->mLocalBluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 376
    sget-object v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->mLocalBluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_11

    move v1, v2

    .line 386
    :goto_10
    return v1

    .line 380
    :cond_11
    sget-object v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->mLocalBluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v0

    .line 381
    .local v0, state:I
    if-nez v0, :cond_1b

    .line 382
    const/4 v1, 0x0

    goto :goto_10

    .line 383
    :cond_1b
    if-ne v0, v2, :cond_1f

    .line 384
    const/4 v1, 0x1

    goto :goto_10

    :cond_1f
    move v1, v2

    .line 386
    goto :goto_10
.end method

.method private static getBrightness(Landroid/content/Context;)Z
    .registers 8
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 320
    :try_start_1
    const-string v3, "hardware"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v2

    .line 322
    .local v2, hardware:Landroid/os/IHardwareService;
    if-eqz v2, :cond_39

    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_1f

    move-result v0

    .line 325
    .local v0, brightness:I
    const/16 v3, 0x64

    if-le v0, v3, :cond_1d

    const/4 v3, 0x1

    .line 330
    .end local v0           #brightness:I
    .end local v2           #hardware:Landroid/os/IHardwareService;
    :goto_1c
    return v3

    .restart local v0       #brightness:I
    .restart local v2       #hardware:Landroid/os/IHardwareService;
    :cond_1d
    move v3, v6

    .line 325
    goto :goto_1c

    .line 327
    .end local v0           #brightness:I
    .end local v2           #hardware:Landroid/os/IHardwareService;
    :catch_1f
    move-exception v3

    move-object v1, v3

    .line 328
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SettingsAppWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightness: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #e:Ljava/lang/Exception;
    :cond_39
    move v3, v6

    .line 330
    goto :goto_1c
.end method

.method private static getGpsState(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 298
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .registers 8
    .parameter "context"
    .parameter "appWidgetId"
    .parameter "buttonId"

    .prologue
    const/4 v4, 0x0

    .line 191
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 192
    .local v0, launchIntent:Landroid/content/Intent;
    const-class v2, Lcom/android/settings/widget/SettingsAppWidgetProvider;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 193
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 195
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 197
    .local v1, pi:Landroid/app/PendingIntent;
    return-object v1
.end method

.method private static getWifiState(Landroid/content/Context;)I
    .registers 5
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 235
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 236
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 237
    .local v1, wifiState:I
    if-ne v1, v3, :cond_11

    .line 238
    const/4 v2, 0x0

    .line 242
    :goto_10
    return v2

    .line 239
    :cond_11
    const/4 v2, 0x3

    if-ne v1, v2, :cond_16

    move v2, v3

    .line 240
    goto :goto_10

    .line 242
    :cond_16
    const/4 v2, 0x2

    goto :goto_10
.end method

.method private toggleBackgroundData(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 278
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 279
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getBackgroundDataState(Landroid/content/Context;)Z

    move-result v3

    .line 280
    .local v3, sync:Z
    if-nez v3, :cond_1f

    move v4, v6

    :goto_11
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    .line 282
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    .line 284
    .local v1, contentService:Landroid/content/IContentService;
    if-nez v3, :cond_21

    move v4, v6

    :goto_1b
    :try_start_1b
    invoke-interface {v1, v4}, Landroid/content/IContentService;->setListenForNetworkTickles(Z)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_23

    .line 288
    :goto_1e
    return-void

    .end local v1           #contentService:Landroid/content/IContentService;
    :cond_1f
    move v4, v5

    .line 280
    goto :goto_11

    .restart local v1       #contentService:Landroid/content/IContentService;
    :cond_21
    move v4, v5

    .line 284
    goto :goto_1b

    .line 285
    :catch_23
    move-exception v2

    .line 286
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "SettingsAppWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggleBackgroundData: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method private toggleBluetooth(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 396
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getBluetoothState(Landroid/content/Context;)I

    move-result v0

    .line 397
    .local v0, state:I
    if-ne v0, v2, :cond_e

    .line 398
    sget-object v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->mLocalBluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setBluetoothEnabled(Z)V

    .line 402
    :cond_d
    :goto_d
    return-void

    .line 399
    :cond_e
    if-nez v0, :cond_d

    .line 400
    sget-object v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->mLocalBluetoothManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setBluetoothEnabled(Z)V

    goto :goto_d
.end method

.method private toggleBrightness(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const-string v7, "toggleBrightness: "

    const-string v6, "SettingsAppWidgetProvider"

    const-string v4, "screen_brightness"

    .line 340
    :try_start_6
    const-string v4, "hardware"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v3

    .line 342
    .local v3, hardware:Landroid/os/IHardwareService;
    if-eqz v3, :cond_2f

    .line 343
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 344
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v4, "screen_brightness"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 348
    .local v0, brightness:I
    const/16 v4, 0x66

    if-ge v0, v4, :cond_30

    .line 349
    const/16 v0, 0x66

    .line 355
    :goto_22
    invoke-interface {v3, v0}, Landroid/os/IHardwareService;->setBacklights(I)V

    .line 356
    const-string v4, "screen_brightness"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 357
    const-string v4, "screen_brightness"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_2f} :catch_3a
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_2f} :catch_55

    .line 365
    .end local v0           #brightness:I
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v3           #hardware:Landroid/os/IHardwareService;
    :cond_2f
    :goto_2f
    return-void

    .line 350
    .restart local v0       #brightness:I
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v3       #hardware:Landroid/os/IHardwareService;
    :cond_30
    const/16 v4, 0xff

    if-ge v0, v4, :cond_37

    .line 351
    const/16 v0, 0xff

    goto :goto_22

    .line 353
    :cond_37
    const/16 v0, 0x1e

    goto :goto_22

    .line 360
    .end local v0           #brightness:I
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v3           #hardware:Landroid/os/IHardwareService;
    :catch_3a
    move-exception v4

    move-object v2, v4

    .line 361
    .local v2, e:Landroid/os/RemoteException;
    const-string v4, "SettingsAppWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toggleBrightness: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 362
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_55
    move-exception v4

    move-object v2, v4

    .line 363
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "SettingsAppWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toggleBrightness: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method private toggleGps(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 307
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 308
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getGpsState(Landroid/content/Context;)Z

    move-result v0

    .line 309
    .local v0, enabled:Z
    const-string v2, "gps"

    if-nez v0, :cond_11

    const/4 v3, 0x1

    :goto_d
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 310
    return-void

    .line 309
    :cond_11
    const/4 v3, 0x0

    goto :goto_d
.end method

.method private toggleWifi(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 252
    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 253
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getWifiState(Landroid/content/Context;)I

    move-result v1

    .line 254
    .local v1, wifiState:I
    if-ne v1, v3, :cond_14

    .line 255
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 259
    :cond_13
    :goto_13
    return-void

    .line 256
    :cond_14
    if-nez v1, :cond_13

    .line 257
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_13
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .registers 8
    .parameter "views"
    .parameter "context"

    .prologue
    const v5, 0x7f0a00d0

    const v4, 0x7f0a00cf

    const v3, 0x7f0a00ce

    const v2, 0x7f0a00cd

    const v1, 0x7f0a00cc

    .line 144
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getWifiState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_82

    .line 155
    :goto_16
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getBrightness(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 156
    const v0, 0x7f02003b

    invoke-virtual {p0, v5, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 160
    :goto_22
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getBackgroundDataState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 161
    const v0, 0x7f02003f

    invoke-virtual {p0, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 165
    :goto_2e
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getGpsState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 166
    const v0, 0x7f02003d

    invoke-virtual {p0, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 170
    :goto_3a
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getBluetoothState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_8c

    .line 181
    :goto_41
    return-void

    .line 146
    :pswitch_42
    const v0, 0x7f020043

    invoke-virtual {p0, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_16

    .line 149
    :pswitch_49
    const v0, 0x7f020041

    invoke-virtual {p0, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_16

    .line 152
    :pswitch_50
    const v0, 0x7f020042

    invoke-virtual {p0, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_16

    .line 158
    :cond_57
    const v0, 0x7f02003c

    invoke-virtual {p0, v5, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_22

    .line 163
    :cond_5e
    const v0, 0x7f020040

    invoke-virtual {p0, v4, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2e

    .line 168
    :cond_65
    const v0, 0x7f02003e

    invoke-virtual {p0, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_3a

    .line 172
    :pswitch_6c
    const v0, 0x7f02003a

    invoke-virtual {p0, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_41

    .line 175
    :pswitch_73
    const v0, 0x7f020038

    invoke-virtual {p0, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_41

    .line 178
    :pswitch_7a
    const v0, 0x7f020039

    invoke-virtual {p0, v2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_41

    .line 144
    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_42
        :pswitch_49
        :pswitch_50
    .end packed-switch

    .line 170
    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_73
        :pswitch_7a
    .end packed-switch
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 131
    const/4 v2, -0x1

    invoke-static {p0, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 133
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 134
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/settings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 135
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 93
    const-class v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;

    .line 94
    .local v0, clazz:Ljava/lang/Class;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 95
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.settings"

    const-string v4, ".widget.SettingsAppWidgetProvider"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 99
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 85
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, ".widget.SettingsAppWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 89
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 208
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 209
    const-string v2, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 210
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 211
    .local v1, data:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 212
    .local v0, buttonId:I
    if-nez v0, :cond_20

    .line 213
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->toggleWifi(Landroid/content/Context;)V

    .line 225
    .end local v0           #buttonId:I
    .end local v1           #data:Landroid/net/Uri;
    :cond_1c
    :goto_1c
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 226
    return-void

    .line 214
    .restart local v0       #buttonId:I
    .restart local v1       #data:Landroid/net/Uri;
    :cond_20
    const/4 v2, 0x1

    if-ne v0, v2, :cond_27

    .line 215
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->toggleBrightness(Landroid/content/Context;)V

    goto :goto_1c

    .line 216
    :cond_27
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2e

    .line 217
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->toggleBackgroundData(Landroid/content/Context;)V

    goto :goto_1c

    .line 218
    :cond_2e
    const/4 v2, 0x3

    if-ne v0, v2, :cond_35

    .line 219
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->toggleGps(Landroid/content/Context;)V

    goto :goto_1c

    .line 220
    :cond_35
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1c

    .line 221
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->toggleBluetooth(Landroid/content/Context;)V

    goto :goto_1c
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 7
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 75
    const/4 v2, -0x1

    invoke-static {p1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 77
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    array-length v2, p3

    if-ge v0, v2, :cond_11

    .line 78
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 80
    :cond_11
    return-void
.end method
