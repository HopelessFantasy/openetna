.class public final Landroid/provider/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Settings$FlexInfo;,
        Landroid/provider/Settings$FlexInfo_Operator;,
        Landroid/provider/Settings$Bookmarks;,
        Landroid/provider/Settings$Gservices;,
        Landroid/provider/Settings$Secure;,
        Landroid/provider/Settings$System;,
        Landroid/provider/Settings$NameValueCache;,
        Landroid/provider/Settings$NameValueTable;,
        Landroid/provider/Settings$SettingNotFoundException;
    }
.end annotation


# static fields
.field public static final ACTION_AIRPLANE_MODE_SETTINGS:Ljava/lang/String; = "android.settings.AIRPLANE_MODE_SETTINGS"

.field public static final ACTION_APN_SETTINGS:Ljava/lang/String; = "android.settings.APN_SETTINGS"

.field public static final ACTION_APPLICATION_DEVELOPMENT_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

.field public static final ACTION_APPLICATION_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_SETTINGS"

.field public static final ACTION_BLUETOOTH_SETTINGS:Ljava/lang/String; = "android.settings.BLUETOOTH_SETTINGS"

.field public static final ACTION_DATA_ROAMING_SETTINGS:Ljava/lang/String; = "android.settings.DATA_ROAMING_SETTINGS"

.field public static final ACTION_DATE_SETTINGS:Ljava/lang/String; = "android.settings.DATE_SETTINGS"

.field public static final ACTION_DISPLAY_SETTINGS:Ljava/lang/String; = "android.settings.DISPLAY_SETTINGS"

.field public static final ACTION_INPUT_METHOD_SETTINGS:Ljava/lang/String; = "android.settings.INPUT_METHOD_SETTINGS"

.field public static final ACTION_INTERNAL_STORAGE_SETTINGS:Ljava/lang/String; = "android.settings.INTERNAL_STORAGE_SETTINGS"

.field public static final ACTION_LOCALE_SETTINGS:Ljava/lang/String; = "android.settings.LOCALE_SETTINGS"

.field public static final ACTION_LOCATION_SOURCE_SETTINGS:Ljava/lang/String; = "android.settings.LOCATION_SOURCE_SETTINGS"

.field public static final ACTION_MANAGE_APPLICATIONS_SETTINGS:Ljava/lang/String; = "android.settings.MANAGE_APPLICATIONS_SETTINGS"

.field public static final ACTION_MEMORY_CARD_SETTINGS:Ljava/lang/String; = "android.settings.MEMORY_CARD_SETTINGS"

.field public static final ACTION_NETWORK_OPERATOR_SETTINGS:Ljava/lang/String; = "android.settings.NETWORK_OPERATOR_SETTINGS"

.field public static final ACTION_QUICK_LAUNCH_SETTINGS:Ljava/lang/String; = "android.settings.QUICK_LAUNCH_SETTINGS"

.field public static final ACTION_SECURITY_SETTINGS:Ljava/lang/String; = "android.settings.SECURITY_SETTINGS"

.field public static final ACTION_SETTINGS:Ljava/lang/String; = "android.settings.SETTINGS"

.field public static final ACTION_SOUND_SETTINGS:Ljava/lang/String; = "android.settings.SOUND_SETTINGS"

.field public static final ACTION_SYNC_SETTINGS:Ljava/lang/String; = "android.settings.SYNC_SETTINGS"

.field public static final ACTION_SYSTEM_UPDATE_SETTINGS:Ljava/lang/String; = "android.settings.SYSTEM_UPDATE_SETTINGS"

.field public static final ACTION_USER_DICTIONARY_SETTINGS:Ljava/lang/String; = "android.settings.USER_DICTIONARY_SETTINGS"

.field public static final ACTION_WIFI_IP_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_IP_SETTINGS"

.field public static final ACTION_WIFI_SETTINGS:Ljava/lang/String; = "android.settings.WIFI_SETTINGS"

.field public static final ACTION_WIRELESS_SETTINGS:Ljava/lang/String; = "android.settings.WIRELESS_SETTINGS"

.field public static final AUTHORITY:Ljava/lang/String; = "settings"

.field private static final JID_RESOURCE_PREFIX:Ljava/lang/String; = "android"

.field private static final TAG:Ljava/lang/String; = "Settings"

.field private static sJidResource:Ljava/lang/String;

.field private static sOriginResource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 443
    sput-object v0, Landroid/provider/Settings;->sJidResource:Ljava/lang/String;

    .line 446
    sput-object v0, Landroid/provider/Settings;->sOriginResource:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4176
    return-void
.end method

.method public static getGTalkDeviceId(J)Ljava/lang/String;
    .registers 4
    .parameter "androidId"

    .prologue
    .line 4329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getJidResource()Ljava/lang/String;
    .registers 9

    .prologue
    .line 4296
    const-class v5, Landroid/provider/Settings;

    monitor-enter v5

    :try_start_3
    sget-object v6, Landroid/provider/Settings;->sJidResource:Ljava/lang/String;

    if-eqz v6, :cond_b

    .line 4297
    sget-object v6, Landroid/provider/Settings;->sJidResource:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2c

    .line 4316
    :goto_9
    monitor-exit v5

    return-object v6

    .line 4302
    :cond_b
    :try_start_b
    const-string v6, "SHA-1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_2c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_10} :catch_22

    move-result-object v1

    .line 4307
    .local v1, digest:Ljava/security/MessageDigest;
    :try_start_11
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 4308
    .local v0, deviceId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 4309
    const-string v6, ""

    goto :goto_9

    .line 4303
    .end local v0           #deviceId:Ljava/lang/String;
    .end local v1           #digest:Ljava/security/MessageDigest;
    :catch_22
    move-exception v6

    move-object v2, v6

    .line 4304
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "this should never happen"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2c
    .catchall {:try_start_11 .. :try_end_2c} :catchall_2c

    .line 4296
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    :catchall_2c
    move-exception v6

    monitor-exit v5

    throw v6

    .line 4312
    .restart local v0       #deviceId:Ljava/lang/String;
    .restart local v1       #digest:Ljava/security/MessageDigest;
    :cond_2f
    :try_start_2f
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 4313
    .local v3, hashedDeviceId:[B
    new-instance v4, Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0xc

    invoke-direct {v4, v6, v7, v8}, Ljava/lang/String;-><init>([BII)V

    .line 4314
    .local v4, id:Ljava/lang/String;
    const-string v6, "/"

    const-string v7, "_"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4315
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "android"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Landroid/provider/Settings;->sJidResource:Ljava/lang/String;

    .line 4316
    sget-object v6, Landroid/provider/Settings;->sJidResource:Ljava/lang/String;
    :try_end_62
    .catchall {:try_start_2f .. :try_end_62} :catchall_2c

    goto :goto_9
.end method

.method public static declared-synchronized getnumberResource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4340
    const-class v0, Landroid/provider/Settings;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/provider/Settings;->sOriginResource:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 4341
    sget-object v1, Landroid/provider/Settings;->sOriginResource:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_16

    .line 4343
    :goto_9
    monitor-exit v0

    return-object v1

    :cond_b
    :try_start_b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/provider/Settings;->sOriginResource:Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_16

    goto :goto_9

    .line 4340
    :catchall_16
    move-exception v1

    monitor-exit v0

    throw v1
.end method
