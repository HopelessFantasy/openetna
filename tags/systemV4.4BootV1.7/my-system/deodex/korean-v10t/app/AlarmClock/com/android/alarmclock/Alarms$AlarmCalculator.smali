.class Lcom/android/alarmclock/Alarms$AlarmCalculator;
.super Ljava/lang/Object;
.source "Alarms.java"

# interfaces
.implements Lcom/android/alarmclock/Alarms$AlarmSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/alarmclock/Alarms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlarmCalculator"
.end annotation


# instance fields
.field private mLabel:Ljava/lang/String;

.field private mMinAlert:J

.field private mMinIdx:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/alarmclock/Alarms$AlarmCalculator;->mMinAlert:J

    .line 649
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/alarmclock/Alarms$AlarmCalculator;->mMinIdx:I

    return-void
.end method


# virtual methods
.method public getAlert()J
    .registers 3

    .prologue
    .line 656
    iget-wide v0, p0, Lcom/android/alarmclock/Alarms$AlarmCalculator;->mMinAlert:J

    return-wide v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 659
    iget v0, p0, Lcom/android/alarmclock/Alarms$AlarmCalculator;->mMinIdx:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/alarmclock/Alarms$AlarmCalculator;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public reportAlarm(IZIILcom/android/alarmclock/Alarms$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "idx"
    .parameter "enabled"
    .parameter "hour"
    .parameter "minutes"
    .parameter "daysOfWeek"
    .parameter "vibrate"
    .parameter "message"
    .parameter "alert"

    .prologue
    .line 669
    if-eqz p2, :cond_16

    .line 670
    invoke-static {p3, p4, p5}, Lcom/android/alarmclock/Alarms;->calculateAlarm(IILcom/android/alarmclock/Alarms$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 674
    .local v0, atTime:J
    iget-wide v2, p0, Lcom/android/alarmclock/Alarms$AlarmCalculator;->mMinAlert:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_16

    .line 675
    iput p1, p0, Lcom/android/alarmclock/Alarms$AlarmCalculator;->mMinIdx:I

    .line 676
    iput-wide v0, p0, Lcom/android/alarmclock/Alarms$AlarmCalculator;->mMinAlert:J

    .line 677
    iput-object p7, p0, Lcom/android/alarmclock/Alarms$AlarmCalculator;->mLabel:Ljava/lang/String;

    .line 680
    .end local v0           #atTime:J
    :cond_16
    return-void
.end method
