.class Lcom/android/alarmclock/AlarmClock$4;
.super Ljava/lang/Object;
.source "AlarmClock.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 365
    iput-object p1, p0, Lcom/android/alarmclock/AlarmClock$4;->this$0:Lcom/android/alarmclock/AlarmClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 12
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v7, 0x0

    .line 368
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_a

    .line 370
    packed-switch p2, :pswitch_data_50

    .line 389
    .end local p1
    :cond_a
    :goto_a
    return v7

    .line 373
    .restart local p1
    :pswitch_b
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 374
    .local v5, v:Landroid/widget/LinearLayout;
    if-eqz v5, :cond_a

    .line 376
    const v6, 0x7f0a000b

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 377
    .local v1, cb1:Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-nez v6, :cond_4d

    const/4 v6, 0x1

    :goto_27
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 378
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    .line 379
    .local v3, isChecked:Z
    check-cast p1, Landroid/widget/ListView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v4

    .line 380
    .local v4, position:I
    iget-object v6, p0, Lcom/android/alarmclock/AlarmClock$4;->this$0:Lcom/android/alarmclock/AlarmClock;

    invoke-static {v6}, Lcom/android/alarmclock/AlarmClock;->access$1100(Lcom/android/alarmclock/AlarmClock;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 381
    iget-object v6, p0, Lcom/android/alarmclock/AlarmClock$4;->this$0:Lcom/android/alarmclock/AlarmClock;

    invoke-static {v6}, Lcom/android/alarmclock/AlarmClock;->access$1100(Lcom/android/alarmclock/AlarmClock;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 382
    .local v2, id:I
    iget-object v6, p0, Lcom/android/alarmclock/AlarmClock$4;->this$0:Lcom/android/alarmclock/AlarmClock;

    invoke-static {v6, v2, v3}, Lcom/android/alarmclock/AlarmClock;->addToMap(Landroid/content/Context;IZ)V

    goto :goto_a

    .end local v2           #id:I
    .end local v3           #isChecked:Z
    .end local v4           #position:I
    .restart local p1
    :cond_4d
    move v6, v7

    .line 377
    goto :goto_27

    .line 370
    nop

    :pswitch_data_50
    .packed-switch 0x42
        :pswitch_b
    .end packed-switch
.end method
