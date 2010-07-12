.class public Lcom/broadcom/bt/service/framework/BluetoothProxyManager;
.super Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;
.source "BluetoothProxyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothProxyManager"

.field private static final sSync:Ljava/lang/String; = ""


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;-><init>()V

    return-void
.end method

.method public static getProxy(Ljava/lang/String;Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .registers 9
    .parameter "name"
    .parameter "ctx"
    .parameter "listener"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v2, "com.broadcom.bt.app.system"

    .line 88
    invoke-static {p0}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager;->getServiceType(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v5, :cond_d

    move v1, v4

    .line 128
    :goto_c
    return v1

    .line 92
    :cond_d
    const-string v1, "bluetooth_opp_service"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v1, "com.broadcom.bt.app.system.OppService"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    new-instance v1, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;

    invoke-direct {v1, p1, v3, p2}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;-><init>(Landroid/content/Context;ILcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)V

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    goto :goto_c

    .line 99
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2b
    const-string v1, "bluetooth_bpp_service"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 101
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v1, "com.broadcom.bt.app.system.BppService"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    new-instance v1, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;

    invoke-direct {v1, p1, v5, p2}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;-><init>(Landroid/content/Context;ILcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)V

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    goto :goto_c

    .line 106
    .end local v0           #intent:Landroid/content/Intent;
    :cond_49
    const-string v1, "bluetooth_pbs"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v1, "com.broadcom.bt.app.system.PbapService"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    new-instance v1, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2, p2}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;-><init>(Landroid/content/Context;ILcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)V

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    goto :goto_c

    .line 113
    .end local v0           #intent:Landroid/content/Intent;
    :cond_68
    const-string v1, "bluetooth_ftp"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 115
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v1, "com.broadcom.bt.app.system.FtpService"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    new-instance v1, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2, p2}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;-><init>(Landroid/content/Context;ILcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)V

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    goto :goto_c

    .line 120
    .end local v0           #intent:Landroid/content/Intent;
    :cond_87
    const-string v1, "bluetooth_dg_service"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v1, "com.broadcom.bt.app.system.DataGatewayService"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    new-instance v1, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;

    const/4 v2, 0x5

    invoke-direct {v1, p1, v2, p2}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager$ProxyCreatorHandler;-><init>(Landroid/content/Context;ILcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)V

    invoke-virtual {p1, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    goto/16 :goto_c

    .end local v0           #intent:Landroid/content/Intent;
    :cond_a7
    move v1, v4

    .line 128
    goto/16 :goto_c
.end method

.method public static getSystemProxy(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .parameter "name"

    .prologue
    .line 138
    invoke-static {p0}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager;->getServiceType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    .line 139
    const/4 p0, 0x0

    .line 227
    .end local p0
    :goto_8
    return-object p0

    .line 142
    .restart local p0
    :cond_9
    const-string v0, "bluetooth_opp_service"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, sOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    const-string v2, ""

    monitor-enter v2

    .line 145
    :try_start_15
    const-string p0, "bluetooth_opp_service"

    .end local p0
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_110

    move-result-object p0

    .line 147
    .local p0, b:Landroid/os/IBinder;
    if-nez p0, :cond_23

    .line 148
    const/4 p0, 0x0

    .line 153
    .end local v0           #sOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    .local p0, sOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    :goto_1e
    :try_start_1e
    monitor-exit v2

    goto :goto_8

    :catchall_20
    move-exception v0

    :goto_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_20

    throw v0

    .line 150
    .restart local v0       #sOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    .local p0, b:Landroid/os/IBinder;
    :cond_23
    :try_start_23
    invoke-static {p0}, Lcom/broadcom/bt/service/opp/IOppService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/opp/IOppService;

    move-result-object v1

    .line 151
    .local v1, service:Lcom/broadcom/bt/service/opp/IOppService;
    new-instance p0, Lcom/broadcom/bt/service/opp/BluetoothOPP;

    .end local p0           #b:Landroid/os/IBinder;
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/opp/BluetoothOPP;-><init>(Lcom/broadcom/bt/service/opp/IOppService;)V
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_110

    .end local v0           #sOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    .local p0, sOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    goto :goto_1e

    .line 155
    .end local v1           #service:Lcom/broadcom/bt/service/opp/IOppService;
    .local p0, name:Ljava/lang/String;
    :cond_2d
    const-string v0, "bluetooth_bpp_service"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, sBluetoothPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
    const-string v2, ""

    monitor-enter v2

    .line 158
    :try_start_39
    const-string p0, "bluetooth_bpp_service"

    .end local p0           #name:Ljava/lang/String;
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_10a

    move-result-object p0

    .line 160
    .local p0, b:Landroid/os/IBinder;
    if-nez p0, :cond_47

    .line 161
    const/4 p0, 0x0

    .line 167
    .end local v0           #sBluetoothPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
    .local p0, sBluetoothPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
    :goto_42
    :try_start_42
    monitor-exit v2

    goto :goto_8

    :catchall_44
    move-exception v0

    :goto_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_44

    throw v0

    .line 163
    .restart local v0       #sBluetoothPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
    .local p0, b:Landroid/os/IBinder;
    :cond_47
    :try_start_47
    invoke-static {p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;

    move-result-object v1

    .line 165
    .local v1, service:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;
    new-instance p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;

    .end local p0           #b:Landroid/os/IBinder;
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinter;-><init>(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;)V
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_10a

    .end local v0           #sBluetoothPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
    .local p0, sBluetoothPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
    goto :goto_42

    .line 169
    .end local v1           #service:Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService;
    .local p0, name:Ljava/lang/String;
    :cond_51
    const-string v0, "bluetooth_pbs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, sBluetoothPBAP:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;
    const-string v2, ""

    monitor-enter v2

    .line 172
    :try_start_5d
    const-string p0, "bluetooth_pbs"

    .end local p0           #name:Ljava/lang/String;
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_104

    move-result-object p0

    .line 174
    .local p0, b:Landroid/os/IBinder;
    if-nez p0, :cond_6b

    .line 175
    const/4 p0, 0x0

    .line 180
    .end local v0           #sBluetoothPBAP:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;
    .local p0, sBluetoothPBAP:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;
    :goto_66
    :try_start_66
    monitor-exit v2

    goto :goto_8

    :catchall_68
    move-exception v0

    :goto_69
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_68

    throw v0

    .line 177
    .restart local v0       #sBluetoothPBAP:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;
    .local p0, b:Landroid/os/IBinder;
    :cond_6b
    :try_start_6b
    invoke-static {p0}, Lcom/broadcom/bt/service/pbap/IBluetoothPBAP$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;

    move-result-object v1

    .line 178
    .local v1, service:Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;
    new-instance p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;

    .end local p0           #b:Landroid/os/IBinder;
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/pbap/BluetoothPBAP;-><init>(Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;)V
    :try_end_74
    .catchall {:try_start_6b .. :try_end_74} :catchall_104

    .end local v0           #sBluetoothPBAP:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;
    .local p0, sBluetoothPBAP:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;
    goto :goto_66

    .line 182
    .end local v1           #service:Lcom/broadcom/bt/service/pbap/IBluetoothPBAP;
    .local p0, name:Ljava/lang/String;
    :cond_75
    const-string v0, "bluetooth_fm_receiver_service"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, sFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    const-string v2, ""

    monitor-enter v2

    .line 185
    :try_start_81
    const-string p0, "bluetooth_fm_receiver_service"

    .end local p0           #name:Ljava/lang/String;
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_86
    .catchall {:try_start_81 .. :try_end_86} :catchall_ff

    move-result-object p0

    .line 187
    .local p0, b:Landroid/os/IBinder;
    if-nez p0, :cond_90

    .line 188
    const/4 p0, 0x0

    .line 194
    .end local v0           #sFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    .local p0, sFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    :goto_8a
    :try_start_8a
    monitor-exit v2

    goto/16 :goto_8

    :catchall_8d
    move-exception v0

    :goto_8e
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_8a .. :try_end_8f} :catchall_8d

    throw v0

    .line 190
    .restart local v0       #sFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    .local p0, b:Landroid/os/IBinder;
    :cond_90
    :try_start_90
    invoke-static {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmReceiverService;

    move-result-object v1

    .line 192
    .local v1, service:Lcom/broadcom/bt/service/fm/IFmReceiverService;
    new-instance p0, Lcom/broadcom/bt/service/fm/FmReceiver;

    .end local p0           #b:Landroid/os/IBinder;
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/fm/FmReceiver;-><init>(Lcom/broadcom/bt/service/fm/IFmReceiverService;)V
    :try_end_99
    .catchall {:try_start_90 .. :try_end_99} :catchall_ff

    .end local v0           #sFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    .local p0, sFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    goto :goto_8a

    .line 196
    .end local v1           #service:Lcom/broadcom/bt/service/fm/IFmReceiverService;
    .local p0, name:Ljava/lang/String;
    :cond_9a
    const-string v0, "bluetooth_ftp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, sBluetoothFTP:Lcom/broadcom/bt/service/ftp/BluetoothFTP;
    const-string v2, ""

    monitor-enter v2

    .line 199
    :try_start_a6
    const-string p0, "bluetooth_ftp"

    .end local p0           #name:Ljava/lang/String;
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_ab
    .catchall {:try_start_a6 .. :try_end_ab} :catchall_fa

    move-result-object p0

    .line 201
    .local p0, b:Landroid/os/IBinder;
    if-nez p0, :cond_b5

    .line 202
    const/4 p0, 0x0

    .line 207
    .end local v0           #sBluetoothFTP:Lcom/broadcom/bt/service/ftp/BluetoothFTP;
    .local p0, sBluetoothFTP:Lcom/broadcom/bt/service/ftp/BluetoothFTP;
    :goto_af
    :try_start_af
    monitor-exit v2

    goto/16 :goto_8

    :catchall_b2
    move-exception v0

    :goto_b3
    monitor-exit v2
    :try_end_b4
    .catchall {:try_start_af .. :try_end_b4} :catchall_b2

    throw v0

    .line 204
    .restart local v0       #sBluetoothFTP:Lcom/broadcom/bt/service/ftp/BluetoothFTP;
    .local p0, b:Landroid/os/IBinder;
    :cond_b5
    :try_start_b5
    invoke-static {p0}, Lcom/broadcom/bt/service/ftp/IBluetoothFTP$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/ftp/IBluetoothFTP;

    move-result-object v1

    .line 205
    .local v1, service:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;
    new-instance p0, Lcom/broadcom/bt/service/ftp/BluetoothFTP;

    .end local p0           #b:Landroid/os/IBinder;
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/ftp/BluetoothFTP;-><init>(Lcom/broadcom/bt/service/ftp/IBluetoothFTP;)V
    :try_end_be
    .catchall {:try_start_b5 .. :try_end_be} :catchall_fa

    .end local v0           #sBluetoothFTP:Lcom/broadcom/bt/service/ftp/BluetoothFTP;
    .local p0, sBluetoothFTP:Lcom/broadcom/bt/service/ftp/BluetoothFTP;
    goto :goto_af

    .line 209
    .end local v1           #service:Lcom/broadcom/bt/service/ftp/IBluetoothFTP;
    .local p0, name:Ljava/lang/String;
    :cond_bf
    const-string v0, "bluetooth_dg_service"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .end local p0           #name:Ljava/lang/String;
    if-eqz p0, :cond_f2

    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, sBluetoothDataGateway:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;
    const-string v2, ""

    monitor-enter v2

    .line 212
    :try_start_cb
    const-string p0, "bluetooth_dg_service"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 214
    .local p0, b:Landroid/os/IBinder;
    if-nez p0, :cond_e1

    .line 215
    const-string p0, "BluetoothProxyManager"

    .end local p0           #b:Landroid/os/IBinder;
    const-string v1, "BluetoothDataGateway, binder is null"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catchall {:try_start_cb .. :try_end_da} :catchall_f5

    .line 216
    const/4 p0, 0x0

    .line 223
    .end local v0           #sBluetoothDataGateway:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;
    .local p0, sBluetoothDataGateway:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;
    :goto_db
    :try_start_db
    monitor-exit v2

    goto/16 :goto_8

    :catchall_de
    move-exception v0

    :goto_df
    monitor-exit v2
    :try_end_e0
    .catchall {:try_start_db .. :try_end_e0} :catchall_de

    throw v0

    .line 218
    .restart local v0       #sBluetoothDataGateway:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;
    .local p0, b:Landroid/os/IBinder;
    :cond_e1
    :try_start_e1
    invoke-static {p0}, Lcom/broadcom/bt/service/dg/IBluetoothDataGateway$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/dg/IBluetoothDataGateway;

    move-result-object v1

    .line 220
    .local v1, service:Lcom/broadcom/bt/service/dg/IBluetoothDataGateway;
    new-instance p0, Lcom/broadcom/bt/service/dg/BluetoothDataGateway;

    .end local p0           #b:Landroid/os/IBinder;
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/dg/BluetoothDataGateway;-><init>(Lcom/broadcom/bt/service/dg/IBluetoothDataGateway;)V
    :try_end_ea
    .catchall {:try_start_e1 .. :try_end_ea} :catchall_f5

    .line 221
    .end local v0           #sBluetoothDataGateway:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;
    .local p0, sBluetoothDataGateway:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;
    :try_start_ea
    const-string v0, "BluetoothProxyManager"

    const-string v1, "BluetoothDataGateway, Constructed"

    .end local v1           #service:Lcom/broadcom/bt/service/dg/IBluetoothDataGateway;
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f1
    .catchall {:try_start_ea .. :try_end_f1} :catchall_de

    goto :goto_db

    .line 227
    .end local p0           #sBluetoothDataGateway:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;
    :cond_f2
    const/4 p0, 0x0

    goto/16 :goto_8

    .line 223
    .restart local v0       #sBluetoothDataGateway:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;
    :catchall_f5
    move-exception p0

    move-object v3, p0

    move-object p0, v0

    .end local v0           #sBluetoothDataGateway:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;
    .restart local p0       #sBluetoothDataGateway:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;
    move-object v0, v3

    goto :goto_df

    .line 207
    .end local p0           #sBluetoothDataGateway:Lcom/broadcom/bt/service/dg/BluetoothDataGateway;
    .local v0, sBluetoothFTP:Lcom/broadcom/bt/service/ftp/BluetoothFTP;
    :catchall_fa
    move-exception p0

    move-object v3, p0

    move-object p0, v0

    .end local v0           #sBluetoothFTP:Lcom/broadcom/bt/service/ftp/BluetoothFTP;
    .local p0, sBluetoothFTP:Lcom/broadcom/bt/service/ftp/BluetoothFTP;
    move-object v0, v3

    goto :goto_b3

    .line 194
    .end local p0           #sBluetoothFTP:Lcom/broadcom/bt/service/ftp/BluetoothFTP;
    .local v0, sFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    :catchall_ff
    move-exception p0

    move-object v3, p0

    move-object p0, v0

    .end local v0           #sFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    .local p0, sFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    move-object v0, v3

    goto :goto_8e

    .line 180
    .end local p0           #sFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    .local v0, sBluetoothPBAP:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;
    :catchall_104
    move-exception p0

    move-object v3, p0

    move-object p0, v0

    .end local v0           #sBluetoothPBAP:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;
    .local p0, sBluetoothPBAP:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;
    move-object v0, v3

    goto/16 :goto_69

    .line 167
    .end local p0           #sBluetoothPBAP:Lcom/broadcom/bt/service/pbap/BluetoothPBAP;
    .local v0, sBluetoothPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
    :catchall_10a
    move-exception p0

    move-object v3, p0

    move-object p0, v0

    .end local v0           #sBluetoothPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
    .local p0, sBluetoothPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
    move-object v0, v3

    goto/16 :goto_45

    .line 153
    .end local p0           #sBluetoothPrinter:Lcom/broadcom/bt/service/bpp/BluetoothPrinter;
    .local v0, sOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    :catchall_110
    move-exception p0

    move-object v3, p0

    move-object p0, v0

    .end local v0           #sOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    .local p0, sOppProxy:Lcom/broadcom/bt/service/opp/BluetoothOPP;
    move-object v0, v3

    goto/16 :goto_21
.end method
