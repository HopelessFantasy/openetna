.class Lcom/android/calendar/CalendarView$2;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/CalendarView;->reloadEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarView;

.field final synthetic val$events:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarView;Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/android/calendar/CalendarView$2;->this$0:Lcom/android/calendar/CalendarView;

    iput-object p2, p0, Lcom/android/calendar/CalendarView$2;->val$events:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1150
    iget-object v0, p0, Lcom/android/calendar/CalendarView$2;->this$0:Lcom/android/calendar/CalendarView;

    iget-object v1, p0, Lcom/android/calendar/CalendarView$2;->val$events:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/calendar/CalendarView;->access$202(Lcom/android/calendar/CalendarView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1151
    iget-object v0, p0, Lcom/android/calendar/CalendarView$2;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v0, v2}, Lcom/android/calendar/CalendarView;->access$302(Lcom/android/calendar/CalendarView;Z)Z

    .line 1152
    iget-object v0, p0, Lcom/android/calendar/CalendarView$2;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v0, v2}, Lcom/android/calendar/CalendarView;->access$402(Lcom/android/calendar/CalendarView;Z)Z

    .line 1153
    iget-object v0, p0, Lcom/android/calendar/CalendarView$2;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v0, v2}, Lcom/android/calendar/CalendarView;->access$502(Lcom/android/calendar/CalendarView;Z)Z

    .line 1154
    iget-object v0, p0, Lcom/android/calendar/CalendarView$2;->this$0:Lcom/android/calendar/CalendarView;

    invoke-static {v0}, Lcom/android/calendar/CalendarView;->access$600(Lcom/android/calendar/CalendarView;)V

    .line 1155
    iget-object v0, p0, Lcom/android/calendar/CalendarView$2;->this$0:Lcom/android/calendar/CalendarView;

    iget-object v0, v0, Lcom/android/calendar/CalendarView;->mParentActivity:Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarActivity;->stopProgressSpinner()V

    .line 1156
    iget-object v0, p0, Lcom/android/calendar/CalendarView$2;->this$0:Lcom/android/calendar/CalendarView;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->invalidate()V

    .line 1157
    return-void
.end method
