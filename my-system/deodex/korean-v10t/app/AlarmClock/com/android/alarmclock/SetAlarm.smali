.class public Lcom/android/alarmclock/SetAlarm;
.super Landroid/preference/PreferenceActivity;
.source "SetAlarm.java"

# interfaces
.implements Lcom/android/alarmclock/Alarms$AlarmSettings;
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/alarmclock/SetAlarm$AlarmsChangeObserver;,
        Lcom/android/alarmclock/SetAlarm$OnRepeatChangedObserver;,
        Lcom/android/alarmclock/SetAlarm$RingtoneChangedListener;
    }
.end annotation


# static fields
.field private static final DIALOG_TIMEPICKER:I

.field private static bFirstStart:Z

.field private static earlierText:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mId:I


# instance fields
.field private mAlarmOnPref:Landroid/preference/CheckBoxPreference;

.field private mAlarmPref:Lcom/android/alarmclock/AlarmPreference;

.field private mAlarmsChangeObserver:Landroid/database/ContentObserver;

.field private mDaysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;

.field private mDeleteAlarmItem:Landroid/view/MenuItem;

.field private mHour:I

.field private mLabel:Landroid/preference/EditTextPreference;

.field private mMinutes:I

.field private mRepeatPref:Lcom/android/alarmclock/RepeatPreference;

.field private mReportAlarmCalled:Z

.field private mTestAlarmItem:Landroid/view/MenuItem;

.field private mTimePref:Landroid/preference/Preference;

.field private mVibratePref:Landroid/preference/CheckBoxPreference;

.field private previousTextInTheTextBox:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/alarmclock/SetAlarm;->bFirstStart:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 72
    new-instance v0, Lcom/android/alarmclock/Alarms$DaysOfWeek;

    invoke-direct {v0}, Lcom/android/alarmclock/Alarms$DaysOfWeek;-><init>()V

    iput-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mDaysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/alarmclock/SetAlarm;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/alarmclock/SetAlarm;->saveAlarm(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/alarmclock/SetAlarm;)Lcom/android/alarmclock/Alarms$DaysOfWeek;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mDaysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;

    return-object v0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 54
    sget v0, Lcom/android/alarmclock/SetAlarm;->mId:I

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/alarmclock/SetAlarm;->earlierText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    sput-object p0, Lcom/android/alarmclock/SetAlarm;->earlierText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/alarmclock/SetAlarm;)Landroid/preference/EditTextPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mLabel:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/alarmclock/SetAlarm;->bFirstStart:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    sput-boolean p0, Lcom/android/alarmclock/SetAlarm;->bFirstStart:Z

    return p0
.end method

.method static synthetic access$600()Landroid/content/Context;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/alarmclock/SetAlarm;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/alarmclock/SetAlarm;ZLjava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/alarmclock/SetAlarm;->saveAlarm(ZLjava/lang/String;)V

    return-void
.end method

.method static formatToast(Landroid/content/Context;IILcom/android/alarmclock/Alarms$DaysOfWeek;)Ljava/lang/String;
    .registers 13
    .parameter "context"
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"

    .prologue
    .line 419
    invoke-static {p1, p2, p3}, Lcom/android/alarmclock/Alarms;->calculateAlarm(IILcom/android/alarmclock/Alarms$DaysOfWeek;)Ljava/util/Calendar;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    .line 421
    .end local p2
    .local p1, alarm:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 422
    .local p1, delta:J
    const-wide/32 v0, 0x36ee80

    div-long v0, p1, v0

    .line 423
    .local v0, hours:J
    const-wide/32 v2, 0xea60

    div-long/2addr p1, v2

    .end local p1           #delta:J
    const-wide/16 v2, 0x3c

    rem-long v5, p1, v2

    .line 424
    .local v5, minutes:J
    const-wide/16 p1, 0x18

    div-long p2, v0, p1

    .line 425
    .end local p3
    .local p2, days:J
    const-wide/16 v2, 0x18

    rem-long v2, v0, v2

    .line 427
    .end local v0           #hours:J
    .local v2, hours:J
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_6c

    const-string p1, ""

    .line 431
    .local p1, daySeq:Ljava/lang/String;
    :goto_2a
    const-wide/16 v0, 0x0

    cmp-long v0, v5, v0

    if-nez v0, :cond_8c

    const-string v0, ""

    move-object v4, v0

    .line 435
    .local v4, minSeq:Ljava/lang/String;
    :goto_33
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_ae

    const-string v0, ""

    move-object v1, v0

    .line 439
    .local v1, hourSeq:Ljava/lang/String;
    :goto_3c
    const-wide/16 v7, 0x0

    cmp-long p2, p2, v7

    if-lez p2, :cond_d1

    .end local p2           #days:J
    const/4 p2, 0x1

    .line 440
    .local p2, dispDays:Z
    :goto_43
    const-wide/16 v7, 0x0

    cmp-long p3, v2, v7

    if-lez p3, :cond_d4

    const/4 p3, 0x1

    .line 441
    .local p3, dispHour:Z
    :goto_4a
    const-wide/16 v2, 0x0

    cmp-long v0, v5, v2

    if-lez v0, :cond_d7

    .end local v2           #hours:J
    const/4 v0, 0x1

    .line 444
    .local v0, dispMinute:Z
    :goto_51
    if-nez p2, :cond_da

    if-nez p3, :cond_da

    if-nez v0, :cond_da

    .line 445
    const p1, 0x7f070021

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p1           #daySeq:Ljava/lang/String;
    move-result-object p1

    .line 459
    .end local p2           #dispDays:Z
    .local p1, ret:Ljava/lang/String;
    :goto_5e
    const p2, 0x7f070019

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    .end local p3           #dispHour:Z
    const/4 v0, 0x0

    aput-object p1, p3, v0

    .end local v0           #dispMinute:Z
    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 462
    .end local p1           #ret:Ljava/lang/String;
    .local p0, ret:Ljava/lang/String;
    return-object p0

    .line 427
    .end local v1           #hourSeq:Ljava/lang/String;
    .end local v4           #minSeq:Ljava/lang/String;
    .restart local v2       #hours:J
    .local p0, context:Landroid/content/Context;
    .local p2, days:J
    :cond_6c
    const-wide/16 v0, 0x1

    cmp-long p1, p2, v0

    if-nez p1, :cond_7a

    const p1, 0x7f07001b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2a

    :cond_7a
    const p1, 0x7f07001c

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2a

    .line 431
    .local p1, daySeq:Ljava/lang/String;
    :cond_8c
    const-wide/16 v0, 0x1

    cmp-long v0, v5, v0

    if-nez v0, :cond_9b

    const v0, 0x7f070022

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_33

    :cond_9b
    const v0, 0x7f070023

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_33

    .line 435
    .restart local v4       #minSeq:Ljava/lang/String;
    :cond_ae
    const-wide/16 v0, 0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_bd

    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_3c

    :cond_bd
    const v0, 0x7f07001e

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_3c

    .line 439
    .end local p2           #days:J
    .restart local v1       #hourSeq:Ljava/lang/String;
    :cond_d1
    const/4 p2, 0x0

    goto/16 :goto_43

    .line 440
    .local p2, dispDays:Z
    :cond_d4
    const/4 p3, 0x0

    goto/16 :goto_4a

    .line 441
    .end local v2           #hours:J
    .restart local p3       #dispHour:Z
    :cond_d7
    const/4 v0, 0x0

    goto/16 :goto_51

    .line 447
    .restart local v0       #dispMinute:Z
    :cond_da
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    .line 448
    .local v2, parts:[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 449
    const/4 p1, 0x1

    if-nez p2, :cond_10c

    .end local p1           #daySeq:Ljava/lang/String;
    const-string p2, ""

    .end local p2           #dispDays:Z
    :goto_e5
    aput-object p2, v2, p1

    .line 453
    const/4 p1, 0x2

    if-eqz p3, :cond_127

    move-object p2, v1

    :goto_eb
    aput-object p2, v2, p1

    .line 454
    const/4 p1, 0x3

    if-eqz p3, :cond_12a

    if-eqz v0, :cond_12a

    const p2, 0x7f07001f

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_f9
    aput-object p2, v2, p1

    .line 455
    const/4 p1, 0x4

    if-eqz v0, :cond_12d

    move-object p2, v4

    :goto_ff
    aput-object p2, v2, p1

    .line 456
    const p1, 0x7f07001a

    check-cast v2, [Ljava/lang/Object;

    .end local v2           #parts:[Ljava/lang/String;
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .local p1, ret:Ljava/lang/String;
    goto/16 :goto_5e

    .line 449
    .end local p1           #ret:Ljava/lang/String;
    .restart local v2       #parts:[Ljava/lang/String;
    .restart local p2       #dispDays:Z
    :cond_10c
    if-eqz p3, :cond_118

    if-eqz v0, :cond_118

    const p2, 0x7f070020

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p2           #dispDays:Z
    move-result-object p2

    goto :goto_e5

    .restart local p2       #dispDays:Z
    :cond_118
    if-nez p3, :cond_11f

    if-nez v0, :cond_11f

    const-string p2, ""

    goto :goto_e5

    :cond_11f
    const p2, 0x7f07001f

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p2           #dispDays:Z
    move-result-object p2

    goto :goto_e5

    .line 453
    :cond_127
    const-string p2, ""

    goto :goto_eb

    .line 454
    :cond_12a
    const-string p2, ""

    goto :goto_f9

    .line 455
    :cond_12d
    const-string p2, ""

    goto :goto_ff
.end method

.method private getDefaultAlarm()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 320
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    .line 321
    .local v0, ringtoneManager:Landroid/media/RingtoneManager;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->setType(I)V

    .line 322
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method static popAlarmSetToast(Landroid/content/Context;IILcom/android/alarmclock/Alarms$DaysOfWeek;)V
    .registers 7
    .parameter "context"
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"

    .prologue
    .line 407
    invoke-static {p0, p1, p2, p3}, Lcom/android/alarmclock/SetAlarm;->formatToast(Landroid/content/Context;IILcom/android/alarmclock/Alarms$DaysOfWeek;)Ljava/lang/String;

    move-result-object v1

    .line 408
    .local v1, toastText:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 409
    .local v0, toast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/alarmclock/ToastMaster;->setToast(Landroid/widget/Toast;)V

    .line 410
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 411
    return-void
.end method

.method private static saveAlarm(Landroid/content/Context;IZIILcom/android/alarmclock/Alarms$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;Z)V
    .registers 13
    .parameter "context"
    .parameter "id"
    .parameter "enabled"
    .parameter "hour"
    .parameter "minute"
    .parameter "daysOfWeek"
    .parameter "vibrate"
    .parameter "label"
    .parameter "alert"
    .parameter "popToast"

    .prologue
    .line 382
    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->getSnoozeAlarmId(Landroid/content/Context;)I

    move-result v0

    .line 384
    .local v0, sid:I
    sget v1, Lcom/android/alarmclock/SetAlarm;->mId:I

    if-ne v0, v1, :cond_11

    const/4 v1, 0x1

    if-eq p2, v1, :cond_11

    .line 386
    invoke-static {}, Lcom/android/alarmclock/Alarms;->resetSnoozeCount()V

    .line 387
    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;)I

    .line 391
    :cond_11
    invoke-static/range {p0 .. p8}, Lcom/android/alarmclock/Alarms;->setAlarm(Landroid/content/Context;IZIILcom/android/alarmclock/Alarms$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;)V

    .line 394
    sget-object v1, Lcom/android/alarmclock/SetAlarm;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/alarmclock/SetAlarm;->mId:I

    invoke-static {v1, v2, p2}, Lcom/android/alarmclock/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    .line 395
    if-eqz p2, :cond_22

    if-eqz p9, :cond_22

    .line 396
    invoke-static {p0, p3, p4, p5}, Lcom/android/alarmclock/SetAlarm;->popAlarmSetToast(Landroid/content/Context;IILcom/android/alarmclock/Alarms$DaysOfWeek;)V

    .line 398
    :cond_22
    return-void
.end method

.method private saveAlarm(Z)V
    .registers 3
    .parameter "popToast"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mLabel:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/alarmclock/SetAlarm;->saveAlarm(ZLjava/lang/String;)V

    .line 355
    return-void
.end method

.method private saveAlarm(ZLjava/lang/String;)V
    .registers 13
    .parameter "popToast"
    .parameter "label"

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/android/alarmclock/SetAlarm;->mReportAlarmCalled:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mAlarmPref:Lcom/android/alarmclock/AlarmPreference;

    iget-object v0, v0, Lcom/android/alarmclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    if-eqz v0, :cond_2c

    .line 363
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mAlarmPref:Lcom/android/alarmclock/AlarmPreference;

    iget-object v0, v0, Lcom/android/alarmclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 364
    .local v8, alertString:Ljava/lang/String;
    sget v1, Lcom/android/alarmclock/SetAlarm;->mId:I

    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mAlarmOnPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    iget v3, p0, Lcom/android/alarmclock/SetAlarm;->mHour:I

    iget v4, p0, Lcom/android/alarmclock/SetAlarm;->mMinutes:I

    iget-object v5, p0, Lcom/android/alarmclock/SetAlarm;->mDaysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;

    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    move-object v0, p0

    move-object v7, p2

    move v9, p1

    invoke-static/range {v0 .. v9}, Lcom/android/alarmclock/SetAlarm;->saveAlarm(Landroid/content/Context;IZIILcom/android/alarmclock/Alarms$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 368
    .end local v8           #alertString:Ljava/lang/String;
    :cond_2c
    return-void
.end method

.method private updateAlarm(Landroid/net/Uri;)V
    .registers 5
    .parameter "ringtoneUri"

    .prologue
    .line 332
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 333
    .local v0, ringtone:Landroid/media/Ringtone;
    if-eqz v0, :cond_1d

    .line 335
    invoke-virtual {v0, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1e

    .line 337
    iget-object v1, p0, Lcom/android/alarmclock/SetAlarm;->mAlarmPref:Lcom/android/alarmclock/AlarmPreference;

    const-string v2, "Beep-Beep-Beep Alarm"

    invoke-virtual {v1, v2}, Lcom/android/alarmclock/AlarmPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 344
    :goto_1a
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 346
    :cond_1d
    return-void

    .line 341
    :cond_1e
    iget-object v1, p0, Lcom/android/alarmclock/SetAlarm;->mAlarmPref:Lcom/android/alarmclock/AlarmPreference;

    invoke-virtual {v0, p0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/alarmclock/AlarmPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1a
.end method

.method private updateRepeat()V
    .registers 4

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mRepeatPref:Lcom/android/alarmclock/RepeatPreference;

    iget-object v1, p0, Lcom/android/alarmclock/SetAlarm;->mDaysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/android/alarmclock/Alarms$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/alarmclock/RepeatPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 351
    return-void
.end method

.method private updateTime()V
    .registers 5

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mTimePref:Landroid/preference/Preference;

    iget v1, p0, Lcom/android/alarmclock/SetAlarm;->mHour:I

    iget v2, p0, Lcom/android/alarmclock/SetAlarm;->mMinutes:I

    iget-object v3, p0, Lcom/android/alarmclock/SetAlarm;->mDaysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;

    invoke-static {p0, v1, v2, v3}, Lcom/android/alarmclock/Alarms;->formatTime(Landroid/content/Context;IILcom/android/alarmclock/Alarms$DaysOfWeek;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 328
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    .line 115
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    sput-object p0, Lcom/android/alarmclock/SetAlarm;->mContext:Landroid/content/Context;

    .line 119
    invoke-static {}, Landroid/provider/Settings$FlexInfo_Operator;->getOperatorCode()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, operator:Ljava/lang/String;
    const-string v3, "Cellcom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 126
    const v3, 0x7f040001

    invoke-virtual {p0, v3}, Lcom/android/alarmclock/SetAlarm;->addPreferencesFromResource(I)V

    .line 134
    :goto_18
    const-string v3, "label"

    invoke-virtual {p0, v3}, Lcom/android/alarmclock/SetAlarm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/alarmclock/SetAlarm;->mLabel:Landroid/preference/EditTextPreference;

    .line 137
    new-instance v1, Lcom/android/alarmclock/SetAlarm$1;

    invoke-direct {v1, p0}, Lcom/android/alarmclock/SetAlarm$1;-><init>(Lcom/android/alarmclock/SetAlarm;)V

    .line 174
    .local v1, mTextWatcher:Landroid/text/TextWatcher;
    iget-object v3, p0, Lcom/android/alarmclock/SetAlarm;->mLabel:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 177
    iget-object v3, p0, Lcom/android/alarmclock/SetAlarm;->mLabel:Landroid/preference/EditTextPreference;

    new-instance v4, Lcom/android/alarmclock/SetAlarm$2;

    invoke-direct {v4, p0}, Lcom/android/alarmclock/SetAlarm$2;-><init>(Lcom/android/alarmclock/SetAlarm;)V

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    const-string v3, "on"

    invoke-virtual {p0, v3}, Lcom/android/alarmclock/SetAlarm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/alarmclock/SetAlarm;->mAlarmOnPref:Landroid/preference/CheckBoxPreference;

    .line 187
    const-string v3, "time"

    invoke-virtual {p0, v3}, Lcom/android/alarmclock/SetAlarm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/alarmclock/SetAlarm;->mTimePref:Landroid/preference/Preference;

    .line 188
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/android/alarmclock/SetAlarm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/alarmclock/AlarmPreference;

    iput-object v3, p0, Lcom/android/alarmclock/SetAlarm;->mAlarmPref:Lcom/android/alarmclock/AlarmPreference;

    .line 189
    const-string v3, "vibrate"

    invoke-virtual {p0, v3}, Lcom/android/alarmclock/SetAlarm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/alarmclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    .line 190
    const-string v3, "setRepeat"

    invoke-virtual {p0, v3}, Lcom/android/alarmclock/SetAlarm;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/alarmclock/RepeatPreference;

    iput-object v3, p0, Lcom/android/alarmclock/SetAlarm;->mRepeatPref:Lcom/android/alarmclock/RepeatPreference;

    .line 192
    invoke-virtual {p0}, Lcom/android/alarmclock/SetAlarm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 193
    .local v0, i:Landroid/content/Intent;
    const-string v3, "alarm_id"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/alarmclock/SetAlarm;->mId:I

    .line 196
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/alarmclock/SetAlarm;->mReportAlarmCalled:Z

    .line 198
    invoke-virtual {p0}, Lcom/android/alarmclock/SetAlarm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget v4, Lcom/android/alarmclock/SetAlarm;->mId:I

    invoke-static {v3, p0, v4}, Lcom/android/alarmclock/Alarms;->getAlarm(Landroid/content/ContentResolver;Lcom/android/alarmclock/Alarms$AlarmSettings;I)V

    .line 202
    iget-boolean v3, p0, Lcom/android/alarmclock/SetAlarm;->mReportAlarmCalled:Z

    if-nez v3, :cond_8f

    .line 203
    const-string v3, "reportAlarm never called!"

    invoke-static {v3}, Lcom/android/alarmclock/Log;->e(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/alarmclock/SetAlarm;->finish()V

    .line 207
    :cond_8f
    new-instance v3, Lcom/android/alarmclock/SetAlarm$AlarmsChangeObserver;

    invoke-direct {v3, p0}, Lcom/android/alarmclock/SetAlarm$AlarmsChangeObserver;-><init>(Lcom/android/alarmclock/SetAlarm;)V

    iput-object v3, p0, Lcom/android/alarmclock/SetAlarm;->mAlarmsChangeObserver:Landroid/database/ContentObserver;

    .line 208
    invoke-virtual {p0}, Lcom/android/alarmclock/SetAlarm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/alarmclock/Alarms$AlarmColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/alarmclock/SetAlarm;->mAlarmsChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 211
    iget-object v3, p0, Lcom/android/alarmclock/SetAlarm;->mAlarmPref:Lcom/android/alarmclock/AlarmPreference;

    new-instance v4, Lcom/android/alarmclock/SetAlarm$RingtoneChangedListener;

    invoke-direct {v4, p0, v7}, Lcom/android/alarmclock/SetAlarm$RingtoneChangedListener;-><init>(Lcom/android/alarmclock/SetAlarm;Lcom/android/alarmclock/SetAlarm$1;)V

    invoke-virtual {v3, v4}, Lcom/android/alarmclock/AlarmPreference;->setRingtoneChangedListener(Lcom/android/alarmclock/AlarmPreference$IRingtoneChangedListener;)V

    .line 212
    iget-object v3, p0, Lcom/android/alarmclock/SetAlarm;->mRepeatPref:Lcom/android/alarmclock/RepeatPreference;

    new-instance v4, Lcom/android/alarmclock/SetAlarm$OnRepeatChangedObserver;

    invoke-direct {v4, p0, v7}, Lcom/android/alarmclock/SetAlarm$OnRepeatChangedObserver;-><init>(Lcom/android/alarmclock/SetAlarm;Lcom/android/alarmclock/SetAlarm$1;)V

    invoke-virtual {v3, v4}, Lcom/android/alarmclock/RepeatPreference;->setOnRepeatChangedObserver(Lcom/android/alarmclock/RepeatPreference$OnRepeatChangedObserver;)V

    .line 213
    return-void

    .line 132
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #mTextWatcher:Landroid/text/TextWatcher;
    :cond_b7
    const/high16 v3, 0x7f04

    invoke-virtual {p0, v3}, Lcom/android/alarmclock/SetAlarm;->addPreferencesFromResource(I)V

    goto/16 :goto_18
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 225
    packed-switch p1, :pswitch_data_22

    .line 236
    const/4 v0, 0x0

    .line 239
    .local v0, d:Landroid/app/Dialog;
    :goto_5
    return-object v0

    .line 227
    .end local v0           #d:Landroid/app/Dialog;
    :pswitch_6
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v1, p0

    move-object v2, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 233
    .restart local v0       #d:Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/android/alarmclock/SetAlarm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 225
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 466
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 468
    const v0, 0x7f070002

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mDeleteAlarmItem:Landroid/view/MenuItem;

    .line 469
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mDeleteAlarmItem:Landroid/view/MenuItem;

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 476
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 217
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 218
    invoke-virtual {p0}, Lcom/android/alarmclock/SetAlarm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/alarmclock/SetAlarm;->mAlarmsChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 219
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 547
    packed-switch p1, :pswitch_data_10

    .line 558
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_7
    return v0

    .line 554
    :pswitch_8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/alarmclock/AlarmClock;->mBackOption:Z

    .line 556
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7

    .line 547
    :pswitch_data_10
    .packed-switch 0x4
        :pswitch_8
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mDeleteAlarmItem:Landroid/view/MenuItem;

    if-ne p1, v0, :cond_31

    .line 482
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070003

    new-instance v2, Lcom/android/alarmclock/SetAlarm$4;

    invoke-direct {v2, p0}, Lcom/android/alarmclock/SetAlarm$4;-><init>(Lcom/android/alarmclock/SetAlarm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070004

    new-instance v2, Lcom/android/alarmclock/SetAlarm$3;

    invoke-direct {v2, p0}, Lcom/android/alarmclock/SetAlarm$3;-><init>(Lcom/android/alarmclock/SetAlarm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 511
    const/4 v0, 0x1

    .line 520
    :goto_30
    return v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_30
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 257
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_d

    .line 258
    invoke-virtual {p0, v1}, Lcom/android/alarmclock/SetAlarm;->showDialog(I)V

    .line 265
    :cond_8
    :goto_8
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 259
    :cond_d
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mAlarmOnPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_16

    .line 260
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/alarmclock/SetAlarm;->saveAlarm(Z)V

    goto :goto_8

    .line 261
    :cond_16
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_8

    .line 262
    invoke-direct {p0, v1}, Lcom/android/alarmclock/SetAlarm;->saveAlarm(Z)V

    goto :goto_8
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 7
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 244
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 246
    packed-switch p1, :pswitch_data_14

    .line 252
    :goto_6
    return-void

    .line 248
    :pswitch_7
    move-object v0, p2

    check-cast v0, Landroid/app/TimePickerDialog;

    move-object v1, v0

    .line 249
    .local v1, timePicker:Landroid/app/TimePickerDialog;
    iget v2, p0, Lcom/android/alarmclock/SetAlarm;->mHour:I

    iget v3, p0, Lcom/android/alarmclock/SetAlarm;->mMinutes:I

    invoke-virtual {v1, v2, v3}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_6

    .line 246
    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .registers 6
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/4 v1, 0x1

    .line 269
    iput p2, p0, Lcom/android/alarmclock/SetAlarm;->mHour:I

    .line 270
    iput p3, p0, Lcom/android/alarmclock/SetAlarm;->mMinutes:I

    .line 271
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mAlarmOnPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 272
    invoke-direct {p0, v1}, Lcom/android/alarmclock/SetAlarm;->saveAlarm(Z)V

    .line 273
    return-void
.end method

.method public reportAlarm(IZIILcom/android/alarmclock/Alarms$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "idx"
    .parameter "enabled"
    .parameter "hour"
    .parameter "minutes"
    .parameter "daysOfWeek"
    .parameter "vibrate"
    .parameter "label"
    .parameter "alert"

    .prologue
    .line 284
    if-eqz p7, :cond_8

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    .line 285
    :cond_8
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/android/alarmclock/SetAlarm;->getString(I)Ljava/lang/String;

    move-result-object p7

    .line 287
    :cond_f
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mLabel:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mLabel:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p7}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 289
    iput p3, p0, Lcom/android/alarmclock/SetAlarm;->mHour:I

    .line 290
    iput p4, p0, Lcom/android/alarmclock/SetAlarm;->mMinutes:I

    .line 291
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mAlarmOnPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 292
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mDaysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;

    invoke-virtual {v0, p5}, Lcom/android/alarmclock/Alarms$DaysOfWeek;->set(Lcom/android/alarmclock/Alarms$DaysOfWeek;)V

    .line 293
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mVibratePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 295
    if-eqz p8, :cond_34

    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_58

    .line 297
    :cond_34
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mAlarmPref:Lcom/android/alarmclock/AlarmPreference;

    invoke-direct {p0}, Lcom/android/alarmclock/SetAlarm;->getDefaultAlarm()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/alarmclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    .line 298
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mAlarmPref:Lcom/android/alarmclock/AlarmPreference;

    iget-object v0, v0, Lcom/android/alarmclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    if-nez v0, :cond_47

    .line 299
    const-string v0, "****** Default Alarm null"

    invoke-static {v0}, Lcom/android/alarmclock/Log;->e(Ljava/lang/String;)V

    .line 309
    :cond_47
    :goto_47
    invoke-direct {p0}, Lcom/android/alarmclock/SetAlarm;->updateTime()V

    .line 310
    invoke-direct {p0}, Lcom/android/alarmclock/SetAlarm;->updateRepeat()V

    .line 311
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mAlarmPref:Lcom/android/alarmclock/AlarmPreference;

    iget-object v0, v0, Lcom/android/alarmclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/alarmclock/SetAlarm;->updateAlarm(Landroid/net/Uri;)V

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/alarmclock/SetAlarm;->mReportAlarmCalled:Z

    .line 314
    return-void

    .line 302
    :cond_58
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mAlarmPref:Lcom/android/alarmclock/AlarmPreference;

    invoke-static {p8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/alarmclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    .line 303
    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mAlarmPref:Lcom/android/alarmclock/AlarmPreference;

    iget-object v0, v0, Lcom/android/alarmclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    if-nez v0, :cond_47

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "****** Parsed null alarm. URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/alarmclock/Log;->e(Ljava/lang/String;)V

    goto :goto_47
.end method

.method setTestAlarm()V
    .registers 14

    .prologue
    const/4 v2, 0x1

    .line 531
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 532
    .local v10, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 534
    const/16 v0, 0xb

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 535
    .local v11, nowHour:I
    const/16 v0, 0xc

    invoke-virtual {v10, v0}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 537
    .local v12, nowMinute:I
    add-int/lit8 v0, v12, 0x1

    rem-int/lit8 v4, v0, 0x3c

    .line 538
    .local v4, minutes:I
    if-nez v12, :cond_3a

    move v0, v2

    :goto_1f
    add-int v3, v11, v0

    .line 540
    .local v3, hour:I
    sget v1, Lcom/android/alarmclock/SetAlarm;->mId:I

    iget-object v5, p0, Lcom/android/alarmclock/SetAlarm;->mDaysOfWeek:Lcom/android/alarmclock/Alarms$DaysOfWeek;

    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mLabel:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/android/alarmclock/SetAlarm;->mAlarmPref:Lcom/android/alarmclock/AlarmPreference;

    iget-object v0, v0, Lcom/android/alarmclock/AlarmPreference;->mAlert:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move v6, v2

    move v9, v2

    invoke-static/range {v0 .. v9}, Lcom/android/alarmclock/SetAlarm;->saveAlarm(Landroid/content/Context;IZIILcom/android/alarmclock/Alarms$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 542
    return-void

    .line 538
    .end local v3           #hour:I
    :cond_3a
    const/4 v0, 0x0

    goto :goto_1f
.end method
