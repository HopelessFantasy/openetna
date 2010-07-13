.class public Lcom/android/alarmclock/RepeatPreference;
.super Landroid/preference/ListPreference;
.source "RepeatPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/alarmclock/RepeatPreference$OnRepeatChangedObserver;
    }
.end annotation


# instance fields
.field private mDaysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;

.field private mOnRepeatChangedObserver:Lcom/android/alarmclock/RepeatPreference$OnRepeatChangedObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Lcom/android/alarmclock/Alarms$DaysOfWeek;

    invoke-direct {v0}, Lcom/android/alarmclock/Alarms$DaysOfWeek;-><init>()V

    iput-object v0, p0, Lcom/android/alarmclock/RepeatPreference;->mDaysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/alarmclock/RepeatPreference;)Lcom/android/alarmclock/Alarms$DaysOfWeek;
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/alarmclock/RepeatPreference;->mDaysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;

    return-object v0
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .registers 4
    .parameter "positiveResult"

    .prologue
    .line 48
    if-eqz p1, :cond_a

    .line 49
    iget-object v0, p0, Lcom/android/alarmclock/RepeatPreference;->mOnRepeatChangedObserver:Lcom/android/alarmclock/RepeatPreference$OnRepeatChangedObserver;

    iget-object v1, p0, Lcom/android/alarmclock/RepeatPreference;->mDaysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;

    invoke-interface {v0, v1}, Lcom/android/alarmclock/RepeatPreference$OnRepeatChangedObserver;->onRepeatChanged(Lcom/android/alarmclock/Alarms$DaysOfWeek;)V

    .line 54
    :goto_9
    return-void

    .line 52
    :cond_a
    iget-object v0, p0, Lcom/android/alarmclock/RepeatPreference;->mDaysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;

    iget-object v1, p0, Lcom/android/alarmclock/RepeatPreference;->mOnRepeatChangedObserver:Lcom/android/alarmclock/RepeatPreference$OnRepeatChangedObserver;

    invoke-interface {v1}, Lcom/android/alarmclock/RepeatPreference$OnRepeatChangedObserver;->getDaysOfWeek()Lcom/android/alarmclock/Alarms$DaysOfWeek;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/alarmclock/Alarms$DaysOfWeek;->set(Lcom/android/alarmclock/Alarms$DaysOfWeek;)V

    goto :goto_9
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 6
    .parameter "builder"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/alarmclock/RepeatPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 59
    .local v0, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/alarmclock/RepeatPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 61
    .local v1, entryValues:[Ljava/lang/CharSequence;
    if-eqz v0, :cond_c

    if-nez v1, :cond_14

    .line 62
    :cond_c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "RepeatPreference requires an entries array and an entryValues array."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_14
    iget-object v2, p0, Lcom/android/alarmclock/RepeatPreference;->mDaysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;

    iget-object v3, p0, Lcom/android/alarmclock/RepeatPreference;->mOnRepeatChangedObserver:Lcom/android/alarmclock/RepeatPreference$OnRepeatChangedObserver;

    invoke-interface {v3}, Lcom/android/alarmclock/RepeatPreference$OnRepeatChangedObserver;->getDaysOfWeek()Lcom/android/alarmclock/Alarms$DaysOfWeek;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/alarmclock/Alarms$DaysOfWeek;->set(Lcom/android/alarmclock/Alarms$DaysOfWeek;)V

    .line 68
    iget-object v2, p0, Lcom/android/alarmclock/RepeatPreference;->mDaysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;

    invoke-virtual {v2}, Lcom/android/alarmclock/Alarms$DaysOfWeek;->getBooleanArray()[Z

    move-result-object v2

    new-instance v3, Lcom/android/alarmclock/RepeatPreference$1;

    invoke-direct {v3, p0}, Lcom/android/alarmclock/RepeatPreference$1;-><init>(Lcom/android/alarmclock/RepeatPreference;)V

    invoke-virtual {p1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 75
    return-void
.end method

.method setOnRepeatChangedObserver(Lcom/android/alarmclock/RepeatPreference$OnRepeatChangedObserver;)V
    .registers 2
    .parameter "onRepeatChangedObserver"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/alarmclock/RepeatPreference;->mOnRepeatChangedObserver:Lcom/android/alarmclock/RepeatPreference$OnRepeatChangedObserver;

    .line 44
    return-void
.end method
