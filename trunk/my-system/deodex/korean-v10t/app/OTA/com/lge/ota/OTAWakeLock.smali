.class Lcom/lge/ota/OTAWakeLock;
.super Ljava/lang/Object;
.source "OTAWakeLock.java"


# static fields
.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acquire(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const-string v3, "OTAWakeLock"

    .line 13
    const-string v1, "OTAWakeLock"

    const-string v1, "Acquiring wake lock"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    sget-object v1, Lcom/lge/ota/OTAWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_12

    .line 15
    sget-object v1, Lcom/lge/ota/OTAWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 18
    :cond_12
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 21
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "OTAWakeLock"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/lge/ota/OTAWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 25
    sget-object v1, Lcom/lge/ota/OTAWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 26
    return-void
.end method

.method static release()V
    .registers 2

    .prologue
    .line 29
    const-string v0, "OTAWakeLock"

    const-string v1, "Releasing wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sget-object v0, Lcom/lge/ota/OTAWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_13

    .line 31
    sget-object v0, Lcom/lge/ota/OTAWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/ota/OTAWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 34
    :cond_13
    return-void
.end method
