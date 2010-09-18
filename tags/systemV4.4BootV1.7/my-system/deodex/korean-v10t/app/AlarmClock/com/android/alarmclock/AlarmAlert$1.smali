.class Lcom/android/alarmclock/AlarmAlert$1;
.super Ljava/lang/Object;
.source "AlarmAlert.java"

# interfaces
.implements Lcom/android/alarmclock/AlarmKlaxon$KillerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/alarmclock/AlarmAlert;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/alarmclock/AlarmAlert;


# direct methods
.method constructor <init>(Lcom/android/alarmclock/AlarmAlert;)V
    .registers 2
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/alarmclock/AlarmAlert$1;->this$0:Lcom/android/alarmclock/AlarmAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKilled()V
    .registers 3

    .prologue
    .line 108
    invoke-static {}, Lcom/android/alarmclock/Alarms;->getSnoozeCount()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_15

    .line 110
    iget-object v0, p0, Lcom/android/alarmclock/AlarmAlert$1;->this$0:Lcom/android/alarmclock/AlarmAlert;

    invoke-static {v0}, Lcom/android/alarmclock/AlarmAlert;->access$000(Lcom/android/alarmclock/AlarmAlert;)V

    .line 111
    invoke-static {}, Lcom/android/alarmclock/Alarms;->incrementSnoozeCount()V

    .line 112
    iget-object v0, p0, Lcom/android/alarmclock/AlarmAlert$1;->this$0:Lcom/android/alarmclock/AlarmAlert;

    invoke-virtual {v0}, Lcom/android/alarmclock/AlarmAlert;->finish()V

    .line 138
    :goto_14
    return-void

    .line 119
    :cond_15
    iget-object v0, p0, Lcom/android/alarmclock/AlarmAlert$1;->this$0:Lcom/android/alarmclock/AlarmAlert;

    invoke-static {v0}, Lcom/android/alarmclock/AlarmAlert;->access$100(Lcom/android/alarmclock/AlarmAlert;)V

    .line 120
    iget-object v0, p0, Lcom/android/alarmclock/AlarmAlert$1;->this$0:Lcom/android/alarmclock/AlarmAlert;

    invoke-virtual {v0}, Lcom/android/alarmclock/AlarmAlert;->finish()V

    goto :goto_14
.end method
