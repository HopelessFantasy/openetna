.class Lcom/android/calendar/AlertActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AlertActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/AlertActivity;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/calendar/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/AlertActivity;

    .line 118
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 119
    return-void
.end method


# virtual methods
.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .registers 19
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 138
    if-eqz p3, :cond_53

    .line 139
    move-object/from16 v0, p2

    check-cast v0, Landroid/content/ContentValues;

    move-object v11, v0

    .line 141
    .local v11, values:Landroid/content/ContentValues;
    const-string v12, "begin"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 142
    .local v5, begin:J
    const-string v12, "end"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 143
    .local v7, end:J
    const-string v12, "alarmTime"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 146
    .local v3, alarmTime:J
    new-instance v9, Landroid/content/Intent;

    const-string v12, "android.intent.action.EVENT_REMINDER"

    invoke-direct {v9, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v9, intent:Landroid/content/Intent;
    move-object v0, v9

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 148
    const-string v12, "beginTime"

    invoke-virtual {v9, v12, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 149
    const-string v12, "endTime"

    invoke-virtual {v9, v12, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 151
    iget-object v12, p0, Lcom/android/calendar/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/AlertActivity;

    const/4 v13, 0x0

    const/high16 v14, 0x1000

    invoke-static {v12, v13, v9, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 153
    .local v10, sender:Landroid/app/PendingIntent;
    iget-object v12, p0, Lcom/android/calendar/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/AlertActivity;

    const-string v13, "alarm"

    invoke-virtual {v12, v13}, Lcom/android/calendar/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 154
    .local v2, alarmManager:Landroid/app/AlarmManager;
    const/4 v12, 0x0

    invoke-virtual {v2, v12, v3, v4, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 156
    .end local v2           #alarmManager:Landroid/app/AlarmManager;
    .end local v3           #alarmTime:J
    .end local v5           #begin:J
    .end local v7           #end:J
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #sender:Landroid/app/PendingIntent;
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_53
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 6
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x1

    .line 124
    iget-object v0, p0, Lcom/android/calendar/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-virtual {v0}, Lcom/android/calendar/AlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 125
    iget-object v0, p0, Lcom/android/calendar/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-static {v0, p3}, Lcom/android/calendar/AlertActivity;->access$002(Lcom/android/calendar/AlertActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 126
    iget-object v0, p0, Lcom/android/calendar/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-static {v0}, Lcom/android/calendar/AlertActivity;->access$100(Lcom/android/calendar/AlertActivity;)Lcom/android/calendar/AlertAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/calendar/AlertAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 129
    iget-object v0, p0, Lcom/android/calendar/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-static {v0}, Lcom/android/calendar/AlertActivity;->access$200(Lcom/android/calendar/AlertActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/calendar/AlertActivity$QueryHandler;->this$0:Lcom/android/calendar/AlertActivity;

    invoke-static {v0}, Lcom/android/calendar/AlertActivity;->access$300(Lcom/android/calendar/AlertActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    :goto_29
    return-void

    .line 132
    :cond_2a
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_29
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .registers 4
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 161
    return-void
.end method
