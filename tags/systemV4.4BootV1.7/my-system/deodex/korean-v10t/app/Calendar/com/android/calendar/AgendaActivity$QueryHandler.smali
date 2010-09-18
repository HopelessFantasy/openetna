.class Lcom/android/calendar/AgendaActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AgendaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/AgendaActivity;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/calendar/AgendaActivity$QueryHandler;->this$0:Lcom/android/calendar/AgendaActivity;

    .line 104
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 105
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 6
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/calendar/AgendaActivity$QueryHandler;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v1}, Lcom/android/calendar/AgendaActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_26

    .line 112
    iget-object v1, p0, Lcom/android/calendar/AgendaActivity$QueryHandler;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-static {v1}, Lcom/android/calendar/AgendaActivity;->access$000(Lcom/android/calendar/AgendaActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/AgendaActivity$AgendaListView;

    .line 113
    .local v0, next:Lcom/android/calendar/AgendaActivity$AgendaListView;
    invoke-virtual {v0, p3}, Lcom/android/calendar/AgendaActivity$AgendaListView;->setCursor(Landroid/database/Cursor;)V

    .line 114
    iget-object v1, p0, Lcom/android/calendar/AgendaActivity$QueryHandler;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-static {v1}, Lcom/android/calendar/AgendaActivity;->access$000(Lcom/android/calendar/AgendaActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 115
    iget-object v1, p0, Lcom/android/calendar/AgendaActivity$QueryHandler;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-static {v1}, Lcom/android/calendar/AgendaActivity;->access$100(Lcom/android/calendar/AgendaActivity;)V

    .line 119
    .end local v0           #next:Lcom/android/calendar/AgendaActivity$AgendaListView;
    :goto_25
    return-void

    .line 117
    :cond_26
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_25
.end method
