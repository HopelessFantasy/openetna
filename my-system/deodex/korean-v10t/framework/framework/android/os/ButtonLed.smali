.class public Landroid/os/ButtonLed;
.super Ljava/lang/Object;
.source "ButtonLed.java"


# instance fields
.field mService:Landroid/os/IHardwareService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "hardware"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHardwareService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ButtonLed;->mService:Landroid/os/IHardwareService;

    .line 31
    return-void
.end method


# virtual methods
.method public enableButtonLed(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 41
    :try_start_0
    iget-object v0, p0, Landroid/os/ButtonLed;->mService:Landroid/os/IHardwareService;

    invoke-interface {v0, p1}, Landroid/os/IHardwareService;->enableButtonLed(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 44
    :goto_5
    return-void

    .line 42
    :catch_6
    move-exception v0

    goto :goto_5
.end method
