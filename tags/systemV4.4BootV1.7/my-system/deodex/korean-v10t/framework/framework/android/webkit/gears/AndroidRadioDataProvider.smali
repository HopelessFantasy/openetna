.class public final Landroid/webkit/gears/AndroidRadioDataProvider;
.super Landroid/telephony/PhoneStateListener;
.source "AndroidRadioDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;
    }
.end annotation


# static fields
.field private static final RADIO_TYPE_1xRTT:I = 0x5

.field private static final RADIO_TYPE_CDMA:I = 0x3

.field private static final RADIO_TYPE_EVDO:I = 0x4

.field private static final RADIO_TYPE_GSM:I = 0x1

.field private static final RADIO_TYPE_UNKNOWN:I = 0x0

.field private static final RADIO_TYPE_WCDMA:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Gears-J-RadioProvider"


# instance fields
.field private cellLocation:Landroid/telephony/CellLocation;

.field private nativeObject:J

.field private serviceState:Landroid/telephony/ServiceState;

.field private signalStrength:I

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;J)V
    .registers 6
    .parameter "webview"
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 187
    iput-object v1, p0, Landroid/webkit/gears/AndroidRadioDataProvider;->cellLocation:Landroid/telephony/CellLocation;

    .line 191
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/gears/AndroidRadioDataProvider;->signalStrength:I

    .line 194
    iput-object v1, p0, Landroid/webkit/gears/AndroidRadioDataProvider;->serviceState:Landroid/telephony/ServiceState;

    .line 206
    iput-wide p2, p0, Landroid/webkit/gears/AndroidRadioDataProvider;->nativeObject:J

    .line 207
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Landroid/webkit/gears/AndroidRadioDataProvider;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 209
    iget-object v0, p0, Landroid/webkit/gears/AndroidRadioDataProvider;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_2e

    .line 210
    const-string v0, "Gears-J-RadioProvider"

    const-string v1, "AndroidRadioDataProvider: could not get tepephony manager."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "AndroidRadioDataProvider: telephonyManager is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_2e
    iget-object v0, p0, Landroid/webkit/gears/AndroidRadioDataProvider;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/16 v1, 0x111

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 221
    return-void
.end method

.method private notifyListeners()V
    .registers 6

    .prologue
    .line 251
    iget-object v1, p0, Landroid/webkit/gears/AndroidRadioDataProvider;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Landroid/webkit/gears/AndroidRadioDataProvider;->cellLocation:Landroid/telephony/CellLocation;

    iget v3, p0, Landroid/webkit/gears/AndroidRadioDataProvider;->signalStrength:I

    iget-object v4, p0, Landroid/webkit/gears/AndroidRadioDataProvider;->serviceState:Landroid/telephony/ServiceState;

    invoke-static {v1, v2, v3, v4}, Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;->getInstance(Landroid/telephony/TelephonyManager;Landroid/telephony/CellLocation;ILandroid/telephony/ServiceState;)Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;

    move-result-object v0

    .line 253
    .local v0, radioData:Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;
    if-eqz v0, :cond_13

    .line 254
    iget-wide v1, p0, Landroid/webkit/gears/AndroidRadioDataProvider;->nativeObject:J

    invoke-static {v0, v1, v2}, Landroid/webkit/gears/AndroidRadioDataProvider;->onUpdateAvailable(Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;J)V

    .line 256
    :cond_13
    return-void
.end method

.method private static native onUpdateAvailable(Landroid/webkit/gears/AndroidRadioDataProvider$RadioData;J)V
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .registers 2
    .parameter "location"

    .prologue
    .line 246
    iput-object p1, p0, Landroid/webkit/gears/AndroidRadioDataProvider;->cellLocation:Landroid/telephony/CellLocation;

    .line 247
    invoke-direct {p0}, Landroid/webkit/gears/AndroidRadioDataProvider;->notifyListeners()V

    .line 248
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 2
    .parameter "state"

    .prologue
    .line 233
    iput-object p1, p0, Landroid/webkit/gears/AndroidRadioDataProvider;->serviceState:Landroid/telephony/ServiceState;

    .line 234
    invoke-direct {p0}, Landroid/webkit/gears/AndroidRadioDataProvider;->notifyListeners()V

    .line 235
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 4
    .parameter "ss"

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 240
    .local v0, gsmSignalStrength:I
    const/16 v1, 0x63

    if-ne v0, v1, :cond_f

    const/4 v1, -0x1

    :goto_9
    iput v1, p0, Landroid/webkit/gears/AndroidRadioDataProvider;->signalStrength:I

    .line 241
    invoke-direct {p0}, Landroid/webkit/gears/AndroidRadioDataProvider;->notifyListeners()V

    .line 242
    return-void

    :cond_f
    move v1, v0

    .line 240
    goto :goto_9
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 227
    iget-object v0, p0, Landroid/webkit/gears/AndroidRadioDataProvider;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 228
    const-string v0, "Gears-J-RadioProvider"

    const-string v1, "AndroidRadioDataProvider shutdown."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void
.end method
