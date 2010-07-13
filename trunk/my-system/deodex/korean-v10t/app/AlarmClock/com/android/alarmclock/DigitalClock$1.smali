.class Lcom/android/alarmclock/DigitalClock$1;
.super Landroid/content/BroadcastReceiver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/alarmclock/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/alarmclock/DigitalClock;


# direct methods
.method constructor <init>(Lcom/android/alarmclock/DigitalClock;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/alarmclock/DigitalClock$1;->this$0:Lcom/android/alarmclock/DigitalClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/alarmclock/DigitalClock$1;->this$0:Lcom/android/alarmclock/DigitalClock;

    invoke-static {v0}, Lcom/android/alarmclock/DigitalClock;->access$000(Lcom/android/alarmclock/DigitalClock;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 63
    iget-object v0, p0, Lcom/android/alarmclock/DigitalClock$1;->this$0:Lcom/android/alarmclock/DigitalClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/alarmclock/DigitalClock;->access$102(Lcom/android/alarmclock/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 65
    :cond_1d
    iget-object v0, p0, Lcom/android/alarmclock/DigitalClock$1;->this$0:Lcom/android/alarmclock/DigitalClock;

    invoke-static {v0}, Lcom/android/alarmclock/DigitalClock;->access$200(Lcom/android/alarmclock/DigitalClock;)V

    .line 66
    return-void
.end method
