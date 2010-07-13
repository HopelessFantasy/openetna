.class Lcom/android/alarmclock/AlarmKlaxon$VibratorThread;
.super Ljava/lang/Thread;
.source "AlarmKlaxon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/alarmclock/AlarmKlaxon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibratorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/alarmclock/AlarmKlaxon;


# direct methods
.method private constructor <init>(Lcom/android/alarmclock/AlarmKlaxon;)V
    .registers 2
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/alarmclock/AlarmKlaxon$VibratorThread;->this$0:Lcom/android/alarmclock/AlarmKlaxon;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/alarmclock/AlarmKlaxon;Lcom/android/alarmclock/AlarmKlaxon$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/android/alarmclock/AlarmKlaxon$VibratorThread;-><init>(Lcom/android/alarmclock/AlarmKlaxon;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 311
    .local v2, now:J
    :goto_4
    iget-object v4, p0, Lcom/android/alarmclock/AlarmKlaxon$VibratorThread;->this$0:Lcom/android/alarmclock/AlarmKlaxon;

    iget-boolean v4, v4, Lcom/android/alarmclock/AlarmKlaxon;->mContinueVibrating:Z

    if-eqz v4, :cond_17

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 314
    .local v0, checkTime:J
    sub-long v4, v0, v2

    const-wide/32 v6, 0x1dc90

    cmp-long v4, v4, v6

    if-lez v4, :cond_18

    .line 325
    .end local v0           #checkTime:J
    :cond_17
    return-void

    .line 318
    .restart local v0       #checkTime:J
    :cond_18
    iget-object v4, p0, Lcom/android/alarmclock/AlarmKlaxon$VibratorThread;->this$0:Lcom/android/alarmclock/AlarmKlaxon;

    invoke-static {v4}, Lcom/android/alarmclock/AlarmKlaxon;->access$400(Lcom/android/alarmclock/AlarmKlaxon;)Landroid/os/Vibrator;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(J)V

    .line 319
    const-wide/16 v4, 0x7d0

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_4
.end method
