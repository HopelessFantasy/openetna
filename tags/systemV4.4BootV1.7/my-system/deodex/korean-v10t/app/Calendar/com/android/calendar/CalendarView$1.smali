.class Lcom/android/calendar/CalendarView$1;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarView;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarView;)V
    .registers 2
    .parameter

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/android/calendar/CalendarView$1;->this$0:Lcom/android/calendar/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/android/calendar/CalendarView$1;->this$0:Lcom/android/calendar/CalendarView;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarView;->clearCachedEvents()V

    .line 1117
    return-void
.end method
