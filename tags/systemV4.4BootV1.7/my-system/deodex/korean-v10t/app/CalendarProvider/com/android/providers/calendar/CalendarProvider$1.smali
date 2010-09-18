.class Lcom/android/providers/calendar/CalendarProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "CalendarProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/calendar/CalendarProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/calendar/CalendarProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarProvider$1;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const-string v4, "CalendarProvider"

    .line 289
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, action:Ljava/lang/String;
    const-string v1, "CalendarProvider"

    const/4 v1, 0x3

    invoke-static {v4, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 291
    const-string v1, "CalendarProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_28
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 294
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider$1;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    invoke-static {v1}, Lcom/android/providers/calendar/CalendarProvider;->access$100(Lcom/android/providers/calendar/CalendarProvider;)V

    .line 295
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider$1;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    invoke-virtual {v1, v3}, Lcom/android/providers/calendar/CalendarProvider;->scheduleNextAlarm(Z)V

    .line 303
    :cond_3a
    :goto_3a
    return-void

    .line 296
    :cond_3b
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 298
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider$1;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    invoke-static {v1}, Lcom/android/providers/calendar/CalendarProvider;->access$100(Lcom/android/providers/calendar/CalendarProvider;)V

    .line 299
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider$1;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    invoke-virtual {v1, v3}, Lcom/android/providers/calendar/CalendarProvider;->scheduleNextAlarm(Z)V

    goto :goto_3a

    .line 300
    :cond_4e
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 301
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider$1;->this$0:Lcom/android/providers/calendar/CalendarProvider;

    invoke-virtual {v1, v3}, Lcom/android/providers/calendar/CalendarProvider;->scheduleNextAlarm(Z)V

    goto :goto_3a
.end method
