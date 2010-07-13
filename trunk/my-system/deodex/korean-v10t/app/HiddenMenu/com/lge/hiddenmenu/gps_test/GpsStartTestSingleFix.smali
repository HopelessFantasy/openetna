.class public Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;
.super Landroid/app/Activity;
.source "GpsStartTestSingleFix.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$MyBroadcastReceiver;,
        Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;,
        Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;
    }
.end annotation


# static fields
.field public static final EXTRA_ENABLED:Ljava/lang/String; = "enabled"

.field public static final GPS_ENABLED_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_ENABLED_CHANGE"

.field private static SS:[Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAutoFix:Z

.field private mFixCnt:J

.field private mGpsListener:Landroid/location/IGpsStatusListener;

.field private mGpsLog:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;

.field private mGpsOffCnt:I

.field private mGpsProgress:I

.field private mGpsProgressHandler:Landroid/os/Handler;

.field private mILM:Landroid/location/ILocationManager;

.field private mLocListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLogging:Z

.field private mStartTime:J

.field private mStarted:Z

.field private mStayAwake:Z

.field private mTag:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field networkReceiver:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$MyBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "OUT_OF_SERVICE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TEMPORARILY_UNAVAILABLE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AVAILABLE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->SS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const-string v0, "gps"

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->TAG:Ljava/lang/String;

    .line 51
    const-string v0, "GpsStartTest"

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mTag:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mTextView:Landroid/widget/TextView;

    .line 53
    iput-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mLocationManager:Landroid/location/LocationManager;

    .line 55
    iput-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mGpsListener:Landroid/location/IGpsStatusListener;

    .line 56
    iput-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mLocListener:Landroid/location/LocationListener;

    .line 58
    iput-boolean v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mStarted:Z

    .line 59
    iput-boolean v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mLogging:Z

    .line 63
    iput-boolean v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mAutoFix:Z

    .line 64
    new-instance v0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$MyBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$MyBroadcastReceiver;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$1;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->networkReceiver:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$MyBroadcastReceiver;

    .line 69
    iput-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 744
    return-void
.end method

.method static synthetic access$1000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->SS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mLogging:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mAutoFix:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mGpsOffCnt:I

    return v0
.end method

.method static synthetic access$1502(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mGpsOffCnt:I

    return p1
.end method

.method static synthetic access$1508(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mGpsOffCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mGpsOffCnt:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mGpsProgress:I

    return v0
.end method

.method static synthetic access$202(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mGpsProgress:I

    return p1
.end method

.method static synthetic access$208(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mGpsProgress:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mGpsProgress:I

    return v0
.end method

.method static synthetic access$300(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mGpsProgressHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->gps_start()V

    return-void
.end method

.method static synthetic access$500(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mGpsLog:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mFixCnt:J

    return-wide v0
.end method

.method static synthetic access$808(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)J
    .registers 5
    .parameter "x0"

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mFixCnt:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mFixCnt:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->gps_stop()V

    return-void
.end method

.method private alert(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 330
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 331
    return-void
.end method

.method private checkGpsSetting()V
    .registers 5

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->getAllowedProviders()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, providers:Ljava/lang/String;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 175
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "GPS is not enabled! Would you like to enable GPS?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$3;

    invoke-direct {v3, p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$3;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Cancel"

    new-instance v3, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$2;

    invoke-direct {v3, p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$2;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 192
    :cond_30
    return-void
.end method

.method private getAllowedProviders()Ljava/lang/String;
    .registers 4

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_providers_allowed"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, allowedProviders:Ljava/lang/String;
    if-nez v0, :cond_e

    .line 162
    const-string v0, ""

    .line 165
    :cond_e
    return-object v0
.end method

.method private gps_start()V
    .registers 8

    .prologue
    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mILM:Landroid/location/ILocationManager;

    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mGpsListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v0, v1}, Landroid/location/ILocationManager;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)Z

    .line 257
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mLocListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_2d

    .line 262
    :goto_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mStarted:Z

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mStartTime:J

    .line 265
    iget-boolean v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mAutoFix:Z

    if-nez v0, :cond_24

    .line 266
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mFixCnt:J

    .line 269
    :cond_24
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mGpsLog:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;

    invoke-virtual {v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;->init()V

    .line 270
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mGpsOffCnt:I

    .line 271
    return-void

    .line 258
    :catch_2d
    move-exception v0

    move-object v6, v0

    .line 259
    .local v6, e:Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->alert(Ljava/lang/String;)V

    goto :goto_13
.end method

.method private gps_stop()V
    .registers 3

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->onPause()V

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mStarted:Z

    .line 276
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mTextView:Landroid/widget/TextView;

    const-string v1, "Requesting - GPS Stop!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 277
    return-void
.end method

.method private output(Ljava/lang/String;)V
    .registers 7
    .parameter "string"

    .prologue
    .line 238
    move-object v1, p1

    .line 243
    .local v1, s:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mTextView:Landroid/widget/TextView;

    new-instance v3, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$4;

    invoke-direct {v3, p0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$4;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_c

    .line 252
    :goto_b
    return-void

    .line 249
    :catch_c
    move-exception v2

    move-object v0, v2

    .line 250
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "printScreen - Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method private stayAwake(Z)V
    .registers 3
    .parameter "awake"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_13

    .line 335
    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_16

    .line 336
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 342
    :cond_13
    :goto_13
    iput-boolean p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mStayAwake:Z

    .line 343
    return-void

    .line 337
    :cond_16
    if-nez p1, :cond_13

    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 338
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_13
.end method


# virtual methods
.method public coldStart()V
    .registers 5

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-string v2, "delete_aiding_data"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 197
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x1

    const-string v8, "Exception: "

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v5, 0x7f030015

    invoke-virtual {p0, v5}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->setContentView(I)V

    .line 78
    new-instance v5, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)V

    iput-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mGpsLog:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsLog;

    .line 80
    const v5, 0x7f07007a

    invoke-virtual {p0, v5}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mTextView:Landroid/widget/TextView;

    .line 81
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setKeepScreenOn(Z)V

    .line 85
    :try_start_23
    const-string v5, "location"

    invoke-virtual {p0, v5}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/LocationManager;

    iput-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mLocationManager:Landroid/location/LocationManager;

    .line 89
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 90
    .local v0, c:Ljava/lang/Class;
    const-string v5, "mService"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 91
    .local v2, f:Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 92
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/ILocationManager;

    iput-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mILM:Landroid/location/ILocationManager;

    .line 95
    new-instance v5, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$GpsListener;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$1;)V

    iput-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mGpsListener:Landroid/location/IGpsStatusListener;

    .line 99
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mGpsListener:Landroid/location/IGpsStatusListener;

    check-cast v5, Landroid/location/LocationListener;

    iput-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mLocListener:Landroid/location/LocationListener;

    .line 102
    const-string v5, "Select Menu item for GPS Test Start!!"

    invoke-direct {p0, v5}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->output(Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_62} :catch_8c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_23 .. :try_end_62} :catch_ab
    .catch Ljava/lang/NoSuchFieldException; {:try_start_23 .. :try_end_62} :catch_ca
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_62} :catch_ea
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_62} :catch_10a

    .line 115
    .end local v0           #c:Ljava/lang/Class;
    .end local v2           #f:Ljava/lang/reflect/Field;
    :goto_62
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    .local v3, networkIntentFilter:Landroid/content/IntentFilter;
    const-string v5, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->networkReceiver:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$MyBroadcastReceiver;

    invoke-virtual {p0, v5, v3}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    new-instance v5, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$1;

    invoke-direct {v5, p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$1;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;)V

    iput-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mGpsProgressHandler:Landroid/os/Handler;

    .line 139
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 140
    .local v4, pm:Landroid/os/PowerManager;
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v9, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 141
    invoke-direct {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->checkGpsSetting()V

    .line 142
    return-void

    .line 103
    .end local v3           #networkIntentFilter:Landroid/content/IntentFilter;
    .end local v4           #pm:Landroid/os/PowerManager;
    :catch_8c
    move-exception v5

    move-object v1, v5

    .line 104
    .local v1, e:Ljava/lang/SecurityException;
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 105
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_ab
    move-exception v5

    move-object v1, v5

    .line 106
    .local v1, e:Ljava/lang/ClassNotFoundException;
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 107
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_ca
    move-exception v5

    move-object v1, v5

    .line 108
    .local v1, e:Ljava/lang/NoSuchFieldException;
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_62

    .line 109
    .end local v1           #e:Ljava/lang/NoSuchFieldException;
    :catch_ea
    move-exception v5

    move-object v1, v5

    .line 110
    .local v1, e:Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_62

    .line 111
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_10a
    move-exception v5

    move-object v1, v5

    .line 112
    .local v1, e:Ljava/lang/IllegalAccessException;
    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_62
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 148
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 149
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 151
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 296
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 300
    :try_start_3
    iget-boolean v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mStarted:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5} :catch_1b

    if-eqz v0, :cond_15

    .line 302
    :try_start_7
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mILM:Landroid/location/ILocationManager;

    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mGpsListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v0, v1}, Landroid/location/ILocationManager;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V

    .line 303
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mLocListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_1b

    .line 308
    :cond_15
    :goto_15
    :try_start_15
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->networkReceiver:Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix$MyBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1b

    .line 311
    :goto_1a
    return-void

    .line 309
    :catch_1b
    move-exception v0

    goto :goto_1a

    .line 304
    :catch_1d
    move-exception v0

    goto :goto_15
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "\nRequesting - GPS Start!"

    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_3e

    move v0, v1

    .line 234
    :goto_c
    return v0

    .line 203
    :pswitch_d
    invoke-direct {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->gps_start()V

    .line 204
    const-string v0, "\nRequesting - GPS Start!"

    invoke-direct {p0, v3}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->output(Ljava/lang/String;)V

    move v0, v2

    .line 206
    goto :goto_c

    .line 209
    :pswitch_17
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->coldStart()V

    .line 210
    const-string v0, "\nDeleting aiding data..."

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->output(Ljava/lang/String;)V

    move v0, v2

    .line 212
    goto :goto_c

    .line 215
    :pswitch_21
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->finish()V

    move v0, v2

    .line 217
    goto :goto_c

    .line 220
    :pswitch_26
    iput-boolean v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mAutoFix:Z

    .line 221
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mFixCnt:J

    .line 222
    invoke-direct {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->gps_start()V

    .line 223
    const-string v0, "\nRequesting - GPS Start!"

    invoke-direct {p0, v3}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->output(Ljava/lang/String;)V

    move v0, v2

    .line 225
    goto :goto_c

    .line 228
    :pswitch_36
    iput-boolean v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mAutoFix:Z

    .line 229
    invoke-direct {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->gps_stop()V

    move v0, v2

    .line 231
    goto :goto_c

    .line 201
    nop

    :pswitch_data_3e
    .packed-switch 0x7f070110
        :pswitch_d
        :pswitch_17
        :pswitch_36
        :pswitch_21
        :pswitch_26
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 281
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 284
    iget-boolean v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mStarted:Z

    if-eqz v0, :cond_15

    .line 286
    :try_start_7
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mILM:Landroid/location/ILocationManager;

    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mGpsListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v0, v1}, Landroid/location/ILocationManager;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V

    .line 287
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mLocListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_1a

    .line 292
    :cond_15
    :goto_15
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->stayAwake(Z)V

    .line 293
    return-void

    .line 288
    :catch_1a
    move-exception v0

    goto :goto_15
.end method

.method public onResume()V
    .registers 7

    .prologue
    .line 315
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 317
    iget-boolean v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mStarted:Z

    if-eqz v0, :cond_1a

    .line 319
    :try_start_7
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mILM:Landroid/location/ILocationManager;

    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mGpsListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v0, v1}, Landroid/location/ILocationManager;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_1f

    .line 323
    :goto_e
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->mLocListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 326
    :cond_1a
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTestSingleFix;->stayAwake(Z)V

    .line 327
    return-void

    .line 320
    :catch_1f
    move-exception v0

    goto :goto_e
.end method
