.class public Lcom/lge/hiddenmenu/gps_test/GpsStartTest;
.super Landroid/app/Activity;
.source "GpsStartTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;,
        Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;
    }
.end annotation


# static fields
.field public static final EXTRA_ENABLED:Ljava/lang/String; = "enabled"

.field public static final GPS_ENABLED_CHANGE_ACTION:Ljava/lang/String; = "android.location.GPS_ENABLED_CHANGE"

.field private static SS:[Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mFixCnt:J

.field private mGpsListener:Landroid/location/IGpsStatusListener;

.field private mGpsLog:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;

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


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 41
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

    sput-object v0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->SS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const-string v0, "gps"

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->TAG:Ljava/lang/String;

    .line 47
    const-string v0, "GpsStartTest"

    iput-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mTag:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mTextView:Landroid/widget/TextView;

    .line 49
    iput-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mLocationManager:Landroid/location/LocationManager;

    .line 51
    iput-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mGpsListener:Landroid/location/IGpsStatusListener;

    .line 52
    iput-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mLocListener:Landroid/location/LocationListener;

    .line 54
    iput-boolean v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mStarted:Z

    .line 55
    iput-boolean v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mLogging:Z

    .line 60
    iput-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 426
    return-void
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mGpsLog:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mFixCnt:J

    return-wide v0
.end method

.method static synthetic access$408(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)J
    .registers 5
    .parameter "x0"

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mFixCnt:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mFixCnt:J

    return-wide v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->SS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mLogging:Z

    return v0
.end method

.method private alert(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 288
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 289
    return-void
.end method

.method private checkGpsSetting()V
    .registers 5

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->getAllowedProviders()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, providers:Ljava/lang/String;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 142
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "GPS is not enabled! Would you like to enable GPS?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$2;

    invoke-direct {v3, p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$2;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Cancel"

    new-instance v3, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$1;

    invoke-direct {v3, p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$1;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 159
    :cond_30
    return-void
.end method

.method private getAllowedProviders()Ljava/lang/String;
    .registers 4

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_providers_allowed"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, allowedProviders:Ljava/lang/String;
    if-nez v0, :cond_e

    .line 129
    const-string v0, ""

    .line 132
    :cond_e
    return-object v0
.end method

.method private gps_start()V
    .registers 8

    .prologue
    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mILM:Landroid/location/ILocationManager;

    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mGpsListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v0, v1}, Landroid/location/ILocationManager;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)Z

    .line 223
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mLocListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_21

    .line 228
    :goto_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mStarted:Z

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mStartTime:J

    .line 230
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mFixCnt:J

    .line 231
    return-void

    .line 224
    :catch_21
    move-exception v0

    move-object v6, v0

    .line 225
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

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->alert(Ljava/lang/String;)V

    goto :goto_13
.end method

.method private gps_stop()V
    .registers 3

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->onPause()V

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mStarted:Z

    .line 236
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mTextView:Landroid/widget/TextView;

    const-string v1, "Requesting - GPS Stop!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 237
    return-void
.end method

.method private output(Ljava/lang/String;)V
    .registers 7
    .parameter "string"

    .prologue
    .line 204
    move-object v1, p1

    .line 209
    .local v1, s:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mTextView:Landroid/widget/TextView;

    new-instance v3, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$3;

    invoke-direct {v3, p0, v1}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$3;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_c

    .line 218
    :goto_b
    return-void

    .line 215
    :catch_c
    move-exception v2

    move-object v0, v2

    .line 216
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->TAG:Ljava/lang/String;

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
    .line 292
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_13

    .line 293
    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_16

    .line 294
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 300
    :cond_13
    :goto_13
    iput-boolean p1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mStayAwake:Z

    .line 301
    return-void

    .line 295
    :cond_16
    if-nez p1, :cond_13

    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 296
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_13
.end method


# virtual methods
.method public coldStart()V
    .registers 5

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-string v2, "delete_aiding_data"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 164
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const-string v7, "Exception: "

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v4, 0x7f030015

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->setContentView(I)V

    .line 69
    new-instance v4, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;

    invoke-direct {v4, p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;)V

    iput-object v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mGpsLog:Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsLog;

    .line 71
    const v4, 0x7f07007a

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mTextView:Landroid/widget/TextView;

    .line 72
    iget-object v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setKeepScreenOn(Z)V

    .line 76
    :try_start_23
    const-string v4, "location"

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    iput-object v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mLocationManager:Landroid/location/LocationManager;

    .line 80
    iget-object v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 81
    .local v0, c:Ljava/lang/Class;
    const-string v4, "mService"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 82
    .local v2, f:Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 83
    iget-object v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/ILocationManager;

    iput-object v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mILM:Landroid/location/ILocationManager;

    .line 86
    new-instance v4, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest$GpsListener;-><init>(Lcom/lge/hiddenmenu/gps_test/GpsStartTest;Lcom/lge/hiddenmenu/gps_test/GpsStartTest$1;)V

    iput-object v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mGpsListener:Landroid/location/IGpsStatusListener;

    .line 90
    iget-object v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mGpsListener:Landroid/location/IGpsStatusListener;

    check-cast v4, Landroid/location/LocationListener;

    iput-object v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mLocListener:Landroid/location/LocationListener;

    .line 93
    const-string v4, "Select Menu item for GPS Test Start!!"

    invoke-direct {p0, v4}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->output(Ljava/lang/String;)V
    :try_end_62
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_62} :catch_76
    .catch Ljava/lang/ClassNotFoundException; {:try_start_23 .. :try_end_62} :catch_95
    .catch Ljava/lang/NoSuchFieldException; {:try_start_23 .. :try_end_62} :catch_b4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_62} :catch_d3
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_62} :catch_f3

    .line 106
    .end local v0           #c:Ljava/lang/Class;
    .end local v2           #f:Ljava/lang/reflect/Field;
    :goto_62
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 107
    .local v3, pm:Landroid/os/PowerManager;
    iget-object v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v8, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 108
    invoke-direct {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->checkGpsSetting()V

    .line 109
    return-void

    .line 94
    .end local v3           #pm:Landroid/os/PowerManager;
    :catch_76
    move-exception v4

    move-object v1, v4

    .line 95
    .local v1, e:Ljava/lang/SecurityException;
    iget-object v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 96
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_95
    move-exception v4

    move-object v1, v4

    .line 97
    .local v1, e:Ljava/lang/ClassNotFoundException;
    iget-object v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 98
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_b4
    move-exception v4

    move-object v1, v4

    .line 99
    .local v1, e:Ljava/lang/NoSuchFieldException;
    iget-object v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 100
    .end local v1           #e:Ljava/lang/NoSuchFieldException;
    :catch_d3
    move-exception v4

    move-object v1, v4

    .line 101
    .local v1, e:Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_62

    .line 102
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_f3
    move-exception v4

    move-object v1, v4

    .line 103
    .local v1, e:Ljava/lang/IllegalAccessException;
    iget-object v4, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_62
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 115
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 116
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 118
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 256
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 260
    :try_start_3
    iget-boolean v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mStarted:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5} :catch_16

    if-eqz v0, :cond_15

    .line 262
    :try_start_7
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mILM:Landroid/location/ILocationManager;

    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mGpsListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v0, v1}, Landroid/location/ILocationManager;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V

    .line 263
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mLocListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_16

    .line 269
    :cond_15
    :goto_15
    return-void

    .line 267
    :catch_16
    move-exception v0

    goto :goto_15

    .line 264
    :catch_18
    move-exception v0

    goto :goto_15
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 168
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 200
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 170
    :pswitch_a
    invoke-direct {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->gps_start()V

    .line 171
    const-string v0, "Requesting - GPS Start!"

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->output(Ljava/lang/String;)V

    move v0, v1

    .line 173
    goto :goto_9

    .line 176
    :pswitch_14
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->coldStart()V

    .line 177
    const-string v0, "Deleting aiding data..."

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->output(Ljava/lang/String;)V

    move v0, v1

    .line 179
    goto :goto_9

    .line 182
    :pswitch_1e
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->finish()V

    move v0, v1

    .line 192
    goto :goto_9

    .line 195
    :pswitch_23
    invoke-direct {p0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->gps_stop()V

    move v0, v1

    .line 197
    goto :goto_9

    .line 168
    :pswitch_data_28
    .packed-switch 0x7f070110
        :pswitch_a
        :pswitch_14
        :pswitch_23
        :pswitch_1e
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 244
    iget-boolean v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mStarted:Z

    if-eqz v0, :cond_15

    .line 246
    :try_start_7
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mILM:Landroid/location/ILocationManager;

    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mGpsListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v0, v1}, Landroid/location/ILocationManager;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V

    .line 247
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mLocListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_1a

    .line 252
    :cond_15
    :goto_15
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->stayAwake(Z)V

    .line 253
    return-void

    .line 248
    :catch_1a
    move-exception v0

    goto :goto_15
.end method

.method public onResume()V
    .registers 7

    .prologue
    .line 273
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 275
    iget-boolean v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mStarted:Z

    if-eqz v0, :cond_1a

    .line 277
    :try_start_7
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mILM:Landroid/location/ILocationManager;

    iget-object v1, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mGpsListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v0, v1}, Landroid/location/ILocationManager;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_1f

    .line 281
    :goto_e
    iget-object v0, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->mLocListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 284
    :cond_1a
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/hiddenmenu/gps_test/GpsStartTest;->stayAwake(Z)V

    .line 285
    return-void

    .line 278
    :catch_1f
    move-exception v0

    goto :goto_e
.end method
