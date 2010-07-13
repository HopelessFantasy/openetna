.class public Lcom/android/alarmclock/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# static fields
.field private static final STALE_WINDOW:I = 0x708


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v11, "alarm_label"

    const-string v10, "alarm_id"

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 36
    .local v3, now:J
    const-string v7, "alarm_id"

    const/4 v7, 0x0

    invoke-virtual {p2, v10, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 37
    .local v2, id:I
    const-string v7, "alarm_time"

    const-wide/16 v8, 0x0

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 41
    .local v5, setFor:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AlarmReceiver.onReceive() id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " setFor "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " now "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 44
    const-wide/32 v7, 0x1b7740

    add-long/2addr v7, v5

    cmp-long v7, v3, v7

    if-lez v7, :cond_4a

    .line 65
    :goto_49
    return-void

    .line 55
    :cond_4a
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v7, Lcom/android/alarmclock/AlarmAlert;

    invoke-direct {v0, p1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, fireAlarm:Landroid/content/Intent;
    const-string v7, "alarm_id"

    invoke-virtual {v0, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    const-string v7, "alarm_label"

    const-string v7, "alarm_label"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const/high16 v7, 0x1004

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_49
.end method
