.class public Landroid/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePicker$SavedState;,
        Landroid/widget/TimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmText:Ljava/lang/String;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private final mHourPicker:Lcom/android/internal/widget/NumberPicker;

.field private mIs24HourView:Ljava/lang/Boolean;

.field private mIsAm:Z

.field private final mMinutePicker:Lcom/android/internal/widget/NumberPicker;

.field private mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

.field private final mPmText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    new-instance v0, Landroid/widget/TimePicker$1;

    invoke-direct {v0}, Landroid/widget/TimePicker$1;-><init>()V

    sput-object v0, Landroid/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    iput v7, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    .line 63
    iput v7, p0, Landroid/widget/TimePicker;->mCurrentMinute:I

    .line 64
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    .line 101
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 103
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v4, 0x1090063

    invoke-virtual {v3, v4, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 108
    const v4, 0x10201e1

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/NumberPicker;

    iput-object v4, p0, Landroid/widget/TimePicker;->mHourPicker:Lcom/android/internal/widget/NumberPicker;

    .line 109
    iget-object v4, p0, Landroid/widget/TimePicker;->mHourPicker:Lcom/android/internal/widget/NumberPicker;

    new-instance v5, Landroid/widget/TimePicker$2;

    invoke-direct {v5, p0}, Landroid/widget/TimePicker$2;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/NumberPicker;->setOnChangeListener(Lcom/android/internal/widget/NumberPicker$OnChangedListener;)V

    .line 128
    const v4, 0x10201e2

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/NumberPicker;

    iput-object v4, p0, Landroid/widget/TimePicker;->mMinutePicker:Lcom/android/internal/widget/NumberPicker;

    .line 129
    iget-object v4, p0, Landroid/widget/TimePicker;->mMinutePicker:Lcom/android/internal/widget/NumberPicker;

    const/16 v5, 0x3b

    invoke-virtual {v4, v7, v5}, Lcom/android/internal/widget/NumberPicker;->setRange(II)V

    .line 130
    iget-object v4, p0, Landroid/widget/TimePicker;->mMinutePicker:Lcom/android/internal/widget/NumberPicker;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/widget/NumberPicker;->setSpeed(J)V

    .line 131
    iget-object v4, p0, Landroid/widget/TimePicker;->mMinutePicker:Lcom/android/internal/widget/NumberPicker;

    sget-object v5, Lcom/android/internal/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lcom/android/internal/widget/NumberPicker$Formatter;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/NumberPicker;->setFormatter(Lcom/android/internal/widget/NumberPicker$Formatter;)V

    .line 132
    iget-object v4, p0, Landroid/widget/TimePicker;->mMinutePicker:Lcom/android/internal/widget/NumberPicker;

    new-instance v5, Landroid/widget/TimePicker$3;

    invoke-direct {v5, p0}, Landroid/widget/TimePicker$3;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/NumberPicker;->setOnChangeListener(Lcom/android/internal/widget/NumberPicker$OnChangedListener;)V

    .line 140
    const v4, 0x10201e3

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 144
    invoke-direct {p0}, Landroid/widget/TimePicker;->configurePickerRanges()V

    .line 147
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 148
    .local v0, cal:Ljava/util/Calendar;
    sget-object v4, Landroid/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 151
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 152
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 154
    iget v4, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    if-ge v4, v9, :cond_c4

    move v4, v8

    :goto_92
    iput-boolean v4, p0, Landroid/widget/TimePicker;->mIsAm:Z

    .line 157
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 158
    .local v1, dfs:Ljava/text/DateFormatSymbols;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, dfsAmPm:[Ljava/lang/String;
    aget-object v4, v2, v7

    iput-object v4, p0, Landroid/widget/TimePicker;->mAmText:Ljava/lang/String;

    .line 160
    aget-object v4, v2, v8

    iput-object v4, p0, Landroid/widget/TimePicker;->mPmText:Ljava/lang/String;

    .line 161
    iget-object v4, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-boolean v5, p0, Landroid/widget/TimePicker;->mIsAm:Z

    if-eqz v5, :cond_c6

    iget-object v5, p0, Landroid/widget/TimePicker;->mAmText:Ljava/lang/String;

    :goto_ad
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v4, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    new-instance v5, Landroid/widget/TimePicker$4;

    invoke-direct {v5, p0}, Landroid/widget/TimePicker$4;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    invoke-virtual {p0}, Landroid/widget/TimePicker;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_c3

    .line 185
    invoke-virtual {p0, v7}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 187
    :cond_c3
    return-void

    .end local v1           #dfs:Ljava/text/DateFormatSymbols;
    .end local v2           #dfsAmPm:[Ljava/lang/String;
    :cond_c4
    move v4, v7

    .line 154
    goto :goto_92

    .line 161
    .restart local v1       #dfs:Ljava/text/DateFormatSymbols;
    .restart local v2       #dfsAmPm:[Ljava/lang/String;
    :cond_c6
    iget-object v5, p0, Landroid/widget/TimePicker;->mPmText:Ljava/lang/String;

    goto :goto_ad
.end method

.method static synthetic access$000(Landroid/widget/TimePicker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    return v0
.end method

.method static synthetic access$002(Landroid/widget/TimePicker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    return p1
.end method

.method static synthetic access$012(Landroid/widget/TimePicker;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iget v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    return v0
.end method

.method static synthetic access$020(Landroid/widget/TimePicker;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iget v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    return v0
.end method

.method static synthetic access$100(Landroid/widget/TimePicker;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/TimePicker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIsAm:Z

    return v0
.end method

.method static synthetic access$202(Landroid/widget/TimePicker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Landroid/widget/TimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$300(Landroid/widget/TimePicker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/widget/TimePicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$402(Landroid/widget/TimePicker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Landroid/widget/TimePicker;->mCurrentMinute:I

    return p1
.end method

.method static synthetic access$500(Landroid/widget/TimePicker;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/TimePicker;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/widget/TimePicker;->mPmText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/TimePicker;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    return-object v0
.end method

.method private configurePickerRanges()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 337
    iget-object v0, p0, Landroid/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 338
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourPicker:Lcom/android/internal/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/widget/NumberPicker;->setRange(II)V

    .line 339
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourPicker:Lcom/android/internal/widget/NumberPicker;

    sget-object v1, Lcom/android/internal/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lcom/android/internal/widget/NumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NumberPicker;->setFormatter(Lcom/android/internal/widget/NumberPicker$Formatter;)V

    .line 340
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 346
    :goto_1e
    return-void

    .line 342
    :cond_1f
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourPicker:Lcom/android/internal/widget/NumberPicker;

    const/4 v1, 0x1

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/NumberPicker;->setRange(II)V

    .line 343
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourPicker:Lcom/android/internal/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NumberPicker;->setFormatter(Lcom/android/internal/widget/NumberPicker$Formatter;)V

    .line 344
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1e
.end method

.method private onTimeChanged()V
    .registers 4

    .prologue
    .line 349
    iget-object v0, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 350
    return-void
.end method

.method private updateHourDisplay()V
    .registers 4

    .prologue
    const/16 v2, 0xc

    .line 324
    iget v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    .line 325
    .local v0, currentHour:I
    iget-object v1, p0, Landroid/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_10

    .line 327
    if-le v0, v2, :cond_2b

    add-int/lit8 v0, v0, -0xc

    .line 330
    :cond_10
    :goto_10
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourPicker:Lcom/android/internal/widget/NumberPicker;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/NumberPicker;->setCurrent(I)V

    .line 331
    iget v1, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    if-ge v1, v2, :cond_30

    const/4 v1, 0x1

    :goto_1a
    iput-boolean v1, p0, Landroid/widget/TimePicker;->mIsAm:Z

    .line 332
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-boolean v2, p0, Landroid/widget/TimePicker;->mIsAm:Z

    if-eqz v2, :cond_32

    iget-object v2, p0, Landroid/widget/TimePicker;->mAmText:Ljava/lang/String;

    :goto_24
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 333
    invoke-direct {p0}, Landroid/widget/TimePicker;->onTimeChanged()V

    .line 334
    return-void

    .line 328
    :cond_2b
    if-nez v0, :cond_10

    const/16 v0, 0xc

    goto :goto_10

    .line 331
    :cond_30
    const/4 v1, 0x0

    goto :goto_1a

    .line 332
    :cond_32
    iget-object v2, p0, Landroid/widget/TimePicker;->mPmText:Ljava/lang/String;

    goto :goto_24
.end method

.method private updateMinuteDisplay()V
    .registers 4

    .prologue
    .line 356
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinutePicker:Lcom/android/internal/widget/NumberPicker;

    iget v1, p0, Landroid/widget/TimePicker;->mCurrentMinute:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NumberPicker;->setCurrent(I)V

    .line 357
    iget-object v0, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 358
    return-void
.end method


# virtual methods
.method public getBaseline()I
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourPicker:Lcom/android/internal/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/android/internal/widget/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 270
    iget v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 304
    iget v0, p0, Landroid/widget/TimePicker;->mCurrentMinute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Landroid/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 252
    move-object v0, p1

    check-cast v0, Landroid/widget/TimePicker$SavedState;

    move-object v1, v0

    .line 253
    .local v1, ss:Landroid/widget/TimePicker$SavedState;
    invoke-virtual {v1}, Landroid/widget/TimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 254
    invoke-virtual {v1}, Landroid/widget/TimePicker$SavedState;->getHour()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 255
    invoke-virtual {v1}, Landroid/widget/TimePicker$SavedState;->getMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 256
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 6

    .prologue
    .line 246
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 247
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/TimePicker$SavedState;

    iget v2, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    iget v3, p0, Landroid/widget/TimePicker;->mCurrentMinute:I

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILandroid/widget/TimePicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .registers 3
    .parameter "currentHour"

    .prologue
    .line 277
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePicker;->mCurrentHour:I

    .line 278
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateHourDisplay()V

    .line 279
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .registers 3
    .parameter "currentMinute"

    .prologue
    .line 311
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/widget/TimePicker;->mCurrentMinute:I

    .line 312
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateMinuteDisplay()V

    .line 313
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 191
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 192
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinutePicker:Lcom/android/internal/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NumberPicker;->setEnabled(Z)V

    .line 193
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourPicker:Lcom/android/internal/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NumberPicker;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 195
    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .registers 3
    .parameter "is24HourView"

    .prologue
    .line 286
    iget-object v0, p0, Landroid/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    if-eq v0, p1, :cond_c

    .line 287
    iput-object p1, p0, Landroid/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    .line 288
    invoke-direct {p0}, Landroid/widget/TimePicker;->configurePickerRanges()V

    .line 289
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateHourDisplay()V

    .line 291
    :cond_c
    return-void
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .registers 2
    .parameter "onTimeChangedListener"

    .prologue
    .line 263
    iput-object p1, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    .line 264
    return-void
.end method
