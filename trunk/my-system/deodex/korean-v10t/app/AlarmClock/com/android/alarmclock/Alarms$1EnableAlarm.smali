.class Lcom/android/alarmclock/Alarms$1EnableAlarm;
.super Ljava/lang/Object;
.source "Alarms.java"

# interfaces
.implements Lcom/android/alarmclock/Alarms$AlarmSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/alarmclock/Alarms;->enableAlarmInternal(Landroid/content/Context;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnableAlarm"
.end annotation


# instance fields
.field public mDaysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;

.field public mHour:I

.field public mMinutes:I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportAlarm(IZIILcom/android/alarmclock/Alarms$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "idx"
    .parameter "enabled"
    .parameter "hour"
    .parameter "minutes"
    .parameter "daysOfWeek"
    .parameter "vibrate"
    .parameter "message"
    .parameter "alert"

    .prologue
    .line 607
    iput p3, p0, Lcom/android/alarmclock/Alarms$1EnableAlarm;->mHour:I

    .line 608
    iput p4, p0, Lcom/android/alarmclock/Alarms$1EnableAlarm;->mMinutes:I

    .line 609
    iput-object p5, p0, Lcom/android/alarmclock/Alarms$1EnableAlarm;->mDaysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;

    .line 610
    return-void
.end method
