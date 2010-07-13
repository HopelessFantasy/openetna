.class Lcom/android/alarmclock/SetAlarm$AlarmsChangeObserver;
.super Landroid/database/ContentObserver;
.source "SetAlarm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/alarmclock/SetAlarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmsChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/alarmclock/SetAlarm;


# direct methods
.method public constructor <init>(Lcom/android/alarmclock/SetAlarm;)V
    .registers 3
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/alarmclock/SetAlarm$AlarmsChangeObserver;->this$0:Lcom/android/alarmclock/SetAlarm;

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 102
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .parameter "selfChange"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm$AlarmsChangeObserver;->this$0:Lcom/android/alarmclock/SetAlarm;

    invoke-virtual {v0}, Lcom/android/alarmclock/SetAlarm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/alarmclock/SetAlarm$AlarmsChangeObserver;->this$0:Lcom/android/alarmclock/SetAlarm;

    invoke-static {}, Lcom/android/alarmclock/SetAlarm;->access$200()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/alarmclock/Alarms;->getAlarm(Landroid/content/ContentResolver;Lcom/android/alarmclock/Alarms$AlarmSettings;I)V

    .line 106
    return-void
.end method
