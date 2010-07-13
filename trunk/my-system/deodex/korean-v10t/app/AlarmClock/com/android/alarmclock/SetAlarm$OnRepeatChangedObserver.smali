.class Lcom/android/alarmclock/SetAlarm$OnRepeatChangedObserver;
.super Ljava/lang/Object;
.source "SetAlarm.java"

# interfaces
.implements Lcom/android/alarmclock/RepeatPreference$OnRepeatChangedObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/alarmclock/SetAlarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnRepeatChangedObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/alarmclock/SetAlarm;


# direct methods
.method private constructor <init>(Lcom/android/alarmclock/SetAlarm;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/alarmclock/SetAlarm$OnRepeatChangedObserver;->this$0:Lcom/android/alarmclock/SetAlarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/alarmclock/SetAlarm;Lcom/android/alarmclock/SetAlarm$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/alarmclock/SetAlarm$OnRepeatChangedObserver;-><init>(Lcom/android/alarmclock/SetAlarm;)V

    return-void
.end method


# virtual methods
.method public getDaysOfWeek()Lcom/android/alarmclock/Alarms$DaysOfWeek;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm$OnRepeatChangedObserver;->this$0:Lcom/android/alarmclock/SetAlarm;

    invoke-static {v0}, Lcom/android/alarmclock/SetAlarm;->access$100(Lcom/android/alarmclock/SetAlarm;)Lcom/android/alarmclock/Alarms$DaysOfWeek;

    move-result-object v0

    return-object v0
.end method

.method public onRepeatChanged(Lcom/android/alarmclock/Alarms$DaysOfWeek;)V
    .registers 4
    .parameter "daysOfWeek"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm$OnRepeatChangedObserver;->this$0:Lcom/android/alarmclock/SetAlarm;

    invoke-static {v0}, Lcom/android/alarmclock/SetAlarm;->access$100(Lcom/android/alarmclock/SetAlarm;)Lcom/android/alarmclock/Alarms$DaysOfWeek;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/alarmclock/Alarms$DaysOfWeek;->equals(Lcom/android/alarmclock/Alarms$DaysOfWeek;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 90
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm$OnRepeatChangedObserver;->this$0:Lcom/android/alarmclock/SetAlarm;

    invoke-static {v0}, Lcom/android/alarmclock/SetAlarm;->access$100(Lcom/android/alarmclock/SetAlarm;)Lcom/android/alarmclock/Alarms$DaysOfWeek;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/alarmclock/Alarms$DaysOfWeek;->set(Lcom/android/alarmclock/Alarms$DaysOfWeek;)V

    .line 91
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm$OnRepeatChangedObserver;->this$0:Lcom/android/alarmclock/SetAlarm;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/alarmclock/SetAlarm;->access$000(Lcom/android/alarmclock/SetAlarm;Z)V

    .line 93
    :cond_1b
    return-void
.end method
