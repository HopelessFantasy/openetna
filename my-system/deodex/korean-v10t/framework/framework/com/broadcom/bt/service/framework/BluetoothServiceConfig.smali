.class public Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;
.super Ljava/lang/Object;
.source "BluetoothServiceConfig.java"


# static fields
.field public static final MODE_LOAD_AS_SYSTEM_SVC:I = 0x1

.field public static final MODE_UNDEFINED:I = -0x1

.field public static final MODE_USE_APP_SERVICES:I = 0x2

.field private static final SERVICES:[Ljava/lang/String; = null

.field private static final SERVICES_AVAILABLE:[Z = null

.field private static final SERVICES_STARTUP_ENABLED:[Z = null

.field static final SETTINGS_PREFIX:Ljava/lang/String; = "bt_svcst_"

.field public static final STATE_NOT_AVAILABLE:I = -0x1

.field public static final STATE_STARTED:I = 0x2

.field public static final STATE_STOPPED:I = 0x1

.field private static mBluetoothSupported:Z

.field private static mSysContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x7

    .line 20
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bluetooth_bpp_service"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bluetooth_dg_service"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "bluetooth_dun"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bluetooth_ftp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bluetooth_opp_service"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "bluetooth_pbs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bluetooth_sap"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    .line 32
    new-array v0, v3, [Z

    fill-array-data v0, :array_38

    sput-object v0, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_AVAILABLE:[Z

    .line 46
    new-array v0, v3, [Z

    fill-array-data v0, :array_40

    sput-object v0, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    return-void

    .line 32
    nop

    :array_38
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 46
    :array_40
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServiceType(Ljava/lang/String;)I
    .registers 2
    .parameter "btServiceName"

    .prologue
    .line 122
    const-string v0, "bluetooth_opp_service"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "bluetooth_bpp_service"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "bluetooth_pbs"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "bluetooth_ftp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "bluetooth_dun"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "bluetooth_sap"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 128
    :cond_30
    const/4 v0, 0x2

    .line 130
    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x1

    goto :goto_31
.end method

.method public static init(Landroid/content/Context;)V
    .registers 9
    .parameter "sysContext"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "bt_svcst_init"

    .line 91
    sput-object p0, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->mSysContext:Landroid/content/Context;

    .line 94
    const-string v3, "bluetooth"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 95
    sput-boolean v5, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->mBluetoothSupported:Z

    .line 99
    :cond_10
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->mSysContext:Landroid/content/Context;

    if-eqz v3, :cond_64

    .line 100
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->mSysContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 101
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "bt_svcst_init"

    invoke-static {v0, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 103
    .local v2, settingsExist:I
    if-nez v2, :cond_64

    .line 104
    const-string v3, "BluetoothServiceConfig"

    const-string v4, "*********Initializing Bluetooth Service Settings*******"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2a
    sget-object v3, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_5f

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bt_svcst_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    sget-object v4, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_5d

    move v4, v5

    :goto_57
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_5d
    move v4, v6

    .line 108
    goto :goto_57

    .line 112
    :cond_5f
    const-string v3, "bt_svcst_init"

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #i:I
    .end local v2           #settingsExist:I
    :cond_64
    return-void
.end method

.method public static isBluetoothSupported()Z
    .registers 1

    .prologue
    .line 170
    sget-boolean v0, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->mBluetoothSupported:Z

    return v0
.end method

.method public static isServiceEnabled(Ljava/lang/String;)Z
    .registers 6
    .parameter "svcName"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 181
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->mSysContext:Landroid/content/Context;

    if-eqz v1, :cond_31

    if-eqz p0, :cond_31

    invoke-static {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 183
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->mSysContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 184
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bt_svcst_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v4, v1, :cond_2f

    move v1, v4

    .line 187
    .end local v0           #cr:Landroid/content/ContentResolver;
    :goto_2e
    return v1

    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_2f
    move v1, v3

    .line 184
    goto :goto_2e

    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_31
    move v1, v3

    .line 187
    goto :goto_2e
.end method

.method public static isServiceSupported(Ljava/lang/String;)Z
    .registers 3
    .parameter "svcName"

    .prologue
    .line 138
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1b

    .line 139
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 140
    sget-object v1, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_AVAILABLE:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_1b

    .line 141
    const/4 v1, 0x0

    .line 158
    :goto_17
    return v1

    .line 138
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
    :cond_1b
    const/4 v1, 0x1

    goto :goto_17
.end method
