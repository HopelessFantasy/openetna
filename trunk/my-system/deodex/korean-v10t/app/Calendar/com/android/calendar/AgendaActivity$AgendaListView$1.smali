.class Lcom/android/calendar/AgendaActivity$AgendaListView$1;
.super Ljava/lang/Object;
.source "AgendaActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaActivity$AgendaListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/AgendaActivity$AgendaListView;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaActivity$AgendaListView;)V
    .registers 2
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/calendar/AgendaActivity$AgendaListView$1;->this$1:Lcom/android/calendar/AgendaActivity$AgendaListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter "a"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 162
    const-wide/16 v4, -0x1

    cmp-long v4, p4, v4

    if-eqz v4, :cond_5a

    .line 164
    iget-object v4, p0, Lcom/android/calendar/AgendaActivity$AgendaListView$1;->this$1:Lcom/android/calendar/AgendaActivity$AgendaListView;

    invoke-static {v4}, Lcom/android/calendar/AgendaActivity$AgendaListView;->access$300(Lcom/android/calendar/AgendaActivity$AgendaListView;)Landroid/database/Cursor;

    move-result-object v4

    iget-object v5, p0, Lcom/android/calendar/AgendaActivity$AgendaListView$1;->this$1:Lcom/android/calendar/AgendaActivity$AgendaListView;

    invoke-static {v5}, Lcom/android/calendar/AgendaActivity$AgendaListView;->access$200(Lcom/android/calendar/AgendaActivity$AgendaListView;)Lcom/android/calendar/AgendaByDayAdapter;

    move-result-object v5

    invoke-virtual {v5, p3}, Lcom/android/calendar/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 165
    iget-object v4, p0, Lcom/android/calendar/AgendaActivity$AgendaListView$1;->this$1:Lcom/android/calendar/AgendaActivity$AgendaListView;

    invoke-static {v4}, Lcom/android/calendar/AgendaActivity$AgendaListView;->access$300(Lcom/android/calendar/AgendaActivity$AgendaListView;)Landroid/database/Cursor;

    move-result-object v4

    const/16 v5, 0x9

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 166
    .local v0, eventId:J
    sget-object v4, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 167
    .local v3, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 168
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "beginTime"

    iget-object v5, p0, Lcom/android/calendar/AgendaActivity$AgendaListView$1;->this$1:Lcom/android/calendar/AgendaActivity$AgendaListView;

    invoke-static {v5}, Lcom/android/calendar/AgendaActivity$AgendaListView;->access$300(Lcom/android/calendar/AgendaActivity$AgendaListView;)Landroid/database/Cursor;

    move-result-object v5

    const/4 v6, 0x7

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 169
    const-string v4, "endTime"

    iget-object v5, p0, Lcom/android/calendar/AgendaActivity$AgendaListView$1;->this$1:Lcom/android/calendar/AgendaActivity$AgendaListView;

    invoke-static {v5}, Lcom/android/calendar/AgendaActivity$AgendaListView;->access$300(Lcom/android/calendar/AgendaActivity$AgendaListView;)Landroid/database/Cursor;

    move-result-object v5

    const/16 v6, 0x8

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 170
    iget-object v4, p0, Lcom/android/calendar/AgendaActivity$AgendaListView$1;->this$1:Lcom/android/calendar/AgendaActivity$AgendaListView;

    iget-object v4, v4, Lcom/android/calendar/AgendaActivity$AgendaListView;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v4, v2}, Lcom/android/calendar/AgendaActivity;->startActivity(Landroid/content/Intent;)V

    .line 172
    .end local v0           #eventId:J
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_5a
    return-void
.end method
