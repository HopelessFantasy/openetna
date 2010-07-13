.class public Lcom/broadcom/bt/server/BrcmBtServiceLoader;
.super Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;
.source "BrcmBtServiceLoader.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BrcmBtServiceLoader"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;-><init>()V

    return-void
.end method

.method protected static initRequiredSystemServices(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const-string v3, "BrcmBtServiceLoader"

    .line 140
    const-string v2, "BrcmBtServiceLoader"

    const-string v2, "Starting FM Receiver Service."

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v1, Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;-><init>(Landroid/content/Context;)V

    .line 142
    .local v1, fmReceiver:Lcom/broadcom/bt/service/fm/FmReceiverService;
    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->init()V

    .line 143
    const-string v2, "bluetooth_fm_receiver_service"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 146
    const-string v2, "BrcmBtServiceLoader"

    const-string v2, "Starting BT Test Service"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v0, Lcom/broadcom/bt/service/test/BluetoothTestModeService;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;-><init>(Landroid/content/Context;)V

    .line 148
    .local v0, btTestMode:Lcom/broadcom/bt/service/test/BluetoothTestModeService;
    invoke-virtual {v0}, Lcom/broadcom/bt/service/test/BluetoothTestModeService;->init()V

    .line 149
    const-string v2, "bluetooth_test"

    invoke-static {v2, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 150
    return-void
.end method

.method protected static initRequiredSystemServicesForFactoryTest(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const-string v2, "BrcmBtServiceLoader"

    .line 154
    const-string v0, "BrcmBtServiceLoader"

    const-string v0, "Registering null FM Receiver Service (factory test)"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v0, "bluetooth_fm_receiver_service"

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 157
    const-string v0, "BrcmBtServiceLoader"

    const-string v0, "Starting BT Test Service"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v0, "bluetooth_test"

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 159
    return-void
.end method

.method public static loadRequiredSystemResources(Landroid/content/Context;I)V
    .registers 9
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    const-string v6, "BrcmBtServiceLoader"

    .line 87
    const-string v4, "BrcmBtServiceLoader"

    const-string v4, "***Loading bluetooth resources....."

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, isEmulator:Z
    const/4 v1, 0x0

    .line 92
    .local v1, isFactoryTest:Z
    const-string v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 93
    const/4 v0, 0x1

    .line 98
    :cond_1a
    :goto_1a
    invoke-static {p0, v0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->init(Landroid/content/Context;ZZ)V

    .line 100
    if-nez v1, :cond_3e

    .line 101
    invoke-static {p0}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->initRequiredSystemServices(Landroid/content/Context;)V

    .line 107
    :goto_22
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.intent.action.BLUETOOTH_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 109
    .local v2, mIntentFilter:Landroid/content/IntentFilter;
    new-instance v3, Lcom/broadcom/bt/server/BrcmBtServiceLoader$1;

    invoke-direct {v3}, Lcom/broadcom/bt/server/BrcmBtServiceLoader$1;-><init>()V

    .line 134
    .local v3, receiver:Landroid/content/BroadcastReceiver;
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    const-string v4, "BrcmBtServiceLoader"

    const-string v4, "***Done loading bluetooth resources....."

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void

    .line 94
    .end local v2           #mIntentFilter:Landroid/content/IntentFilter;
    .end local v3           #receiver:Landroid/content/BroadcastReceiver;
    :cond_39
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1a

    .line 95
    const/4 v1, 0x1

    goto :goto_1a

    .line 103
    :cond_3e
    invoke-static {p0}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->initRequiredSystemServicesForFactoryTest(Landroid/content/Context;)V

    goto :goto_22
.end method

.method public static loadServices(Landroid/content/Context;I)V
    .registers 2
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    .line 76
    invoke-static {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->init(Landroid/content/Context;)V

    .line 79
    invoke-static {p0, p1}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->loadSystemServices(Landroid/content/Context;I)V

    .line 82
    invoke-static {p0, p1}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->loadRequiredSystemResources(Landroid/content/Context;I)V

    .line 83
    return-void
.end method

.method public static loadSystemServices(Landroid/content/Context;I)V
    .registers 15
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v12, "1"

    const-string v8, "BrcmBtServiceLoader"

    .line 163
    const-string v6, "BrcmBtServiceLoader"

    const-string v6, "***Loading bluetooth services as system services....."

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v5, 0x0

    .line 166
    .local v5, obexService:Lcom/broadcom/bt/service/opp/OppService;
    const/4 v4, 0x0

    .line 167
    .local v4, btPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;
    const/4 v3, 0x0

    .line 168
    .local v3, bluetoothPbs:Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;
    const/4 v1, 0x0

    .line 169
    .local v1, bluetoothFts:Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;
    const/4 v2, 0x0

    .line 170
    .local v2, bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHidService;
    const/4 v0, 0x0

    .line 174
    .local v0, bluetoothDgs:Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;
    const-string v6, "bluetooth_opp_service"

    invoke-static {v6}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->getServiceType(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v9, :cond_3e

    .line 175
    const-string v6, "ro.kernel.qemu"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10f

    .line 176
    const-string v6, "BrcmBtServiceLoader"

    const-string v6, "Starting Opp Service."

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v5, Lcom/broadcom/bt/service/opp/OppService;

    .end local v5           #obexService:Lcom/broadcom/bt/service/opp/OppService;
    invoke-direct {v5, p0, v10}, Lcom/broadcom/bt/service/opp/OppService;-><init>(Landroid/content/Context;Z)V

    .line 178
    .restart local v5       #obexService:Lcom/broadcom/bt/service/opp/OppService;
    invoke-virtual {v5}, Lcom/broadcom/bt/service/opp/OppService;->init()V

    .line 179
    const-string v6, "bluetooth_opp_service"

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 202
    :cond_3e
    :goto_3e
    const-string v6, "bluetooth_bpp_service"

    invoke-static {v6}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->getServiceType(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v9, :cond_65

    .line 203
    const-string v6, "ro.kernel.qemu"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_135

    .line 204
    const-string v6, "BrcmBtServiceLoader"

    const-string v6, "Starting Bluetooth Printer Service."

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v4, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    .end local v4           #btPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;
    invoke-direct {v4, p0, v10}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;-><init>(Landroid/content/Context;Z)V

    .line 207
    .restart local v4       #btPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;
    const-string v6, "bluetooth_bpp_service"

    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 224
    :cond_65
    :goto_65
    const-string v6, "bluetooth_pbs"

    invoke-static {v6}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->getServiceType(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v9, :cond_8c

    .line 225
    const-string v6, "ro.kernel.qemu"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_158

    .line 226
    const-string v6, "BrcmBtServiceLoader"

    const-string v6, "Starting Bluetooth PBAP Service."

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v3, Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;

    .end local v3           #bluetoothPbs:Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;
    invoke-direct {v3, p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;-><init>(Landroid/content/Context;)V

    .line 228
    .restart local v3       #bluetoothPbs:Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;
    const-string v6, "bluetooth_pbs"

    invoke-static {v6, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 245
    :cond_8c
    :goto_8c
    const-string v6, "bluetooth_ftp"

    invoke-static {v6}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->getServiceType(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v9, :cond_b3

    .line 246
    const-string v6, "ro.kernel.qemu"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17b

    .line 247
    const-string v6, "BrcmBtServiceLoader"

    const-string v6, "Starting Bluetooth FTP Service."

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v1, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;

    .end local v1           #bluetoothFts:Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;
    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;-><init>(Landroid/content/Context;)V

    .line 249
    .restart local v1       #bluetoothFts:Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;
    const-string v6, "bluetooth_ftp"

    invoke-static {v6, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 264
    :cond_b3
    :goto_b3
    const-string v6, "bluetooth_hid"

    invoke-static {v6}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->getServiceType(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v9, :cond_dd

    .line 265
    const-string v6, "ro.kernel.qemu"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19e

    .line 266
    const-string v6, "BrcmBtServiceLoader"

    const-string v6, "Starting Bluetooth HID Host Service."

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v2, Lcom/broadcom/bt/service/hid/BluetoothHidService;

    .end local v2           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHidService;
    invoke-direct {v2, p0}, Lcom/broadcom/bt/service/hid/BluetoothHidService;-><init>(Landroid/content/Context;)V

    .line 268
    .restart local v2       #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHidService;
    invoke-virtual {v2}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->init()V

    .line 269
    const-string v6, "bluetooth_hid"

    invoke-static {v6, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 282
    :cond_dd
    :goto_dd
    const-string v6, "bluetooth_dg_service"

    invoke-static {v6}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->getServiceType(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v9, :cond_107

    .line 283
    const-string v6, "ro.kernel.qemu"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c4

    .line 284
    const-string v6, "BrcmBtServiceLoader"

    const-string v6, "Starting Bluetooth DG Service."

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v0, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;

    .end local v0           #bluetoothDgs:Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;
    invoke-direct {v0, p0, v10}, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;-><init>(Landroid/content/Context;Z)V

    .line 286
    .restart local v0       #bluetoothDgs:Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;
    invoke-virtual {v0}, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->init()V

    .line 287
    const-string v6, "bluetooth_dg_service"

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 300
    :cond_107
    :goto_107
    const-string v6, "BrcmBtServiceLoader"

    const-string v6, "***Done loading bluetooth services as system services....."

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void

    .line 181
    :cond_10f
    if-ne p1, v9, :cond_11f

    .line 182
    const-string v6, "BrcmBtServiceLoader"

    const-string v6, "Registering null Opp Service (factory test)"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v6, "bluetooth_opp_service"

    invoke-static {v6, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_3e

    .line 185
    :cond_11f
    const-string v6, "BrcmBtServiceLoader"

    const-string v6, "Starting Opp Service."

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v5, Lcom/broadcom/bt/service/opp/OppService;

    .end local v5           #obexService:Lcom/broadcom/bt/service/opp/OppService;
    invoke-direct {v5, p0, v10}, Lcom/broadcom/bt/service/opp/OppService;-><init>(Landroid/content/Context;Z)V

    .line 187
    .restart local v5       #obexService:Lcom/broadcom/bt/service/opp/OppService;
    invoke-virtual {v5}, Lcom/broadcom/bt/service/opp/OppService;->init()V

    .line 188
    const-string v6, "bluetooth_opp_service"

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_3e

    .line 209
    :cond_135
    if-ne p1, v9, :cond_145

    .line 210
    const-string v6, "BrcmBtServiceLoader"

    const-string v6, "Registering null Bluetooth Printer Service (factory test)"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v6, "bluetooth_bpp_service"

    invoke-static {v6, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_65

    .line 215
    :cond_145
    const-string v6, "BrcmBtServiceLoader"

    const-string v6, "Starting Bluetooth Printer Service."

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v4, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    .end local v4           #btPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;
    invoke-direct {v4, p0, v10}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;-><init>(Landroid/content/Context;Z)V

    .line 218
    .restart local v4       #btPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;
    const-string v6, "bluetooth_bpp_service"

    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_65

    .line 231
    :cond_158
    if-ne p1, v9, :cond_168

    .line 232
    const-string v6, "BrcmBtServiceLoader"

    const-string v6, "Registering null Bluetooth PBAP Service (factory test)"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v6, "bluetooth_pbs"

    invoke-static {v6, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_8c

    .line 237
    :cond_168
    const-string v6, "BrcmBtServiceLoader"

    const-string v6, "Starting Bluetooth PBAP Service."

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v3, Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;

    .end local v3           #bluetoothPbs:Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;
    invoke-direct {v3, p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;-><init>(Landroid/content/Context;)V

    .line 239
    .restart local v3       #bluetoothPbs:Lcom/broadcom/bt/service/pbap/BluetoothPBAPServiceStub;
    const-string v6, "bluetooth_pbs"

    invoke-static {v6, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_8c

    .line 252
    :cond_17b
    if-ne p1, v9, :cond_18b

    .line 253
    const-string v6, "BrcmBtServiceLoader"

    const-string v6, "Registering Bluetooth FTP Service (factory test)"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v6, "bluetooth_ftp"

    invoke-static {v6, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_b3

    .line 256
    :cond_18b
    const-string v6, "BrcmBtServiceLoader"

    const-string v6, "Starting Bluetooth FTP Service."

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v1, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;

    .end local v1           #bluetoothFts:Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;
    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;-><init>(Landroid/content/Context;)V

    .line 258
    .restart local v1       #bluetoothFts:Lcom/broadcom/bt/service/ftp/BluetoothFTPServiceStub;
    const-string v6, "bluetooth_ftp"

    invoke-static {v6, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_b3

    .line 270
    :cond_19e
    if-ne p1, v9, :cond_1ae

    .line 271
    const-string v6, "BrcmBtServiceLoader"

    const-string v6, "Registering Bluetooth HID Host Service (factory test)"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v6, "bluetooth_hid"

    invoke-static {v6, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_dd

    .line 274
    :cond_1ae
    const-string v6, "BrcmBtServiceLoader"

    const-string v6, "Starting Bluetooth HID Host Service."

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v2, Lcom/broadcom/bt/service/hid/BluetoothHidService;

    .end local v2           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHidService;
    invoke-direct {v2, p0}, Lcom/broadcom/bt/service/hid/BluetoothHidService;-><init>(Landroid/content/Context;)V

    .line 276
    .restart local v2       #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHidService;
    invoke-virtual {v2}, Lcom/broadcom/bt/service/hid/BluetoothHidService;->init()V

    .line 277
    const-string v6, "bluetooth_hid"

    invoke-static {v6, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_dd

    .line 289
    :cond_1c4
    if-ne p1, v9, :cond_1d4

    .line 290
    const-string v6, "BrcmBtServiceLoader"

    const-string v6, "Registering Bluetooth DG Service (factory test)"

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string v6, "bluetooth_dg_service"

    invoke-static {v6, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_107

    .line 293
    :cond_1d4
    const-string v6, "BrcmBtServiceLoader"

    const-string v6, "Starting Bluetooth DG Service."

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v0, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;

    .end local v0           #bluetoothDgs:Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;
    invoke-direct {v0, p0, v10}, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;-><init>(Landroid/content/Context;Z)V

    .line 295
    .restart local v0       #bluetoothDgs:Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;
    invoke-virtual {v0}, Lcom/broadcom/bt/service/dg/BluetoothDataGatewayService;->init()V

    .line 296
    const-string v6, "bluetooth_dg_service"

    invoke-static {v6, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_107
.end method
