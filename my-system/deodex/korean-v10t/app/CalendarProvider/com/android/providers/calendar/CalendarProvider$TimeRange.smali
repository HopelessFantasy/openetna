.class public final Lcom/android/providers/calendar/CalendarProvider$TimeRange;
.super Ljava/lang/Object;
.source "CalendarProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeRange"
.end annotation


# instance fields
.field public allDay:Z

.field public begin:J

.field public end:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
