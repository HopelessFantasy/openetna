.class public Lcom/android/calendar/WeekView;
.super Lcom/android/calendar/CalendarView;
.source "WeekView.java"


# static fields
.field private static final CELL_MARGIN:I


# direct methods
.method public constructor <init>(Lcom/android/calendar/CalendarActivity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarView;-><init>(Lcom/android/calendar/CalendarActivity;)V

    .line 25
    invoke-direct {p0}, Lcom/android/calendar/WeekView;->init()V

    .line 26
    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p0, Lcom/android/calendar/WeekView;->mDrawTextInEventRect:Z

    .line 30
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/calendar/WeekView;->mNumDays:I

    .line 31
    iget-object v0, p0, Lcom/android/calendar/WeekView;->mEventGeometry:Lcom/android/calendar/EventGeometry;

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventGeometry;->setCellMargin(I)V

    .line 32
    return-void
.end method
