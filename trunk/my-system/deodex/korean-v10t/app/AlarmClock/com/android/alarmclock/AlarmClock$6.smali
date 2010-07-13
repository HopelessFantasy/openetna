.class Lcom/android/alarmclock/AlarmClock$6;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/alarmclock/AlarmClock;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/alarmclock/AlarmClock;


# direct methods
.method constructor <init>(Lcom/android/alarmclock/AlarmClock;)V
    .registers 2
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/alarmclock/AlarmClock$6;->this$0:Lcom/android/alarmclock/AlarmClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    .line 420
    iget-object v4, p0, Lcom/android/alarmclock/AlarmClock$6;->this$0:Lcom/android/alarmclock/AlarmClock;

    invoke-static {v4}, Lcom/android/alarmclock/AlarmClock;->access$000(Lcom/android/alarmclock/AlarmClock;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    const/16 v5, 0x14

    if-ge v4, v5, :cond_48

    .line 422
    iget-object v4, p0, Lcom/android/alarmclock/AlarmClock$6;->this$0:Lcom/android/alarmclock/AlarmClock;

    invoke-virtual {v4}, Lcom/android/alarmclock/AlarmClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/alarmclock/Alarms;->addAlarm(Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v3

    .line 424
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 425
    .local v2, segment:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 427
    .local v1, newId:I
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/alarmclock/AlarmClock$6;->this$0:Lcom/android/alarmclock/AlarmClock;

    const-class v5, Lcom/android/alarmclock/SetAlarm;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 428
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "alarm_id"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 429
    iget-object v4, p0, Lcom/android/alarmclock/AlarmClock$6;->this$0:Lcom/android/alarmclock/AlarmClock;

    invoke-virtual {v4, v0, v6}, Lcom/android/alarmclock/AlarmClock;->startActivityForResult(Landroid/content/Intent;I)V

    .line 431
    sget-object v4, Lcom/android/alarmclock/AlarmClock;->ID_IN_DB:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #newId:I
    .end local v2           #segment:Ljava/lang/String;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_48
    return-void
.end method
