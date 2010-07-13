.class Lcom/android/calendar/SelectCalendarsActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SelectCalendarsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/SelectCalendarsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/SelectCalendarsActivity;


# direct methods
.method public constructor <init>(Lcom/android/calendar/SelectCalendarsActivity;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/calendar/SelectCalendarsActivity$QueryHandler;->this$0:Lcom/android/calendar/SelectCalendarsActivity;

    .line 231
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 232
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 7
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity$QueryHandler;->this$0:Lcom/android/calendar/SelectCalendarsActivity;

    invoke-virtual {v0}, Lcom/android/calendar/SelectCalendarsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 241
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity$QueryHandler;->this$0:Lcom/android/calendar/SelectCalendarsActivity;

    invoke-virtual {v0}, Lcom/android/calendar/SelectCalendarsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 242
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity$QueryHandler;->this$0:Lcom/android/calendar/SelectCalendarsActivity;

    invoke-virtual {v0, p3}, Lcom/android/calendar/SelectCalendarsActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 243
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 260
    :cond_1b
    :goto_1b
    return-void

    .line 245
    :cond_1c
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1b

    .line 253
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity$QueryHandler;->this$0:Lcom/android/calendar/SelectCalendarsActivity;

    invoke-static {v0}, Lcom/android/calendar/SelectCalendarsActivity;->access$000(Lcom/android/calendar/SelectCalendarsActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 254
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity$QueryHandler;->this$0:Lcom/android/calendar/SelectCalendarsActivity;

    iget-object v1, p0, Lcom/android/calendar/SelectCalendarsActivity$QueryHandler;->this$0:Lcom/android/calendar/SelectCalendarsActivity;

    invoke-static {v1}, Lcom/android/calendar/SelectCalendarsActivity;->access$000(Lcom/android/calendar/SelectCalendarsActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/SelectCalendarsActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 256
    :cond_35
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity$QueryHandler;->this$0:Lcom/android/calendar/SelectCalendarsActivity;

    invoke-static {v0, p3}, Lcom/android/calendar/SelectCalendarsActivity;->access$002(Lcom/android/calendar/SelectCalendarsActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 257
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity$QueryHandler;->this$0:Lcom/android/calendar/SelectCalendarsActivity;

    invoke-virtual {v0, p3}, Lcom/android/calendar/SelectCalendarsActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 258
    iget-object v0, p0, Lcom/android/calendar/SelectCalendarsActivity$QueryHandler;->this$0:Lcom/android/calendar/SelectCalendarsActivity;

    invoke-static {v0}, Lcom/android/calendar/SelectCalendarsActivity;->access$200(Lcom/android/calendar/SelectCalendarsActivity;)Lcom/android/calendar/SelectCalendarsAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/calendar/SelectCalendarsAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_1b
.end method
