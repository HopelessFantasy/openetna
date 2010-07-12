.class Landroid/hardware/SensorManager$SensorThread;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensorThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;
    }
.end annotation


# instance fields
.field mThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    invoke-static {}, Landroid/hardware/SensorManager;->access$000()[F

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x42c8

    aput v2, v0, v1

    .line 289
    invoke-static {}, Landroid/hardware/SensorManager;->sensors_data_init()I

    .line 290
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 1

    .prologue
    .line 294
    invoke-static {}, Landroid/hardware/SensorManager;->sensors_data_uninit()I

    .line 295
    return-void
.end method

.method startLocked(Landroid/hardware/ISensorService;)V
    .registers 7
    .parameter "service"

    .prologue
    .line 300
    :try_start_0
    iget-object v2, p0, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;

    if-nez v2, :cond_1f

    .line 301
    invoke-interface {p1}, Landroid/hardware/ISensorService;->getDataChannel()Landroid/os/Bundle;

    move-result-object v0

    .line 302
    .local v0, dataChannel:Landroid/os/Bundle;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;

    invoke-direct {v3, p0, v0}, Landroid/hardware/SensorManager$SensorThread$SensorThreadRunnable;-><init>(Landroid/hardware/SensorManager$SensorThread;Landroid/os/Bundle;)V

    const-class v4, Landroid/hardware/SensorManager$SensorThread;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;

    .line 304
    iget-object v2, p0, Landroid/hardware/SensorManager$SensorThread;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 309
    .end local v0           #dataChannel:Landroid/os/Bundle;
    :cond_1f
    :goto_1f
    return-void

    .line 306
    :catch_20
    move-exception v2

    move-object v1, v2

    .line 307
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "SensorManager"

    const-string v3, "RemoteException in startLocked: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method
