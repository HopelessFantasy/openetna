.class public interface abstract Lcom/android/alarmclock/RepeatPreference$OnRepeatChangedObserver;
.super Ljava/lang/Object;
.source "RepeatPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/alarmclock/RepeatPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRepeatChangedObserver"
.end annotation


# virtual methods
.method public abstract getDaysOfWeek()Lcom/android/alarmclock/Alarms$DaysOfWeek;
.end method

.method public abstract onRepeatChanged(Lcom/android/alarmclock/Alarms$DaysOfWeek;)V
.end method
