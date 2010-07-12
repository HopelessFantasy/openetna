.class public Landroid/widget/LGETimePicker;
.super Landroid/widget/FrameLayout;
.source "LGETimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/LGETimePicker$LGESavedState;,
        Landroid/widget/LGETimePicker$OnLGETimeChangedListener;
    }
.end annotation


# static fields
.field private static final NO_OP_CHANGE_LISTENER_LGE:Landroid/widget/LGETimePicker$OnLGETimeChangedListener;


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmText:Ljava/lang/String;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private mCurrentSecond:I

.field private final mHourPicker:Lcom/android/internal/widget/NumberPicker;

.field private mIs24HourView:Ljava/lang/Boolean;

.field private mIsAm:Z

.field private final mMinutePicker:Lcom/android/internal/widget/NumberPicker;

.field private mOnTimeChangedListener:Landroid/widget/LGETimePicker$OnLGETimeChangedListener;

.field private final mPmText:Ljava/lang/String;

.field private final mSecondPicker:Lcom/android/internal/widget/NumberPicker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    new-instance v0, Landroid/widget/LGETimePicker$1;

    invoke-direct {v0}, Landroid/widget/LGETimePicker$1;-><init>()V

    sput-object v0, Landroid/widget/LGETimePicker;->NO_OP_CHANGE_LISTENER_LGE:Landroid/widget/LGETimePicker$OnLGETimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LGETimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LGETimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 16
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v10, 0x64

    const/16 v9, 0x3b

    const/16 v8, 0xc

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    iput v6, p0, Landroid/widget/LGETimePicker;->mCurrentHour:I

    .line 66
    iput v6, p0, Landroid/widget/LGETimePicker;->mCurrentMinute:I

    .line 67
    iput v6, p0, Landroid/widget/LGETimePicker;->mCurrentSecond:I

    .line 68
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/LGETimePicker;->mIs24HourView:Ljava/lang/Boolean;

    .line 106
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 108
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v4, 0x109006c

    invoke-virtual {v3, v4, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 112
    const v4, 0x10201e1

    invoke-virtual {p0, v4}, Landroid/widget/LGETimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/NumberPicker;

    iput-object v4, p0, Landroid/widget/LGETimePicker;->mHourPicker:Lcom/android/internal/widget/NumberPicker;

    .line 113
    iget-object v4, p0, Landroid/widget/LGETimePicker;->mHourPicker:Lcom/android/internal/widget/NumberPicker;

    new-instance v5, Landroid/widget/LGETimePicker$2;

    invoke-direct {v5, p0}, Landroid/widget/LGETimePicker$2;-><init>(Landroid/widget/LGETimePicker;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/NumberPicker;->setOnChangeListener(Lcom/android/internal/widget/NumberPicker$OnChangedListener;)V

    .line 132
    const v4, 0x10201e2

    invoke-virtual {p0, v4}, Landroid/widget/LGETimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/NumberPicker;

    iput-object v4, p0, Landroid/widget/LGETimePicker;->mMinutePicker:Lcom/android/internal/widget/NumberPicker;

    .line 133
    iget-object v4, p0, Landroid/widget/LGETimePicker;->mMinutePicker:Lcom/android/internal/widget/NumberPicker;

    invoke-virtual {v4, v6, v9}, Lcom/android/internal/widget/NumberPicker;->setRange(II)V

    .line 134
    iget-object v4, p0, Landroid/widget/LGETimePicker;->mMinutePicker:Lcom/android/internal/widget/NumberPicker;

    invoke-virtual {v4, v10, v11}, Lcom/android/internal/widget/NumberPicker;->setSpeed(J)V

    .line 135
    iget-object v4, p0, Landroid/widget/LGETimePicker;->mMinutePicker:Lcom/android/internal/widget/NumberPicker;

    sget-object v5, Lcom/android/internal/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lcom/android/internal/widget/NumberPicker$Formatter;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/NumberPicker;->setFormatter(Lcom/android/internal/widget/NumberPicker$Formatter;)V

    .line 136
    iget-object v4, p0, Landroid/widget/LGETimePicker;->mMinutePicker:Lcom/android/internal/widget/NumberPicker;

    new-instance v5, Landroid/widget/LGETimePicker$3;

    invoke-direct {v5, p0}, Landroid/widget/LGETimePicker$3;-><init>(Landroid/widget/LGETimePicker;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/NumberPicker;->setOnChangeListener(Lcom/android/internal/widget/NumberPicker$OnChangedListener;)V

    .line 144
    const v4, 0x10201ff

    invoke-virtual {p0, v4}, Landroid/widget/LGETimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/NumberPicker;

    iput-object v4, p0, Landroid/widget/LGETimePicker;->mSecondPicker:Lcom/android/internal/widget/NumberPicker;

    .line 145
    iget-object v4, p0, Landroid/widget/LGETimePicker;->mSecondPicker:Lcom/android/internal/widget/NumberPicker;

    invoke-virtual {v4, v6, v9}, Lcom/android/internal/widget/NumberPicker;->setRange(II)V

    .line 146
    iget-object v4, p0, Landroid/widget/LGETimePicker;->mSecondPicker:Lcom/android/internal/widget/NumberPicker;

    invoke-virtual {v4, v10, v11}, Lcom/android/internal/widget/NumberPicker;->setSpeed(J)V

    .line 147
    iget-object v4, p0, Landroid/widget/LGETimePicker;->mSecondPicker:Lcom/android/internal/widget/NumberPicker;

    sget-object v5, Lcom/android/internal/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lcom/android/internal/widget/NumberPicker$Formatter;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/NumberPicker;->setFormatter(Lcom/android/internal/widget/NumberPicker$Formatter;)V

    .line 148
    iget-object v4, p0, Landroid/widget/LGETimePicker;->mSecondPicker:Lcom/android/internal/widget/NumberPicker;

    new-instance v5, Landroid/widget/LGETimePicker$4;

    invoke-direct {v5, p0}, Landroid/widget/LGETimePicker$4;-><init>(Landroid/widget/LGETimePicker;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/NumberPicker;->setOnChangeListener(Lcom/android/internal/widget/NumberPicker$OnChangedListener;)V

    .line 156
    const v4, 0x10201e3

    invoke-virtual {p0, v4}, Landroid/widget/LGETimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Landroid/widget/LGETimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 160
    invoke-direct {p0}, Landroid/widget/LGETimePicker;->configurePickerRanges()V

    .line 163
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 164
    .local v0, cal:Ljava/util/Calendar;
    sget-object v4, Landroid/widget/LGETimePicker;->NO_OP_CHANGE_LISTENER_LGE:Landroid/widget/LGETimePicker$OnLGETimeChangedListener;

    invoke-virtual {p0, v4}, Landroid/widget/LGETimePicker;->setOnTimeChangedListener(Landroid/widget/LGETimePicker$OnLGETimeChangedListener;)V

    .line 167
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/LGETimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 168
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/LGETimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 169
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/LGETimePicker;->setCurrentSecond(Ljava/lang/Integer;)V

    .line 171
    iget v4, p0, Landroid/widget/LGETimePicker;->mCurrentHour:I

    if-ge v4, v8, :cond_f9

    move v4, v7

    :goto_c7
    iput-boolean v4, p0, Landroid/widget/LGETimePicker;->mIsAm:Z

    .line 174
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 175
    .local v1, dfs:Ljava/text/DateFormatSymbols;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, dfsAmPm:[Ljava/lang/String;
    aget-object v4, v2, v6

    iput-object v4, p0, Landroid/widget/LGETimePicker;->mAmText:Ljava/lang/String;

    .line 177
    aget-object v4, v2, v7

    iput-object v4, p0, Landroid/widget/LGETimePicker;->mPmText:Ljava/lang/String;

    .line 178
    iget-object v4, p0, Landroid/widget/LGETimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-boolean v5, p0, Landroid/widget/LGETimePicker;->mIsAm:Z

    if-eqz v5, :cond_fb

    iget-object v5, p0, Landroid/widget/LGETimePicker;->mAmText:Ljava/lang/String;

    :goto_e2
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v4, p0, Landroid/widget/LGETimePicker;->mAmPmButton:Landroid/widget/Button;

    new-instance v5, Landroid/widget/LGETimePicker$5;

    invoke-direct {v5, p0}, Landroid/widget/LGETimePicker$5;-><init>(Landroid/widget/LGETimePicker;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    invoke-virtual {p0}, Landroid/widget/LGETimePicker;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_f8

    .line 202
    invoke-virtual {p0, v6}, Landroid/widget/LGETimePicker;->setEnabled(Z)V

    .line 204
    :cond_f8
    return-void

    .end local v1           #dfs:Ljava/text/DateFormatSymbols;
    .end local v2           #dfsAmPm:[Ljava/lang/String;
    :cond_f9
    move v4, v6

    .line 171
    goto :goto_c7

    .line 178
    .restart local v1       #dfs:Ljava/text/DateFormatSymbols;
    .restart local v2       #dfsAmPm:[Ljava/lang/String;
    :cond_fb
    iget-object v5, p0, Landroid/widget/LGETimePicker;->mPmText:Ljava/lang/String;

    goto :goto_e2
.end method

.method static synthetic access$000(Landroid/widget/LGETimePicker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Landroid/widget/LGETimePicker;->mCurrentHour:I

    return v0
.end method

.method static synthetic access$002(Landroid/widget/LGETimePicker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Landroid/widget/LGETimePicker;->mCurrentHour:I

    return p1
.end method

.method static synthetic access$012(Landroid/widget/LGETimePicker;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iget v0, p0, Landroid/widget/LGETimePicker;->mCurrentHour:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/LGETimePicker;->mCurrentHour:I

    return v0
.end method

.method static synthetic access$020(Landroid/widget/LGETimePicker;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iget v0, p0, Landroid/widget/LGETimePicker;->mCurrentHour:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/widget/LGETimePicker;->mCurrentHour:I

    return v0
.end method

.method static synthetic access$100(Landroid/widget/LGETimePicker;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/widget/LGETimePicker;->mIs24HourView:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/LGETimePicker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Landroid/widget/LGETimePicker;->mIsAm:Z

    return v0
.end method

.method static synthetic access$202(Landroid/widget/LGETimePicker;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Landroid/widget/LGETimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$300(Landroid/widget/LGETimePicker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/widget/LGETimePicker;->onLGETimeChanged()V

    return-void
.end method

.method static synthetic access$402(Landroid/widget/LGETimePicker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Landroid/widget/LGETimePicker;->mCurrentMinute:I

    return p1
.end method

.method static synthetic access$502(Landroid/widget/LGETimePicker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Landroid/widget/LGETimePicker;->mCurrentSecond:I

    return p1
.end method

.method static synthetic access$600(Landroid/widget/LGETimePicker;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/widget/LGETimePicker;->mAmText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/LGETimePicker;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/widget/LGETimePicker;->mPmText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/LGETimePicker;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/widget/LGETimePicker;->mAmPmButton:Landroid/widget/Button;

    return-object v0
.end method

.method private configurePickerRanges()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 379
    iget-object v0, p0, Landroid/widget/LGETimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 380
    iget-object v0, p0, Landroid/widget/LGETimePicker;->mHourPicker:Lcom/android/internal/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/widget/NumberPicker;->setRange(II)V

    .line 381
    iget-object v0, p0, Landroid/widget/LGETimePicker;->mHourPicker:Lcom/android/internal/widget/NumberPicker;

    sget-object v1, Lcom/android/internal/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lcom/android/internal/widget/NumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NumberPicker;->setFormatter(Lcom/android/internal/widget/NumberPicker$Formatter;)V

    .line 382
    iget-object v0, p0, Landroid/widget/LGETimePicker;->mAmPmButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 388
    :goto_1e
    return-void

    .line 384
    :cond_1f
    iget-object v0, p0, Landroid/widget/LGETimePicker;->mHourPicker:Lcom/android/internal/widget/NumberPicker;

    const/4 v1, 0x1

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/NumberPicker;->setRange(II)V

    .line 385
    iget-object v0, p0, Landroid/widget/LGETimePicker;->mHourPicker:Lcom/android/internal/widget/NumberPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NumberPicker;->setFormatter(Lcom/android/internal/widget/NumberPicker$Formatter;)V

    .line 386
    iget-object v0, p0, Landroid/widget/LGETimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1e
.end method

.method private onLGETimeChanged()V
    .registers 5

    .prologue
    .line 391
    iget-object v0, p0, Landroid/widget/LGETimePicker;->mOnTimeChangedListener:Landroid/widget/LGETimePicker$OnLGETimeChangedListener;

    invoke-virtual {p0}, Landroid/widget/LGETimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LGETimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LGETimePicker;->getCurrentSecond()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/LGETimePicker$OnLGETimeChangedListener;->onLGETimeChanged(Landroid/widget/LGETimePicker;III)V

    .line 392
    return-void
.end method

.method private updateHourDisplay()V
    .registers 4

    .prologue
    const/16 v2, 0xc

    .line 366
    iget v0, p0, Landroid/widget/LGETimePicker;->mCurrentHour:I

    .line 367
    .local v0, currentHour:I
    iget-object v1, p0, Landroid/widget/LGETimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_10

    .line 369
    if-le v0, v2, :cond_2b

    add-int/lit8 v0, v0, -0xc

    .line 372
    :cond_10
    :goto_10
    iget-object v1, p0, Landroid/widget/LGETimePicker;->mHourPicker:Lcom/android/internal/widget/NumberPicker;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/NumberPicker;->setCurrent(I)V

    .line 373
    iget v1, p0, Landroid/widget/LGETimePicker;->mCurrentHour:I

    if-ge v1, v2, :cond_30

    const/4 v1, 0x1

    :goto_1a
    iput-boolean v1, p0, Landroid/widget/LGETimePicker;->mIsAm:Z

    .line 374
    iget-object v1, p0, Landroid/widget/LGETimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-boolean v2, p0, Landroid/widget/LGETimePicker;->mIsAm:Z

    if-eqz v2, :cond_32

    iget-object v2, p0, Landroid/widget/LGETimePicker;->mAmText:Ljava/lang/String;

    :goto_24
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 375
    invoke-direct {p0}, Landroid/widget/LGETimePicker;->onLGETimeChanged()V

    .line 376
    return-void

    .line 370
    :cond_2b
    if-nez v0, :cond_10

    const/16 v0, 0xc

    goto :goto_10

    .line 373
    :cond_30
    const/4 v1, 0x0

    goto :goto_1a

    .line 374
    :cond_32
    iget-object v2, p0, Landroid/widget/LGETimePicker;->mPmText:Ljava/lang/String;

    goto :goto_24
.end method

.method private updateMinuteDisplay()V
    .registers 5

    .prologue
    .line 398
    iget-object v0, p0, Landroid/widget/LGETimePicker;->mMinutePicker:Lcom/android/internal/widget/NumberPicker;

    iget v1, p0, Landroid/widget/LGETimePicker;->mCurrentMinute:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NumberPicker;->setCurrent(I)V

    .line 399
    iget-object v0, p0, Landroid/widget/LGETimePicker;->mOnTimeChangedListener:Landroid/widget/LGETimePicker$OnLGETimeChangedListener;

    invoke-virtual {p0}, Landroid/widget/LGETimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LGETimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LGETimePicker;->getCurrentSecond()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/LGETimePicker$OnLGETimeChangedListener;->onLGETimeChanged(Landroid/widget/LGETimePicker;III)V

    .line 400
    return-void
.end method

.method private updateSecondDisplay()V
    .registers 5

    .prologue
    .line 406
    iget-object v0, p0, Landroid/widget/LGETimePicker;->mSecondPicker:Lcom/android/internal/widget/NumberPicker;

    iget v1, p0, Landroid/widget/LGETimePicker;->mCurrentSecond:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NumberPicker;->setCurrent(I)V

    .line 407
    iget-object v0, p0, Landroid/widget/LGETimePicker;->mOnTimeChangedListener:Landroid/widget/LGETimePicker$OnLGETimeChangedListener;

    invoke-virtual {p0}, Landroid/widget/LGETimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LGETimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LGETimePicker;->getCurrentSecond()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/LGETimePicker$OnLGETimeChangedListener;->onLGETimeChanged(Landroid/widget/LGETimePicker;III)V

    .line 408
    return-void
.end method


# virtual methods
.method public getBaseline()I
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Landroid/widget/LGETimePicker;->mHourPicker:Lcom/android/internal/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/android/internal/widget/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 297
    iget v0, p0, Landroid/widget/LGETimePicker;->mCurrentHour:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 331
    iget v0, p0, Landroid/widget/LGETimePicker;->mCurrentMinute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSecond()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 346
    iget v0, p0, Landroid/widget/LGETimePicker;->mCurrentSecond:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .registers 2

    .prologue
    .line 324
    iget-object v0, p0, Landroid/widget/LGETimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 278
    move-object v0, p1

    check-cast v0, Landroid/widget/LGETimePicker$LGESavedState;

    move-object v1, v0

    .line 279
    .local v1, ss:Landroid/widget/LGETimePicker$LGESavedState;
    invoke-virtual {v1}, Landroid/widget/LGETimePicker$LGESavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 280
    invoke-virtual {v1}, Landroid/widget/LGETimePicker$LGESavedState;->getHour()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/LGETimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 281
    invoke-virtual {v1}, Landroid/widget/LGETimePicker$LGESavedState;->getMinute()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/LGETimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 282
    invoke-virtual {v1}, Landroid/widget/LGETimePicker$LGESavedState;->getSecond()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/LGETimePicker;->setCurrentSecond(Ljava/lang/Integer;)V

    .line 283
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 7

    .prologue
    .line 272
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 273
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/LGETimePicker$LGESavedState;

    iget v2, p0, Landroid/widget/LGETimePicker;->mCurrentHour:I

    iget v3, p0, Landroid/widget/LGETimePicker;->mCurrentMinute:I

    iget v4, p0, Landroid/widget/LGETimePicker;->mCurrentSecond:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/widget/LGETimePicker$LGESavedState;-><init>(Landroid/os/Parcelable;IIILandroid/widget/LGETimePicker$1;)V

    return-object v0
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .registers 3
    .parameter "currentHour"

    .prologue
    .line 304
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/widget/LGETimePicker;->mCurrentHour:I

    .line 305
    invoke-direct {p0}, Landroid/widget/LGETimePicker;->updateHourDisplay()V

    .line 306
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .registers 3
    .parameter "currentMinute"

    .prologue
    .line 338
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/widget/LGETimePicker;->mCurrentMinute:I

    .line 339
    invoke-direct {p0}, Landroid/widget/LGETimePicker;->updateMinuteDisplay()V

    .line 340
    return-void
.end method

.method public setCurrentSecond(Ljava/lang/Integer;)V
    .registers 3
    .parameter "currentSecond"

    .prologue
    .line 353
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/widget/LGETimePicker;->mCurrentSecond:I

    .line 354
    invoke-direct {p0}, Landroid/widget/LGETimePicker;->updateSecondDisplay()V

    .line 355
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 209
    iget-object v0, p0, Landroid/widget/LGETimePicker;->mMinutePicker:Lcom/android/internal/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NumberPicker;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Landroid/widget/LGETimePicker;->mHourPicker:Lcom/android/internal/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NumberPicker;->setEnabled(Z)V

    .line 211
    iget-object v0, p0, Landroid/widget/LGETimePicker;->mSecondPicker:Lcom/android/internal/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NumberPicker;->setEnabled(Z)V

    .line 212
    iget-object v0, p0, Landroid/widget/LGETimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 213
    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .registers 3
    .parameter "is24HourView"

    .prologue
    .line 313
    iget-object v0, p0, Landroid/widget/LGETimePicker;->mIs24HourView:Ljava/lang/Boolean;

    if-eq v0, p1, :cond_c

    .line 314
    iput-object p1, p0, Landroid/widget/LGETimePicker;->mIs24HourView:Ljava/lang/Boolean;

    .line 315
    invoke-direct {p0}, Landroid/widget/LGETimePicker;->configurePickerRanges()V

    .line 316
    invoke-direct {p0}, Landroid/widget/LGETimePicker;->updateHourDisplay()V

    .line 318
    :cond_c
    return-void
.end method

.method public setOnTimeChangedListener(Landroid/widget/LGETimePicker$OnLGETimeChangedListener;)V
    .registers 2
    .parameter "onTimeChangedListener"

    .prologue
    .line 290
    iput-object p1, p0, Landroid/widget/LGETimePicker;->mOnTimeChangedListener:Landroid/widget/LGETimePicker$OnLGETimeChangedListener;

    .line 291
    return-void
.end method
