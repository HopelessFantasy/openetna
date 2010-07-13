.class public Lcom/android/alarmclock/AlarmAlert;
.super Landroid/app/Activity;
.source "AlarmAlert.java"


# static fields
.field private static final DISMISS:I = 0x2

.field private static final KILLED:I = 0x3

.field private static final MAX_SNOOZE:I = 0x5

.field private static final SNOOZE:I = 0x1

.field private static final SNOOZE_MINUTES:I = 0xa

.field private static final UNKNOWN:I


# instance fields
.field private mAlarmId:I

.field private mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKlaxon:Lcom/android/alarmclock/AlarmKlaxon;

.field private mLabel:Ljava/lang/String;

.field private mSnoozeButton:Landroid/widget/Button;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/alarmclock/AlarmAlert;->mState:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/alarmclock/AlarmAlert;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/alarmclock/AlarmAlert;->snooze()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/alarmclock/AlarmAlert;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/alarmclock/AlarmAlert;->dismiss()V

    return-void
.end method

.method private declared-synchronized disableKeyguard()V
    .registers 3

    .prologue
    .line 366
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/alarmclock/AlarmAlert;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v0, :cond_14

    .line 367
    iget-object v0, p0, Lcom/android/alarmclock/AlarmAlert;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "AlarmClock"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/alarmclock/AlarmAlert;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 368
    iget-object v0, p0, Lcom/android/alarmclock/AlarmAlert;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 370
    :cond_14
    monitor-exit p0

    return-void

    .line 366
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private dismiss()V
    .registers 3

    .prologue
    .line 256
    iget v0, p0, Lcom/android/alarmclock/AlarmAlert;->mState:I

    if-eqz v0, :cond_5

    .line 264
    :goto_4
    return-void

    .line 259
    :cond_5
    invoke-static {}, Lcom/android/alarmclock/Alarms;->resetSnoozeCount()V

    .line 260
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/alarmclock/AlarmAlert;->mState:I

    .line 261
    iget-object v0, p0, Lcom/android/alarmclock/AlarmAlert;->mKlaxon:Lcom/android/alarmclock/AlarmKlaxon;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/alarmclock/AlarmKlaxon;->stop(Landroid/content/Context;Z)V

    .line 262
    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;)I

    .line 263
    invoke-direct {p0}, Lcom/android/alarmclock/AlarmAlert;->releaseLocks()V

    goto :goto_4
.end method

.method private declared-synchronized enableKeyguard()V
    .registers 2

    .prologue
    .line 359
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/alarmclock/AlarmAlert;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_d

    .line 360
    iget-object v0, p0, Lcom/android/alarmclock/AlarmAlert;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/alarmclock/AlarmAlert;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 363
    :cond_d
    monitor-exit p0

    return-void

    .line 359
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized releaseLocks()V
    .registers 2

    .prologue
    .line 376
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/android/alarmclock/AlarmAlertWakeLock;->release()V

    .line 377
    invoke-direct {p0}, Lcom/android/alarmclock/AlarmAlert;->enableKeyguard()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 378
    monitor-exit p0

    return-void

    .line 376
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setTitleFromIntent(Landroid/content/Intent;)V
    .registers 6
    .parameter "i"

    .prologue
    const/16 v3, 0xd

    .line 145
    const-string v0, "alarm_label"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/alarmclock/AlarmAlert;->mLabel:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/android/alarmclock/AlarmAlert;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/alarmclock/AlarmAlert;->mLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1f

    .line 147
    :cond_16
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/android/alarmclock/AlarmAlert;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/alarmclock/AlarmAlert;->mLabel:Ljava/lang/String;

    .line 149
    :cond_1f
    iget-object v0, p0, Lcom/android/alarmclock/AlarmAlert;->mLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_45

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/alarmclock/AlarmAlert;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/alarmclock/AlarmAlert;->mLabel:Ljava/lang/String;

    .line 154
    :cond_3f
    :goto_3f
    iget-object v0, p0, Lcom/android/alarmclock/AlarmAlert;->mLabel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/alarmclock/AlarmAlert;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    return-void

    .line 151
    :cond_45
    iget-object v0, p0, Lcom/android/alarmclock/AlarmAlert;->mLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_3f

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/alarmclock/AlarmAlert;->mLabel:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/alarmclock/AlarmAlert;->mLabel:Ljava/lang/String;

    goto :goto_3f
.end method

.method private snooze()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 217
    iget v0, p0, Lcom/android/alarmclock/AlarmAlert;->mState:I

    if-eqz v0, :cond_7

    .line 252
    :goto_6
    return-void

    .line 222
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v4, 0x927c0

    add-long v2, v0, v4

    .line 224
    .local v2, snoozeTime:J
    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->calculateNextAlert(Landroid/content/Context;)Lcom/android/alarmclock/Alarms$AlarmCalculator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/alarmclock/Alarms$AlarmCalculator;->getAlert()J

    move-result-wide v8

    .line 226
    .local v8, nextAlarm:J
    const/4 v7, 0x0

    .line 227
    .local v7, displayTime:Ljava/lang/String;
    cmp-long v0, v8, v2

    if-gez v0, :cond_51

    .line 228
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 229
    .local v6, c:Ljava/util/Calendar;
    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 230
    const v0, 0x7f070018

    new-array v1, v10, [Ljava/lang/Object;

    invoke-static {p0, v6}, Lcom/android/alarmclock/Alarms;->formatTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v11

    invoke-virtual {p0, v0, v1}, Lcom/android/alarmclock/AlarmAlert;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 232
    invoke-static {}, Lcom/android/alarmclock/Alarms;->resetSnoozeCount()V

    .line 233
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/alarmclock/AlarmAlert;->mState:I

    .line 247
    .end local v6           #c:Ljava/util/Calendar;
    :goto_39
    invoke-static {v7}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 249
    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 250
    iget-object v0, p0, Lcom/android/alarmclock/AlarmAlert;->mKlaxon:Lcom/android/alarmclock/AlarmKlaxon;

    iget v1, p0, Lcom/android/alarmclock/AlarmAlert;->mState:I

    if-ne v1, v10, :cond_7c

    move v1, v10

    :goto_4a
    invoke-virtual {v0, p0, v1}, Lcom/android/alarmclock/AlarmKlaxon;->stop(Landroid/content/Context;Z)V

    .line 251
    invoke-direct {p0}, Lcom/android/alarmclock/AlarmAlert;->releaseLocks()V

    goto :goto_6

    .line 237
    :cond_51
    iget v1, p0, Lcom/android/alarmclock/AlarmAlert;->mAlarmId:I

    iget-object v4, p0, Lcom/android/alarmclock/AlarmAlert;->mLabel:Ljava/lang/String;

    invoke-static {}, Lcom/android/alarmclock/Alarms;->getSnoozeCount()I

    move-result v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/alarmclock/Alarms;->saveSnoozeAlert(Landroid/content/Context;IJLjava/lang/String;I)V

    .line 239
    invoke-static {v2, v3}, Lcom/android/alarmclock/Alarms;->setSnoozeTime(J)V

    .line 240
    iget-object v0, p0, Lcom/android/alarmclock/AlarmAlert;->mLabel:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/alarmclock/Alarms;->setSnoozeLabel(Ljava/lang/String;)V

    .line 241
    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 242
    const v0, 0x7f070017

    new-array v1, v10, [Ljava/lang/Object;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v11

    invoke-virtual {p0, v0, v1}, Lcom/android/alarmclock/AlarmAlert;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 244
    iput v10, p0, Lcom/android/alarmclock/AlarmAlert;->mState:I

    goto :goto_39

    :cond_7c
    move v1, v11

    .line 250
    goto :goto_4a
.end method

.method private updateLayout()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 165
    const/high16 v5, 0x7f03

    invoke-virtual {p0, v5}, Lcom/android/alarmclock/AlarmAlert;->setContentView(I)V

    .line 168
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 169
    .local v3, mFactory:Landroid/view/LayoutInflater;
    const-string v5, "AlarmClock"

    invoke-virtual {p0, v5, v7}, Lcom/android/alarmclock/AlarmAlert;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 171
    .local v4, settings:Landroid/content/SharedPreferences;
    const-string v5, "face"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 172
    .local v2, face:I
    if-ltz v2, :cond_1d

    sget-object v5, Lcom/android/alarmclock/AlarmClock;->CLOCKS:[I

    array-length v5, v5

    if-lt v2, v5, :cond_1e

    .line 173
    :cond_1d
    const/4 v2, 0x0

    .line 175
    :cond_1e
    sget-object v5, Lcom/android/alarmclock/AlarmClock;->CLOCKS:[I

    aget v5, v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 177
    .local v0, clockLayout:Landroid/view/View;
    const v5, 0x7f0a0001

    invoke-virtual {p0, v5}, Lcom/android/alarmclock/AlarmAlert;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 178
    .local v1, clockView:Landroid/view/ViewGroup;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 179
    instance-of v5, v0, Lcom/android/alarmclock/DigitalClock;

    if-eqz v5, :cond_3c

    .line 180
    check-cast v0, Lcom/android/alarmclock/DigitalClock;

    .end local v0           #clockLayout:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/alarmclock/DigitalClock;->setAnimate()V

    .line 185
    :cond_3c
    const v5, 0x7f0a0002

    invoke-virtual {p0, v5}, Lcom/android/alarmclock/AlarmAlert;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/alarmclock/AlarmAlert;->mSnoozeButton:Landroid/widget/Button;

    .line 186
    iget-object v5, p0, Lcom/android/alarmclock/AlarmAlert;->mSnoozeButton:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->requestFocus()Z

    .line 189
    iget v5, p0, Lcom/android/alarmclock/AlarmAlert;->mState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_69

    .line 191
    invoke-direct {p0}, Lcom/android/alarmclock/AlarmAlert;->updateSilencedText()V

    .line 192
    iget-object v5, p0, Lcom/android/alarmclock/AlarmAlert;->mSnoozeButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 205
    :goto_59
    const v5, 0x7f0a0003

    invoke-virtual {p0, v5}, Lcom/android/alarmclock/AlarmAlert;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/android/alarmclock/AlarmAlert$3;

    invoke-direct {v6, p0}, Lcom/android/alarmclock/AlarmAlert$3;-><init>(Lcom/android/alarmclock/AlarmAlert;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    return-void

    .line 196
    :cond_69
    iget-object v5, p0, Lcom/android/alarmclock/AlarmAlert;->mSnoozeButton:Landroid/widget/Button;

    new-instance v6, Lcom/android/alarmclock/AlarmAlert$2;

    invoke-direct {v6, p0}, Lcom/android/alarmclock/AlarmAlert$2;-><init>(Lcom/android/alarmclock/AlarmAlert;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_59
.end method

.method private updateSilencedText()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 158
    const v1, 0x7f0a0004

    invoke-virtual {p0, v1}, Lcom/android/alarmclock/AlarmAlert;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 159
    .local v0, silenced:Landroid/widget/TextView;
    const v1, 0x7f070015

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/alarmclock/AlarmAlert;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 322
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_20

    move v1, v3

    .line 323
    .local v1, up:Z
    :goto_8
    const/4 v0, 0x0

    .line 324
    .local v0, dismiss:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_2e

    .line 345
    iget v2, p0, Lcom/android/alarmclock/AlarmAlert;->mState:I

    if-nez v2, :cond_1e

    if-eqz v1, :cond_1e

    .line 346
    if-eqz v0, :cond_29

    .line 347
    invoke-direct {p0}, Lcom/android/alarmclock/AlarmAlert;->dismiss()V

    .line 351
    :goto_1b
    invoke-virtual {p0}, Lcom/android/alarmclock/AlarmAlert;->finish()V

    :cond_1e
    move v2, v3

    .line 355
    :goto_1f
    return v2

    .line 322
    .end local v0           #dismiss:Z
    .end local v1           #up:Z
    :cond_20
    const/4 v2, 0x0

    move v1, v2

    goto :goto_8

    .line 338
    .restart local v0       #dismiss:Z
    .restart local v1       #up:Z
    :sswitch_23
    const/4 v0, 0x1

    .line 355
    :sswitch_24
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_1f

    .line 349
    :cond_29
    invoke-direct {p0}, Lcom/android/alarmclock/AlarmAlert;->snooze()V

    goto :goto_1b

    .line 324
    nop

    :sswitch_data_2e
    .sparse-switch
        0x6 -> :sswitch_24
        0x13 -> :sswitch_24
        0x14 -> :sswitch_24
        0x15 -> :sswitch_24
        0x16 -> :sswitch_24
        0x17 -> :sswitch_24
        0x18 -> :sswitch_23
        0x19 -> :sswitch_23
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "config"

    .prologue
    .line 313
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 314
    invoke-direct {p0}, Lcom/android/alarmclock/AlarmAlert;->updateLayout()V

    .line 315
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    const/4 v3, -0x2

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-static {p0}, Lcom/android/alarmclock/AlarmAlertWakeLock;->acquire(Landroid/content/Context;)V

    .line 72
    const-string v2, "AlarmAlert.onCreate()"

    invoke-static {v2}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/alarmclock/AlarmAlert;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 76
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 77
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 83
    const/16 v2, 0x7d3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 84
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 85
    invoke-virtual {p0}, Lcom/android/alarmclock/AlarmAlert;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/alarmclock/AlarmAlert;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 88
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/android/alarmclock/AlarmAlert;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/alarmclock/AlarmAlert;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 90
    invoke-virtual {p0}, Lcom/android/alarmclock/AlarmAlert;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 91
    .local v0, i:Landroid/content/Intent;
    const-string v2, "alarm_id"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/alarmclock/AlarmAlert;->mAlarmId:I

    .line 93
    new-instance v2, Lcom/android/alarmclock/AlarmKlaxon;

    invoke-direct {v2}, Lcom/android/alarmclock/AlarmKlaxon;-><init>()V

    iput-object v2, p0, Lcom/android/alarmclock/AlarmAlert;->mKlaxon:Lcom/android/alarmclock/AlarmKlaxon;

    .line 94
    iget-object v2, p0, Lcom/android/alarmclock/AlarmAlert;->mKlaxon:Lcom/android/alarmclock/AlarmKlaxon;

    iget v3, p0, Lcom/android/alarmclock/AlarmAlert;->mAlarmId:I

    invoke-virtual {v2, p0, v3}, Lcom/android/alarmclock/AlarmKlaxon;->postPlay(Landroid/content/Context;I)V

    .line 97
    invoke-direct {p0, v0}, Lcom/android/alarmclock/AlarmAlert;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 101
    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;)I

    .line 102
    iget v2, p0, Lcom/android/alarmclock/AlarmAlert;->mAlarmId:I

    invoke-static {p0, v2}, Lcom/android/alarmclock/Alarms;->disableAlert(Landroid/content/Context;I)V

    .line 103
    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 105
    iget-object v2, p0, Lcom/android/alarmclock/AlarmAlert;->mKlaxon:Lcom/android/alarmclock/AlarmKlaxon;

    new-instance v3, Lcom/android/alarmclock/AlarmAlert$1;

    invoke-direct {v3, p0}, Lcom/android/alarmclock/AlarmAlert$1;-><init>(Lcom/android/alarmclock/AlarmAlert;)V

    invoke-virtual {v2, v3}, Lcom/android/alarmclock/AlarmKlaxon;->setKillerCallback(Lcom/android/alarmclock/AlarmKlaxon$KillerCallback;)V

    .line 141
    invoke-direct {p0}, Lcom/android/alarmclock/AlarmAlert;->updateLayout()V

    .line 142
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 272
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 274
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/alarmclock/AlarmAlert;->mState:I

    .line 275
    iget-object v1, p0, Lcom/android/alarmclock/AlarmAlert;->mSnoozeButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 276
    invoke-direct {p0}, Lcom/android/alarmclock/AlarmAlert;->disableKeyguard()V

    .line 278
    const-string v1, "alarm_id"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/alarmclock/AlarmAlert;->mAlarmId:I

    .line 280
    iget-object v1, p0, Lcom/android/alarmclock/AlarmAlert;->mKlaxon:Lcom/android/alarmclock/AlarmKlaxon;

    iget v2, p0, Lcom/android/alarmclock/AlarmAlert;->mAlarmId:I

    invoke-virtual {v1, p0, v2}, Lcom/android/alarmclock/AlarmKlaxon;->postPlay(Landroid/content/Context;I)V

    .line 282
    invoke-direct {p0, p1}, Lcom/android/alarmclock/AlarmAlert;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 285
    const v1, 0x7f0a0004

    invoke-virtual {p0, v1}, Lcom/android/alarmclock/AlarmAlert;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 286
    .local v0, silenced:Landroid/widget/TextView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    invoke-static {p0}, Lcom/android/alarmclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 289
    invoke-virtual {p0, p1}, Lcom/android/alarmclock/AlarmAlert;->setIntent(Landroid/content/Intent;)V

    .line 290
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 294
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 295
    const-string v0, "AlarmAlert.onResume()"

    invoke-static {v0}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 296
    invoke-direct {p0}, Lcom/android/alarmclock/AlarmAlert;->disableKeyguard()V

    .line 297
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 301
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 302
    const-string v0, "AlarmAlert.onStop()"

    invoke-static {v0}, Lcom/android/alarmclock/Log;->v(Ljava/lang/String;)V

    .line 304
    invoke-direct {p0}, Lcom/android/alarmclock/AlarmAlert;->snooze()V

    .line 307
    invoke-direct {p0}, Lcom/android/alarmclock/AlarmAlert;->releaseLocks()V

    .line 308
    invoke-virtual {p0}, Lcom/android/alarmclock/AlarmAlert;->finish()V

    .line 309
    return-void
.end method
