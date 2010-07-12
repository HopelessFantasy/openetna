.class public Landroid/os/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# instance fields
.field mService:Landroid/os/IHardwareService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "hardware"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IHardwareService;

    .line 33
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IHardwareService;

    invoke-interface {v0}, Landroid/os/IHardwareService;->cancelVibrate()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 85
    :goto_5
    return-void

    .line 83
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public vibrate(J)V
    .registers 4
    .parameter "milliseconds"

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IHardwareService;

    invoke-interface {v0, p1, p2}, Landroid/os/IHardwareService;->vibrate(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 46
    :goto_5
    return-void

    .line 44
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public vibrate([JI)V
    .registers 5
    .parameter "pattern"
    .parameter "repeat"

    .prologue
    .line 66
    array-length v0, p1

    if-ge p2, v0, :cond_e

    .line 68
    :try_start_3
    iget-object v0, p0, Landroid/os/Vibrator;->mService:Landroid/os/IHardwareService;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-interface {v0, p1, p2, v1}, Landroid/os/IHardwareService;->vibratePattern([JILandroid/os/IBinder;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_d} :catch_14

    .line 74
    :goto_d
    return-void

    .line 72
    :cond_e
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 69
    :catch_14
    move-exception v0

    goto :goto_d
.end method
