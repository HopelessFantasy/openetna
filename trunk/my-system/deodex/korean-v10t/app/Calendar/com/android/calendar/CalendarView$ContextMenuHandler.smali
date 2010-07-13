.class Lcom/android/calendar/CalendarView$ContextMenuHandler;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextMenuHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/CalendarView;)V
    .registers 2
    .parameter

    .prologue
    .line 2656
    iput-object p1, p0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/CalendarView;Lcom/android/calendar/CalendarView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2656
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView$ContextMenuHandler;-><init>(Lcom/android/calendar/CalendarView;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 23
    .parameter "item"

    .prologue
    .line 2658
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_1be

    .line 2719
    :pswitch_7
    const/4 v4, 0x0

    .line 2722
    :goto_8
    return v4

    .line 2660
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/CalendarView;->access$800(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/Event;

    move-result-object v4

    if-eqz v4, :cond_79

    .line 2661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/CalendarView;->access$800(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/Event;

    move-result-object v4

    iget-wide v9, v4, Lcom/android/calendar/Event;->id:J

    .line 2662
    .local v9, id:J
    sget-object v4, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 2663
    .local v14, eventUri:Landroid/net/Uri;
    new-instance v15, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v15, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2664
    .local v15, intent:Landroid/content/Intent;
    invoke-virtual {v15, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/CalendarView;->access$900(Lcom/android/calendar/CalendarView;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2666
    const-string v4, "beginTime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/calendar/CalendarView;->access$800(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/Event;

    move-result-object v5

    move-object v0, v5

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide/from16 v19, v0

    move-object v0, v15

    move-object v1, v4

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2667
    const-string v4, "endTime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/calendar/CalendarView;->access$800(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/Event;

    move-result-object v5

    move-object v0, v5

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide/from16 v19, v0

    move-object v0, v15

    move-object v1, v4

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v4, v15}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    .line 2722
    .end local v9           #id:J
    .end local v14           #eventUri:Landroid/net/Uri;
    .end local v15           #intent:Landroid/content/Intent;
    :cond_79
    :goto_79
    const/4 v4, 0x1

    goto :goto_8

    .line 2673
    :pswitch_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/CalendarView;->access$800(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/Event;

    move-result-object v4

    if-eqz v4, :cond_79

    .line 2674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/CalendarView;->access$800(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/Event;

    move-result-object v4

    iget-wide v9, v4, Lcom/android/calendar/Event;->id:J

    .line 2675
    .restart local v9       #id:J
    sget-object v4, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 2676
    .restart local v14       #eventUri:Landroid/net/Uri;
    new-instance v15, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v15, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2677
    .restart local v15       #intent:Landroid/content/Intent;
    invoke-virtual {v15, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/CalendarView;->access$1000(Lcom/android/calendar/CalendarView;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/calendar/EditEvent;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2679
    const-string v4, "beginTime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/calendar/CalendarView;->access$800(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/Event;

    move-result-object v5

    move-object v0, v5

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide/from16 v19, v0

    move-object v0, v15

    move-object v1, v4

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2680
    const-string v4, "endTime"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/calendar/CalendarView;->access$800(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/Event;

    move-result-object v5

    move-object v0, v5

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide/from16 v19, v0

    move-object v0, v15

    move-object v1, v4

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v4, v15}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_79

    .line 2686
    .end local v9           #id:J
    .end local v14           #eventUri:Landroid/net/Uri;
    .end local v15           #intent:Landroid/content/Intent;
    :pswitch_ec
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v17

    .line 2687
    .local v17, startMillis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const-class v5, Lcom/android/calendar/DayActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-wide/from16 v2, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/MenuHelper;->switchTo(Landroid/app/Activity;Ljava/lang/String;J)V

    .line 2688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v4}, Lcom/android/calendar/CalendarActivity;->finish()V

    goto/16 :goto_79

    .line 2692
    .end local v17           #startMillis:J
    :pswitch_115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v17

    .line 2693
    .restart local v17       #startMillis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    const-class v5, Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-wide/from16 v2, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/MenuHelper;->switchTo(Landroid/app/Activity;Ljava/lang/String;J)V

    .line 2694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v4}, Lcom/android/calendar/CalendarActivity;->finish()V

    goto/16 :goto_79

    .line 2698
    .end local v17           #startMillis:J
    :pswitch_13e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v17

    .line 2699
    .restart local v17       #startMillis:J
    const-wide/32 v19, 0x36ee80

    add-long v12, v17, v19

    .line 2700
    .local v12, endMillis:J
    new-instance v15, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v15, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2701
    .restart local v15       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/CalendarView;->access$1100(Lcom/android/calendar/CalendarView;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/android/calendar/EditEvent;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2702
    const-string v4, "beginTime"

    move-object v0, v15

    move-object v1, v4

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2703
    const-string v4, "endTime"

    invoke-virtual {v15, v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2704
    const-string v4, "allDay"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/calendar/CalendarView;->mSelectionAllDay:Z

    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v4, v15}, Lcom/android/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_79

    .line 2709
    .end local v12           #endMillis:J
    .end local v15           #intent:Landroid/content/Intent;
    .end local v17           #startMillis:J
    :pswitch_18b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/CalendarView;->access$800(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/Event;

    move-result-object v4

    if-eqz v4, :cond_79

    .line 2710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/CalendarView;->access$800(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/Event;

    move-result-object v16

    .line 2711
    .local v16, selectedEvent:Lcom/android/calendar/Event;
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/calendar/Event;->startMillis:J

    move-wide v5, v0

    .line 2712
    .local v5, begin:J
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/calendar/Event;->endMillis:J

    move-wide v7, v0

    .line 2713
    .local v7, end:J
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/calendar/Event;->id:J

    move-wide v9, v0

    .line 2714
    .restart local v9       #id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/CalendarView$ContextMenuHandler;->this$0:Lcom/android/calendar/CalendarView;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/CalendarView;->access$1200(Lcom/android/calendar/CalendarView;)Lcom/android/calendar/DeleteEventHelper;

    move-result-object v4

    const/4 v11, -0x1

    invoke-virtual/range {v4 .. v11}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJI)V

    goto/16 :goto_79

    .line 2658
    nop

    :pswitch_data_1be
    .packed-switch 0x2
        :pswitch_115
        :pswitch_ec
        :pswitch_7
        :pswitch_9
        :pswitch_13e
        :pswitch_7b
        :pswitch_18b
    .end packed-switch
.end method
