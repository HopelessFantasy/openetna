.class Lcom/android/calendar/CalendarView$DayHeader;
.super Ljava/lang/Object;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DayHeader"
.end annotation


# instance fields
.field cell:I

.field dateString:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/calendar/CalendarView;


# direct methods
.method private constructor <init>(Lcom/android/calendar/CalendarView;)V
    .registers 2
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/calendar/CalendarView$DayHeader;->this$0:Lcom/android/calendar/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/CalendarView;Lcom/android/calendar/CalendarView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView$DayHeader;-><init>(Lcom/android/calendar/CalendarView;)V

    return-void
.end method
