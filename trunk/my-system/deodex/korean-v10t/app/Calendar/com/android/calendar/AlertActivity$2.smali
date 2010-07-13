.class Lcom/android/calendar/AlertActivity$2;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AlertActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AlertActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 17
    .parameter "v"

    .prologue
    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/32 v13, 0x493e0

    add-long v6, v11, v13

    .line 280
    .local v6, alarmTime:J
    iget-object v8, p0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    const-string v9, "notification"

    invoke-virtual {v8, v9}, Lcom/android/calendar/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 282
    .local v9, nm:Landroid/app/NotificationManager;
    const/4 v8, 0x0

    invoke-virtual {v9, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 283
    iget-object v8, p0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-static {v8}, Lcom/android/calendar/AlertActivity;->access$000(Lcom/android/calendar/AlertActivity;)Landroid/database/Cursor;

    move-result-object v8

    const/4 v9, -0x1

    invoke-interface {v8, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 284
    .end local v9           #nm:Landroid/app/NotificationManager;
    :goto_21
    iget-object v8, p0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-static {v8}, Lcom/android/calendar/AlertActivity;->access$000(Lcom/android/calendar/AlertActivity;)Landroid/database/Cursor;

    move-result-object v8

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_60

    .line 285
    iget-object v8, p0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-static {v8}, Lcom/android/calendar/AlertActivity;->access$000(Lcom/android/calendar/AlertActivity;)Landroid/database/Cursor;

    move-result-object v8

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 286
    .local v0, eventId:J
    iget-object v8, p0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-static {v8}, Lcom/android/calendar/AlertActivity;->access$000(Lcom/android/calendar/AlertActivity;)Landroid/database/Cursor;

    move-result-object v8

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 287
    .local v2, begin:J
    iget-object v8, p0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-static {v8}, Lcom/android/calendar/AlertActivity;->access$000(Lcom/android/calendar/AlertActivity;)Landroid/database/Cursor;

    move-result-object v8

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 292
    .local v4, end:J
    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/android/calendar/AlertActivity;->access$500(JJJJI)Landroid/content/ContentValues;

    move-result-object v10

    .line 296
    .local v10, values:Landroid/content/ContentValues;
    iget-object v8, p0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-static {v8}, Lcom/android/calendar/AlertActivity;->access$600(Lcom/android/calendar/AlertActivity;)Lcom/android/calendar/AlertActivity$QueryHandler;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v11, Landroid/provider/Calendar$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v10, v11, v10}, Lcom/android/calendar/AlertActivity$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_21

    .line 299
    .end local v0           #eventId:J
    .end local v2           #begin:J
    .end local v4           #end:J
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_60
    iget-object v8, p0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-static {v8}, Lcom/android/calendar/AlertActivity;->access$700(Lcom/android/calendar/AlertActivity;)V

    .line 301
    iget-object v8, p0, Lcom/android/calendar/AlertActivity$2;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-virtual {v8}, Lcom/android/calendar/AlertActivity;->finish()V

    .line 302
    return-void
.end method
