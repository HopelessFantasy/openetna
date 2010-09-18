.class Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$3;
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

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$3;->this$1:Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;

    iput p2, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$3;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 239
    iget-object v2, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$3;->this$1:Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;

    iget-object v2, v2, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/android/alarmclock/AlarmClock;

    invoke-static {v2}, Lcom/android/alarmclock/AlarmClock;->access$100(Lcom/android/alarmclock/AlarmClock;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 241
    const v2, 0x7f0a000b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 242
    .local v0, cbox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 243
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 244
    iget-object v2, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$3;->this$1:Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;

    iget-object v2, v2, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/android/alarmclock/AlarmClock;

    iget v3, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$3;->val$id:I

    invoke-static {v2, v3, v5}, Lcom/android/alarmclock/AlarmClock;->addToMap(Landroid/content/Context;IZ)V

    .line 267
    .end local v0           #cbox:Landroid/widget/CheckBox;
    :goto_27
    return-void

    .line 247
    .restart local v0       #cbox:Landroid/widget/CheckBox;
    :cond_28
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 248
    iget-object v2, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$3;->this$1:Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;

    iget-object v2, v2, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/android/alarmclock/AlarmClock;

    iget v3, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$3;->val$id:I

    invoke-static {v2, v3, v4}, Lcom/android/alarmclock/AlarmClock;->addToMap(Landroid/content/Context;IZ)V

    goto :goto_27

    .line 252
    .end local v0           #cbox:Landroid/widget/CheckBox;
    :cond_35
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$3;->this$1:Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;

    iget-object v2, v2, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/android/alarmclock/AlarmClock;

    const-class v3, Lcom/android/alarmclock/SetAlarm;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "alarm_id"

    iget v3, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$3;->val$id:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 254
    iget-object v2, p0, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter$3;->this$1:Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;

    iget-object v2, v2, Lcom/android/alarmclock/AlarmClock$AlarmTimeAdapter;->this$0:Lcom/android/alarmclock/AlarmClock;

    invoke-virtual {v2, v1, v4}, Lcom/android/alarmclock/AlarmClock;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_27
.end method
