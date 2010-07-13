.class public Lcom/android/providers/calendar/CalendarReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CalendarReceiver.java"


# static fields
.field static final SCHEDULE:Ljava/lang/String; = "com.android.providers.calendar.SCHEDULE_ALARM"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 42
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v4, "calendar"

    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 43
    .local v2, icp:Landroid/content/IContentProvider;
    invoke-static {v2}, Landroid/content/ContentProvider;->coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;

    move-result-object v3

    check-cast v3, Lcom/android/providers/calendar/CalendarProvider;

    .line 45
    .local v3, provider:Lcom/android/providers/calendar/CalendarProvider;
    const-string v4, "com.android.providers.calendar.SCHEDULE_ALARM"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 46
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/providers/calendar/CalendarProvider;->scheduleNextAlarm(Z)V

    .line 50
    :cond_20
    :goto_20
    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 51
    return-void

    .line 47
    :cond_24
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 48
    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarProvider;->bootCompleted()V

    goto :goto_20
.end method
