.class public final Lcom/android/providers/calendar/CalendarProvider$InstancesRange;
.super Ljava/lang/Object;
.source "CalendarProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstancesRange"
.end annotation


# instance fields
.field public begin:J

.field public end:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 5
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-wide p1, p0, Lcom/android/providers/calendar/CalendarProvider$InstancesRange;->begin:J

    .line 167
    iput-wide p3, p0, Lcom/android/providers/calendar/CalendarProvider$InstancesRange;->end:J

    .line 168
    return-void
.end method
