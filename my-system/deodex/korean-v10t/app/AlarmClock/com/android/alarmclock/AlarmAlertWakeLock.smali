.class Lcom/android/alarmclock/AlarmAlertWakeLock;
.super Ljava/lang/Object;
.source "AlarmAlertWakeLock.java"


# static fields
.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acquire(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 31
    const-string v1, "Acquiring wake lock"

    invoke-static {v1}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 32
    sget-object v1, Lcom/android/alarmclock/AlarmAlertWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_e

    .line 33
    sget-object v1, Lcom/android/alarmclock/AlarmAlertWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 36
    :cond_e
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 39
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "AlarmClock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/alarmclock/AlarmAlertWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 43
    sget-object v1, Lcom/android/alarmclock/AlarmAlertWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 44
    return-void
.end method

.method static release()V
    .registers 1

    .prologue
    .line 47
    const-string v0, "Releasing wake lock"

    invoke-static {v0}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/android/alarmclock/AlarmAlertWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_11

    .line 49
    sget-object v0, Lcom/android/alarmclock/AlarmAlertWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/android/alarmclock/AlarmAlertWakeLock;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 52
    :cond_11
    return-void
.end method
