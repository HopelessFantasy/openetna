.class Lcom/lge/hiddenmenu/device_test/CameraPreviewWakeLock;
.super Ljava/lang/Object;
.source "CameraPreview.java"


# static fields
.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acquire(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 118
    sget-object v1, Lcom/lge/hiddenmenu/device_test/CameraPreviewWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_9

    .line 119
    sget-object v1, Lcom/lge/hiddenmenu/device_test/CameraPreviewWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 122
    :cond_9
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 125
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "CameraPreview"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/lge/hiddenmenu/device_test/CameraPreviewWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 129
    sget-object v1, Lcom/lge/hiddenmenu/device_test/CameraPreviewWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 130
    return-void
.end method

.method static release()V
    .registers 1

    .prologue
    .line 134
    sget-object v0, Lcom/lge/hiddenmenu/device_test/CameraPreviewWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_c

    .line 135
    sget-object v0, Lcom/lge/hiddenmenu/device_test/CameraPreviewWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 136
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/hiddenmenu/device_test/CameraPreviewWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 138
    :cond_c
    return-void
.end method
