.class public Lcom/android/alarmclock/AlarmInitReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmInitReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v1, :cond_10

    .line 35
    const-string v1, "AlarmInitReceiver: FAILURE unable to get content resolver.  Alarms inactive."

    invoke-static {v1}, Lcom/android/alarmclock/Log;->e(Ljava/lang/String;)V

    .line 43
    :goto_f
    return-void

    .line 38
    :cond_10
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 39
    invoke-static {p1}, Lcom/android/alarmclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;)I

    .line 40
    invoke-static {p1}, Lcom/android/alarmclock/Alarms;->disableExpiredAlarms(Landroid/content/Context;)V

    .line 42
    :cond_1e
    invoke-static {p1}, Lcom/android/alarmclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    goto :goto_f
.end method
