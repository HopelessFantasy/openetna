.class Lcom/android/calendar/MonthView$2;
.super Ljava/lang/Object;
.source "MonthView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/MonthView;->reloadEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthView;

.field final synthetic val$startMillis:J


# direct methods
.method constructor <init>(Lcom/android/calendar/MonthView;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    iput-wide p2, p0, Lcom/android/calendar/MonthView$2;->val$startMillis:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v0}, Lcom/android/calendar/MonthView;->access$1400(Lcom/android/calendar/MonthView;)V

    .line 457
    iget-object v0, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/calendar/MonthView;->access$1002(Lcom/android/calendar/MonthView;Z)Z

    .line 458
    iget-object v0, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    invoke-static {v0}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/MonthActivity;->stopProgressSpinner()V

    .line 459
    iget-object v0, p0, Lcom/android/calendar/MonthView$2;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->invalidate()V

    .line 460
    return-void
.end method
