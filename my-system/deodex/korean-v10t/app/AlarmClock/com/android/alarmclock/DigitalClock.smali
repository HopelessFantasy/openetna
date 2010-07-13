.class public Lcom/android/alarmclock/DigitalClock;
.super Landroid/widget/LinearLayout;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/alarmclock/DigitalClock$FormatChangeObserver;,
        Lcom/android/alarmclock/DigitalClock$AmPm;
    }
.end annotation


# static fields
.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "k:mm"


# instance fields
.field private mAmPm:Lcom/android/alarmclock/DigitalClock$AmPm;

.field private mAnimate:Z

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLive:Z

.field private mTimeDisplay:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/alarmclock/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/alarmclock/DigitalClock;->mLive:Z

    .line 54
    invoke-virtual {p0}, Lcom/android/alarmclock/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/alarmclock/DigitalClock;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/alarmclock/DigitalClock;->mHandler:Landroid/os/Handler;

    .line 58
    new-instance v0, Lcom/android/alarmclock/DigitalClock$1;

    invoke-direct {v0, p0}, Lcom/android/alarmclock/DigitalClock$1;-><init>(Lcom/android/alarmclock/DigitalClock;)V

    iput-object v0, p0, Lcom/android/alarmclock/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/alarmclock/DigitalClock;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/alarmclock/DigitalClock;->mLive:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/alarmclock/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/alarmclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/alarmclock/DigitalClock;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/alarmclock/DigitalClock;->updateTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/alarmclock/DigitalClock;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/alarmclock/DigitalClock;->setDateFormat()V

    return-void
.end method

.method private setDateFormat()V
    .registers 5

    .prologue
    const-string v3, "h:mm"

    .line 200
    iget-object v0, p0, Lcom/android/alarmclock/DigitalClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/alarmclock/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "k:mm"

    :goto_c
    iput-object v0, p0, Lcom/android/alarmclock/DigitalClock;->mFormat:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/android/alarmclock/DigitalClock;->mAmPm:Lcom/android/alarmclock/DigitalClock$AmPm;

    iget-object v1, p0, Lcom/android/alarmclock/DigitalClock;->mFormat:Ljava/lang/String;

    const-string v2, "h:mm"

    if-ne v1, v3, :cond_1f

    const/4 v1, 0x1

    :goto_17
    invoke-virtual {v0, v1}, Lcom/android/alarmclock/DigitalClock$AmPm;->setShowAmPm(Z)V

    .line 202
    return-void

    .line 200
    :cond_1b
    const-string v0, "h:mm"

    move-object v0, v3

    goto :goto_c

    .line 201
    :cond_1f
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private updateTime()V
    .registers 5

    .prologue
    .line 190
    iget-boolean v1, p0, Lcom/android/alarmclock/DigitalClock;->mLive:Z

    if-eqz v1, :cond_d

    .line 191
    iget-object v1, p0, Lcom/android/alarmclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 194
    :cond_d
    iget-object v1, p0, Lcom/android/alarmclock/DigitalClock;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/alarmclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 195
    .local v0, newTime:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/alarmclock/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v1, p0, Lcom/android/alarmclock/DigitalClock;->mAmPm:Lcom/android/alarmclock/DigitalClock$AmPm;

    iget-object v2, p0, Lcom/android/alarmclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_2b

    const/4 v2, 0x1

    :goto_27
    invoke-virtual {v1, v2}, Lcom/android/alarmclock/DigitalClock$AmPm;->setIsMorning(Z)V

    .line 197
    return-void

    .line 196
    :cond_2b
    const/4 v2, 0x0

    goto :goto_27
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 127
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 131
    iget-boolean v3, p0, Lcom/android/alarmclock/DigitalClock;->mAttached:Z

    if-eqz v3, :cond_9

    .line 162
    :goto_8
    return-void

    .line 132
    :cond_9
    iput-boolean v7, p0, Lcom/android/alarmclock/DigitalClock;->mAttached:Z

    .line 134
    iget-boolean v3, p0, Lcom/android/alarmclock/DigitalClock;->mAnimate:Z

    if-eqz v3, :cond_33

    .line 135
    iget-object v3, p0, Lcom/android/alarmclock/DigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f02

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    .line 138
    .local v2, frameAnimation:Landroid/graphics/drawable/AnimationDrawable;
    const v3, 0x7f0a000a

    invoke-virtual {p0, v3}, Lcom/android/alarmclock/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, digitalClock:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 144
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 147
    .end local v0           #digitalClock:Landroid/view/View;
    .end local v2           #frameAnimation:Landroid/graphics/drawable/AnimationDrawable;
    :cond_33
    iget-boolean v3, p0, Lcom/android/alarmclock/DigitalClock;->mLive:Z

    if-eqz v3, :cond_55

    .line 149
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 150
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v3, p0, Lcom/android/alarmclock/DigitalClock;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/alarmclock/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/alarmclock/DigitalClock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 157
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_55
    new-instance v3, Lcom/android/alarmclock/DigitalClock$FormatChangeObserver;

    invoke-direct {v3, p0}, Lcom/android/alarmclock/DigitalClock$FormatChangeObserver;-><init>(Lcom/android/alarmclock/DigitalClock;)V

    iput-object v3, p0, Lcom/android/alarmclock/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 158
    iget-object v3, p0, Lcom/android/alarmclock/DigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/alarmclock/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 161
    invoke-direct {p0}, Lcom/android/alarmclock/DigitalClock;->updateTime()V

    goto :goto_8
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    .line 166
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 168
    iget-boolean v1, p0, Lcom/android/alarmclock/DigitalClock;->mAttached:Z

    if-nez v1, :cond_8

    .line 181
    :goto_7
    return-void

    .line 169
    :cond_8
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/alarmclock/DigitalClock;->mAttached:Z

    .line 171
    invoke-virtual {p0}, Lcom/android/alarmclock/DigitalClock;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 172
    .local v0, background:Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_18

    .line 173
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 176
    :cond_18
    iget-boolean v1, p0, Lcom/android/alarmclock/DigitalClock;->mLive:Z

    if-eqz v1, :cond_23

    .line 177
    iget-object v1, p0, Lcom/android/alarmclock/DigitalClock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/alarmclock/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    :cond_23
    iget-object v1, p0, Lcom/android/alarmclock/DigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/alarmclock/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_7
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 116
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 118
    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/android/alarmclock/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/alarmclock/DigitalClock;->mTimeDisplay:Landroid/widget/TextView;

    .line 119
    new-instance v0, Lcom/android/alarmclock/DigitalClock$AmPm;

    invoke-direct {v0, p0}, Lcom/android/alarmclock/DigitalClock$AmPm;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/alarmclock/DigitalClock;->mAmPm:Lcom/android/alarmclock/DigitalClock$AmPm;

    .line 120
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/alarmclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 122
    invoke-direct {p0}, Lcom/android/alarmclock/DigitalClock;->setDateFormat()V

    .line 123
    return-void
.end method

.method setAnimate()V
    .registers 2

    .prologue
    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/alarmclock/DigitalClock;->mAnimate:Z

    .line 206
    return-void
.end method

.method setLive(Z)V
    .registers 2
    .parameter "live"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/alarmclock/DigitalClock;->mLive:Z

    .line 210
    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/alarmclock/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 186
    invoke-direct {p0}, Lcom/android/alarmclock/DigitalClock;->updateTime()V

    .line 187
    return-void
.end method
