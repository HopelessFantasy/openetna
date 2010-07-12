.class public Landroid/app/LGETimePickerDialog;
.super Landroid/app/AlertDialog;
.source "LGETimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/LGETimePicker$OnLGETimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/LGETimePickerDialog$OnLGETimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final HOURS_12:Ljava/lang/String; = "12"

.field private static final HOURS_24:Ljava/lang/String; = "24"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"

.field private static final SECOND:Ljava/lang/String; = "second"

.field private static final m12:Ljava/lang/String; = "h:mm:ss aa"

.field private static final m24:Ljava/lang/String; = "k:mm:ss"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallback:Landroid/app/LGETimePickerDialog$OnLGETimeSetListener;

.field private final mDateFormat:Ljava/text/DateFormat;

.field mFormat:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field mInitialHourOfDay:I

.field mInitialMinute:I

.field mInitialSecond:I

.field mIs24HourView:Z

.field private mTicker:Ljava/lang/Runnable;

.field private mTickerStopped:Z

.field private final mTimePicker:Landroid/widget/LGETimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/app/LGETimePickerDialog$OnLGETimeSetListener;IIIZ)V
    .registers 15
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "second"
    .parameter "is24HourView"

    .prologue
    const/4 v4, 0x0

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 84
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/app/LGETimePickerDialog;->mTickerStopped:Z

    .line 113
    iput-object p3, p0, Landroid/app/LGETimePickerDialog;->mCallback:Landroid/app/LGETimePickerDialog$OnLGETimeSetListener;

    .line 114
    iput p4, p0, Landroid/app/LGETimePickerDialog;->mInitialHourOfDay:I

    .line 115
    iput p5, p0, Landroid/app/LGETimePickerDialog;->mInitialMinute:I

    .line 116
    iput p6, p0, Landroid/app/LGETimePickerDialog;->mInitialSecond:I

    .line 117
    iput-boolean p7, p0, Landroid/app/LGETimePickerDialog;->mIs24HourView:Z

    .line 119
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    iput-object v3, p0, Landroid/app/LGETimePickerDialog;->mDateFormat:Ljava/text/DateFormat;

    .line 120
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Landroid/app/LGETimePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 121
    iget v3, p0, Landroid/app/LGETimePickerDialog;->mInitialHourOfDay:I

    iget v5, p0, Landroid/app/LGETimePickerDialog;->mInitialMinute:I

    iget v6, p0, Landroid/app/LGETimePickerDialog;->mInitialSecond:I

    invoke-direct {p0, v3, v5, v6}, Landroid/app/LGETimePickerDialog;->updateTitle(III)V

    .line 123
    const v3, 0x10402bd

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3, p0}, Landroid/app/LGETimePickerDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 124
    const/high16 v3, 0x104

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v4

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    move-object v3, v0

    invoke-virtual {p0, v5, v3}, Landroid/app/LGETimePickerDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 125
    const v3, 0x1080172

    invoke-virtual {p0, v3}, Landroid/app/LGETimePickerDialog;->setIcon(I)V

    .line 127
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 129
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x109006d

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 130
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/app/LGETimePickerDialog;->setView(Landroid/view/View;)V

    .line 131
    const v3, 0x10201fb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LGETimePicker;

    iput-object v3, p0, Landroid/app/LGETimePickerDialog;->mTimePicker:Landroid/widget/LGETimePicker;

    .line 134
    iget-object v3, p0, Landroid/app/LGETimePickerDialog;->mTimePicker:Landroid/widget/LGETimePicker;

    iget v4, p0, Landroid/app/LGETimePickerDialog;->mInitialHourOfDay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LGETimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 135
    iget-object v3, p0, Landroid/app/LGETimePickerDialog;->mTimePicker:Landroid/widget/LGETimePicker;

    iget v4, p0, Landroid/app/LGETimePickerDialog;->mInitialMinute:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LGETimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 136
    iget-object v3, p0, Landroid/app/LGETimePickerDialog;->mTimePicker:Landroid/widget/LGETimePicker;

    iget v4, p0, Landroid/app/LGETimePickerDialog;->mInitialSecond:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LGETimePicker;->setCurrentSecond(Ljava/lang/Integer;)V

    .line 137
    iget-object v3, p0, Landroid/app/LGETimePickerDialog;->mTimePicker:Landroid/widget/LGETimePicker;

    iget-boolean v4, p0, Landroid/app/LGETimePickerDialog;->mIs24HourView:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LGETimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 138
    iget-object v3, p0, Landroid/app/LGETimePickerDialog;->mTimePicker:Landroid/widget/LGETimePicker;

    invoke-virtual {v3, p0}, Landroid/widget/LGETimePicker;->setOnTimeChangedListener(Landroid/widget/LGETimePicker$OnLGETimeChangedListener;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/LGETimePickerDialog$OnLGETimeSetListener;IIIZ)V
    .registers 15
    .parameter "context"
    .parameter "callBack"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "second"
    .parameter "is24HourView"

    .prologue
    .line 96
    const v2, 0x1030085

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/LGETimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/LGETimePickerDialog$OnLGETimeSetListener;IIIZ)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Landroid/app/LGETimePickerDialog;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Landroid/app/LGETimePickerDialog;->mTickerStopped:Z

    return v0
.end method

.method static synthetic access$100(Landroid/app/LGETimePickerDialog;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/app/LGETimePickerDialog;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/LGETimePickerDialog;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/app/LGETimePickerDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updateTitle(III)V
    .registers 5
    .parameter "hour"
    .parameter "minute"
    .parameter "second"

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/LGETimePickerDialog;->mTickerStopped:Z

    .line 161
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/app/LGETimePickerDialog;->mHandler:Landroid/os/Handler;

    .line 163
    new-instance v0, Landroid/app/LGETimePickerDialog$1;

    invoke-direct {v0, p0}, Landroid/app/LGETimePickerDialog$1;-><init>(Landroid/app/LGETimePickerDialog;)V

    iput-object v0, p0, Landroid/app/LGETimePickerDialog;->mTicker:Ljava/lang/Runnable;

    .line 175
    iget-object v0, p0, Landroid/app/LGETimePickerDialog;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 176
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 142
    iget-object v0, p0, Landroid/app/LGETimePickerDialog;->mCallback:Landroid/app/LGETimePickerDialog$OnLGETimeSetListener;

    if-eqz v0, :cond_2e

    .line 143
    iget-object v0, p0, Landroid/app/LGETimePickerDialog;->mTimePicker:Landroid/widget/LGETimePicker;

    invoke-virtual {v0}, Landroid/widget/LGETimePicker;->clearFocus()V

    .line 144
    iget-object v0, p0, Landroid/app/LGETimePickerDialog;->mCallback:Landroid/app/LGETimePickerDialog$OnLGETimeSetListener;

    iget-object v1, p0, Landroid/app/LGETimePickerDialog;->mTimePicker:Landroid/widget/LGETimePicker;

    iget-object v2, p0, Landroid/app/LGETimePickerDialog;->mTimePicker:Landroid/widget/LGETimePicker;

    invoke-virtual {v2}, Landroid/widget/LGETimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/app/LGETimePickerDialog;->mTimePicker:Landroid/widget/LGETimePicker;

    invoke-virtual {v3}, Landroid/widget/LGETimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Landroid/app/LGETimePickerDialog;->mTimePicker:Landroid/widget/LGETimePicker;

    invoke-virtual {v4}, Landroid/widget/LGETimePicker;->getCurrentSecond()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/LGETimePickerDialog$OnLGETimeSetListener;->onLGETimeSet(Landroid/widget/LGETimePicker;III)V

    .line 147
    :cond_2e
    return-void
.end method

.method public onLGETimeChanged(Landroid/widget/LGETimePicker;III)V
    .registers 5
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "second"

    .prologue
    .line 150
    invoke-direct {p0, p2, p3, p4}, Landroid/app/LGETimePickerDialog;->updateTitle(III)V

    .line 151
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 191
    const-string v3, "hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 192
    .local v0, hour:I
    const-string v3, "minute"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 193
    .local v1, minute:I
    const-string v3, "second"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 194
    .local v2, second:I
    iget-object v3, p0, Landroid/app/LGETimePickerDialog;->mTimePicker:Landroid/widget/LGETimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LGETimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 195
    iget-object v3, p0, Landroid/app/LGETimePickerDialog;->mTimePicker:Landroid/widget/LGETimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LGETimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 196
    iget-object v3, p0, Landroid/app/LGETimePickerDialog;->mTimePicker:Landroid/widget/LGETimePicker;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LGETimePicker;->setCurrentSecond(Ljava/lang/Integer;)V

    .line 197
    iget-object v3, p0, Landroid/app/LGETimePickerDialog;->mTimePicker:Landroid/widget/LGETimePicker;

    const-string v4, "is24hour"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LGETimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 198
    iget-object v3, p0, Landroid/app/LGETimePickerDialog;->mTimePicker:Landroid/widget/LGETimePicker;

    invoke-virtual {v3, p0}, Landroid/widget/LGETimePicker;->setOnTimeChangedListener(Landroid/widget/LGETimePicker$OnLGETimeChangedListener;)V

    .line 199
    invoke-direct {p0, v0, v1, v2}, Landroid/app/LGETimePickerDialog;->updateTitle(III)V

    .line 200
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 181
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "hour"

    iget-object v2, p0, Landroid/app/LGETimePickerDialog;->mTimePicker:Landroid/widget/LGETimePicker;

    invoke-virtual {v2}, Landroid/widget/LGETimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    const-string v1, "minute"

    iget-object v2, p0, Landroid/app/LGETimePickerDialog;->mTimePicker:Landroid/widget/LGETimePicker;

    invoke-virtual {v2}, Landroid/widget/LGETimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    const-string v1, "second"

    iget-object v2, p0, Landroid/app/LGETimePickerDialog;->mTimePicker:Landroid/widget/LGETimePicker;

    invoke-virtual {v2}, Landroid/widget/LGETimePicker;->getCurrentSecond()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    const-string v1, "is24hour"

    iget-object v2, p0, Landroid/app/LGETimePickerDialog;->mTimePicker:Landroid/widget/LGETimePicker;

    invoke-virtual {v2}, Landroid/widget/LGETimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 185
    return-object v0
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/LGETimePickerDialog;->mTickerStopped:Z

    .line 207
    return-void
.end method

.method public updateTime(III)V
    .registers 6
    .parameter "hourOfDay"
    .parameter "minutOfHour"
    .parameter "secondOfHour"

    .prologue
    .line 154
    iget-object v0, p0, Landroid/app/LGETimePickerDialog;->mTimePicker:Landroid/widget/LGETimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LGETimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 155
    iget-object v0, p0, Landroid/app/LGETimePickerDialog;->mTimePicker:Landroid/widget/LGETimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LGETimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 156
    iget-object v0, p0, Landroid/app/LGETimePickerDialog;->mTimePicker:Landroid/widget/LGETimePicker;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LGETimePicker;->setCurrentSecond(Ljava/lang/Integer;)V

    .line 157
    return-void
.end method
