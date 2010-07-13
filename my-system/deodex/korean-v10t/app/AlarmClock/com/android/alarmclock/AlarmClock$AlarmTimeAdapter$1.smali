.class Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$1;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;

.field final synthetic val$daysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;

.field final synthetic val$hour:I

.field final synthetic val$id:I

.field final synthetic val$minutes:I


# direct methods
.method constructor <init>(Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;IIILcom/android/alarmclock/Alarms$DaysOfWeek;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$1;->this$1:Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;

    iput p2, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$1;->val$id:I

    iput p3, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$1;->val$hour:I

    iput p4, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$1;->val$minutes:I

    iput-object p5, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$1;->val$daysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    .line 184
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 185
    .local v0, isChecked:Z
    if-eqz v0, :cond_28

    .line 187
    iget-object v2, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$1;->this$1:Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;

    iget-object v2, v2, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/android/alarmclock/AlarmClock;

    invoke-static {v2}, Lcom/android/alarmclock/Alarms;->setSnoozeID(Landroid/content/Context;)V

    .line 204
    :goto_f
    iget-object v2, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$1;->this$1:Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;

    iget-object v2, v2, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/android/alarmclock/AlarmClock;

    iget v3, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$1;->val$id:I

    invoke-static {v2, v3, v0}, Lcom/android/alarmclock/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    .line 205
    if-eqz v0, :cond_27

    .line 206
    iget-object v2, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$1;->this$1:Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;

    iget-object v2, v2, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/android/alarmclock/AlarmClock;

    iget v3, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$1;->val$hour:I

    iget v4, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$1;->val$minutes:I

    iget-object v5, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$1;->val$daysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;

    invoke-static {v2, v3, v4, v5}, Lcom/android/alarmclock/SetAlarm;->popAlarmSetToast(Landroid/content/Context;IILcom/android/alarmclock/Alarms$DaysOfWeek;)V

    .line 209
    :cond_27
    return-void

    .line 191
    :cond_28
    iget-object v2, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$1;->this$1:Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;

    iget-object v2, v2, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/android/alarmclock/AlarmClock;

    invoke-static {v2}, Lcom/android/alarmclock/Alarms;->getSnoozeAlarmId(Landroid/content/Context;)I

    move-result v1

    .line 192
    .local v1, sid:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AlarmClock] sid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$1;->val$id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 193
    iget v2, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$1;->val$id:I

    if-ne v1, v2, :cond_61

    .line 195
    invoke-static {}, Lcom/android/alarmclock/Alarms;->resetSnoozeCount()V

    .line 196
    iget-object v2, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$1;->this$1:Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;

    iget-object v2, v2, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/android/alarmclock/AlarmClock;

    invoke-static {v2}, Lcom/android/alarmclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;)I

    goto :goto_f

    .line 200
    :cond_61
    iget-object v2, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$1;->this$1:Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;

    iget-object v2, v2, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/android/alarmclock/AlarmClock;

    invoke-static {v2}, Lcom/android/alarmclock/Alarms;->setSnoozeID(Landroid/content/Context;)V

    goto :goto_f
.end method
