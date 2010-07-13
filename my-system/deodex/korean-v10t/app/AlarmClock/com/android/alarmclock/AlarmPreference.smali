.class public Lcom/android/alarmclock/AlarmPreference;
.super Landroid/preference/RingtonePreference;
.source "AlarmPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/alarmclock/AlarmPreference$IRingtoneChangedListener;
    }
.end annotation


# instance fields
.field public mAlert:Landroid/net/Uri;

.field private mRingtoneChangedListener:Lcom/android/alarmclock/AlarmPreference$IRingtoneChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onRestoreRingtone()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/alarmclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .registers 3
    .parameter "ringtoneUri"

    .prologue
    .line 42
    if-eqz p1, :cond_d

    .line 43
    iput-object p1, p0, Lcom/android/alarmclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    .line 44
    iget-object v0, p0, Lcom/android/alarmclock/AlarmPreference;->mRingtoneChangedListener:Lcom/android/alarmclock/AlarmPreference$IRingtoneChangedListener;

    if-eqz v0, :cond_d

    .line 45
    iget-object v0, p0, Lcom/android/alarmclock/AlarmPreference;->mRingtoneChangedListener:Lcom/android/alarmclock/AlarmPreference$IRingtoneChangedListener;

    invoke-interface {v0, p1}, Lcom/android/alarmclock/AlarmPreference$IRingtoneChangedListener;->onRingtoneChanged(Landroid/net/Uri;)V

    .line 48
    :cond_d
    return-void
.end method

.method public setRingtoneChangedListener(Lcom/android/alarmclock/AlarmPreference$IRingtoneChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/alarmclock/AlarmPreference;->mRingtoneChangedListener:Lcom/android/alarmclock/AlarmPreference$IRingtoneChangedListener;

    .line 38
    return-void
.end method
