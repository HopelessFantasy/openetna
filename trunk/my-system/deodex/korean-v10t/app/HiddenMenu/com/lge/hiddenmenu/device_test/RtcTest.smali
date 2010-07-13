.class public Lcom/lge/hiddenmenu/device_test/RtcTest;
.super Landroid/app/Activity;
.source "RtcTest.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Landroid/app/LGETimePickerDialog$OnLGETimeSetListener;
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# static fields
.field static final DATE_DIALOG_ID:I = 0x0

.field private static final HOURS_12:Ljava/lang/String; = "12"

.field private static final HOURS_24:Ljava/lang/String; = "24"

.field static final TIME_DIALOG_ID:I = 0x1

.field private static final m12:Ljava/lang/String; = "h:mm:ss aa"

.field private static final m24:Ljava/lang/String; = "k:mm:ss"


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mDateDisplay:Landroid/widget/TextView;

.field private mDay:I

.field mFormat:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHour:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinute:I

.field private mMonth:I

.field private mPickDate:Landroid/widget/Button;

.field private mPickTime:Landroid/widget/Button;

.field private mPickTimePref:Landroid/widget/CheckBox;

.field private mSecond:I

.field private mTicker:Ljava/lang/Runnable;

.field private mTickerStopped:Z

.field private mTime24Pref:Landroid/preference/Preference;

.field private mTimeData:Ljava/lang/String;

.field private mTimeDisplay:Landroid/widget/TextView;

.field private mYear:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mTickerStopped:Z

    .line 302
    new-instance v0, Lcom/lge/hiddenmenu/device_test/RtcTest$5;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/RtcTest$5;-><init>(Lcom/lge/hiddenmenu/device_test/RtcTest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/lge/hiddenmenu/device_test/RtcTest;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mPickTimePref:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/hiddenmenu/device_test/RtcTest;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/lge/hiddenmenu/device_test/RtcTest;->set24Hour(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/hiddenmenu/device_test/RtcTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mTickerStopped:Z

    return v0
.end method

.method static synthetic access$300(Lcom/lge/hiddenmenu/device_test/RtcTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mDateDisplay:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/hiddenmenu/device_test/RtcTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mTimeDisplay:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/hiddenmenu/device_test/RtcTest;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/hiddenmenu/device_test/RtcTest;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/hiddenmenu/device_test/RtcTest;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/RtcTest;->updateClock()V

    return-void
.end method

.method private is24Hour()Z
    .registers 2

    .prologue
    .line 278
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private set24Hour(Z)V
    .registers 5
    .parameter "is24Hour"

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/lge/hiddenmenu/device_test/RtcTest;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    if-eqz p1, :cond_14

    const-string v2, "24"

    :goto_a
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 285
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/RtcTest;->timeUpdated()V

    .line 286
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/RtcTest;->setFormat()V

    .line 287
    return-void

    .line 282
    :cond_14
    const-string v2, "12"

    goto :goto_a
.end method

.method private setFormat()V
    .registers 2

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/RtcTest;->is24Hour()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 297
    const-string v0, "k:mm:ss"

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mFormat:Ljava/lang/String;

    .line 301
    :goto_a
    return-void

    .line 299
    :cond_b
    const-string v0, "h:mm:ss aa"

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mFormat:Ljava/lang/String;

    goto :goto_a
.end method

.method private timeUpdated()V
    .registers 3

    .prologue
    .line 290
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/RtcTest;->removeDialog(I)V

    .line 291
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    .local v0, timeChanged:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/RtcTest;->sendBroadcast(Landroid/content/Intent;)V

    .line 293
    return-void
.end method

.method private final updateClock()V
    .registers 2

    .prologue
    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mTickerStopped:Z

    .line 214
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mHandler:Landroid/os/Handler;

    .line 216
    new-instance v0, Lcom/lge/hiddenmenu/device_test/RtcTest$4;

    invoke-direct {v0, p0}, Lcom/lge/hiddenmenu/device_test/RtcTest$4;-><init>(Lcom/lge/hiddenmenu/device_test/RtcTest;)V

    iput-object v0, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mTicker:Ljava/lang/Runnable;

    .line 230
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 232
    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .registers 3

    .prologue
    .line 243
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 244
    .local v0, t:Landroid/widget/TextView;
    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 245
    const/high16 v1, 0x4210

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 246
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    const/4 v3, 0x2

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v1, 0x7f03002e

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/RtcTest;->setContentView(I)V

    .line 89
    invoke-virtual {p0, v3}, Lcom/lge/hiddenmenu/device_test/RtcTest;->setDefaultKeyMode(I)V

    .line 91
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mCalendar:Ljava/util/Calendar;

    .line 93
    const v1, 0x7f0700c8

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/RtcTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mDateDisplay:Landroid/widget/TextView;

    .line 94
    const v1, 0x7f0700ca

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/RtcTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mTimeDisplay:Landroid/widget/TextView;

    .line 97
    const v1, 0x7f0700c9

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/RtcTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mPickDate:Landroid/widget/Button;

    .line 98
    const v1, 0x7f0700cb

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/RtcTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mPickTime:Landroid/widget/Button;

    .line 99
    const v1, 0x7f0700cc

    invoke-virtual {p0, v1}, Lcom/lge/hiddenmenu/device_test/RtcTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mPickTimePref:Landroid/widget/CheckBox;

    .line 100
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mPickTimePref:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/RtcTest;->is24Hour()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 101
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mPickTimePref:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 102
    const-string v1, "k:mm:ss"

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mFormat:Ljava/lang/String;

    .line 107
    :goto_63
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mPickDate:Landroid/widget/Button;

    new-instance v2, Lcom/lge/hiddenmenu/device_test/RtcTest$1;

    invoke-direct {v2, p0}, Lcom/lge/hiddenmenu/device_test/RtcTest$1;-><init>(Lcom/lge/hiddenmenu/device_test/RtcTest;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mPickTime:Landroid/widget/Button;

    new-instance v2, Lcom/lge/hiddenmenu/device_test/RtcTest$2;

    invoke-direct {v2, p0}, Lcom/lge/hiddenmenu/device_test/RtcTest$2;-><init>(Lcom/lge/hiddenmenu/device_test/RtcTest;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mPickTimePref:Landroid/widget/CheckBox;

    new-instance v2, Lcom/lge/hiddenmenu/device_test/RtcTest$3;

    invoke-direct {v2, p0}, Lcom/lge/hiddenmenu/device_test/RtcTest$3;-><init>(Lcom/lge/hiddenmenu/device_test/RtcTest;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 134
    .local v0, c:Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mYear:I

    .line 135
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mMonth:I

    .line 136
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mDay:I

    .line 137
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mHour:I

    .line 138
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mMinute:I

    .line 139
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mSecond:I

    .line 141
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/RtcTest;->updateClock()V

    .line 142
    return-void

    .line 104
    .end local v0           #c:Ljava/util/Calendar;
    :cond_b5
    const-string v1, "h:mm:ss aa"

    iput-object v1, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mFormat:Ljava/lang/String;

    goto :goto_63
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9
    .parameter "id"

    .prologue
    .line 148
    packed-switch p1, :pswitch_data_26

    .line 159
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 150
    :pswitch_5
    new-instance v0, Landroid/app/DatePickerDialog;

    iget v3, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mYear:I

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mMonth:I

    iget v5, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mDay:I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_4

    .line 154
    :pswitch_13
    new-instance v0, Landroid/app/LGETimePickerDialog;

    iget v3, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mHour:I

    iget v4, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mMinute:I

    iget v5, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mSecond:I

    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/RtcTest;->is24Hour()Z

    move-result v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Landroid/app/LGETimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/LGETimePickerDialog$OnLGETimeSetListener;IIIZ)V

    goto :goto_4

    .line 148
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_5
        :pswitch_13
    .end packed-switch
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .registers 12
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 250
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 252
    .local v0, c:Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 253
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 254
    const/4 v3, 0x5

    invoke-virtual {v0, v3, p4}, Ljava/util/Calendar;->set(II)V

    .line 255
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 257
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_22

    .line 258
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 260
    :cond_22
    return-void
.end method

.method public onLGETimeSet(Landroid/widget/LGETimePicker;III)V
    .registers 12
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "second"

    .prologue
    .line 263
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 265
    .local v0, c:Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 266
    const/16 v3, 0xc

    invoke-virtual {v0, v3, p3}, Ljava/util/Calendar;->set(II)V

    .line 267
    const/16 v3, 0xd

    invoke-virtual {v0, v3, p4}, Ljava/util/Calendar;->set(II)V

    .line 268
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 270
    .local v1, when:J
    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gez v3, :cond_25

    .line 271
    invoke-static {v1, v2}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 273
    :cond_25
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 206
    iget-object v0, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/hiddenmenu/device_test/RtcTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 207
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 10
    .parameter "id"
    .parameter "d"

    .prologue
    .line 165
    packed-switch p1, :pswitch_data_3e

    .line 188
    :goto_3
    return-void

    .line 167
    :pswitch_4
    move-object v0, p2

    check-cast v0, Landroid/app/DatePickerDialog;

    move-object v2, v0

    .line 168
    .local v2, datePicker:Landroid/app/DatePickerDialog;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 169
    .local v1, calendar:Ljava/util/Calendar;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/app/DatePickerDialog;->updateDate(III)V

    goto :goto_3

    .line 177
    .end local v1           #calendar:Ljava/util/Calendar;
    .end local v2           #datePicker:Landroid/app/DatePickerDialog;
    :pswitch_1f
    move-object v0, p2

    check-cast v0, Landroid/app/LGETimePickerDialog;

    move-object v3, v0

    .line 178
    .local v3, timePicker:Landroid/app/LGETimePickerDialog;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 179
    .restart local v1       #calendar:Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0xd

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/LGETimePickerDialog;->updateTime(III)V

    goto :goto_3

    .line 165
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1f
    .end packed-switch
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 192
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 193
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mPickTimePref:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/RtcTest;->is24Hour()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 195
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 196
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v3, v3}, Lcom/lge/hiddenmenu/device_test/RtcTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 200
    invoke-direct {p0}, Lcom/lge/hiddenmenu/device_test/RtcTest;->updateClock()V

    .line 201
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 237
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/hiddenmenu/device_test/RtcTest;->mTickerStopped:Z

    .line 240
    return-void
.end method
