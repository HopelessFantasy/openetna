.class public Landroid/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePicker$SavedState;,
        Landroid/widget/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c


# instance fields
.field private mDay:I

.field private final mDayPicker:Lcom/android/internal/widget/NumberPicker;

.field private mMonth:I

.field private final mMonthPicker:Lcom/android/internal/widget/NumberPicker;

.field private mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field private mYear:I

.field private final mYearPicker:Lcom/android/internal/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 15
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 89
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v7, 0x1090020

    const/4 v8, 0x1

    invoke-virtual {v3, v7, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 91
    const v7, 0x1020173

    invoke-virtual {p0, v7}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .end local p3
    check-cast p3, Lcom/android/internal/widget/NumberPicker;

    iput-object p3, p0, Landroid/widget/DatePicker;->mDayPicker:Lcom/android/internal/widget/NumberPicker;

    .line 92
    iget-object v7, p0, Landroid/widget/DatePicker;->mDayPicker:Lcom/android/internal/widget/NumberPicker;

    sget-object v8, Lcom/android/internal/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lcom/android/internal/widget/NumberPicker$Formatter;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/NumberPicker;->setFormatter(Lcom/android/internal/widget/NumberPicker$Formatter;)V

    .line 93
    iget-object v7, p0, Landroid/widget/DatePicker;->mDayPicker:Lcom/android/internal/widget/NumberPicker;

    const-wide/16 v8, 0x64

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/widget/NumberPicker;->setSpeed(J)V

    .line 94
    iget-object v7, p0, Landroid/widget/DatePicker;->mDayPicker:Lcom/android/internal/widget/NumberPicker;

    new-instance v8, Landroid/widget/DatePicker$1;

    invoke-direct {v8, p0}, Landroid/widget/DatePicker$1;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/NumberPicker;->setOnChangeListener(Lcom/android/internal/widget/NumberPicker$OnChangedListener;)V

    .line 102
    const v7, 0x1020172

    invoke-virtual {p0, v7}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/internal/widget/NumberPicker;

    iput-object p3, p0, Landroid/widget/DatePicker;->mMonthPicker:Lcom/android/internal/widget/NumberPicker;

    .line 103
    iget-object v7, p0, Landroid/widget/DatePicker;->mMonthPicker:Lcom/android/internal/widget/NumberPicker;

    sget-object v8, Lcom/android/internal/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lcom/android/internal/widget/NumberPicker$Formatter;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/NumberPicker;->setFormatter(Lcom/android/internal/widget/NumberPicker$Formatter;)V

    .line 104
    new-instance v2, Ljava/text/DateFormatSymbols;

    invoke-direct {v2}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 105
    .local v2, dfs:Ljava/text/DateFormatSymbols;
    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, months:[Ljava/lang/String;
    iget-object v7, p0, Landroid/widget/DatePicker;->mMonthPicker:Lcom/android/internal/widget/NumberPicker;

    const/4 v8, 0x1

    const/16 v9, 0xc

    invoke-virtual {v7, v8, v9, v6}, Lcom/android/internal/widget/NumberPicker;->setRange(II[Ljava/lang/String;)V

    .line 107
    iget-object v7, p0, Landroid/widget/DatePicker;->mMonthPicker:Lcom/android/internal/widget/NumberPicker;

    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/widget/NumberPicker;->setSpeed(J)V

    .line 108
    iget-object v7, p0, Landroid/widget/DatePicker;->mMonthPicker:Lcom/android/internal/widget/NumberPicker;

    new-instance v8, Landroid/widget/DatePicker$2;

    invoke-direct {v8, p0}, Landroid/widget/DatePicker$2;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/NumberPicker;->setOnChangeListener(Lcom/android/internal/widget/NumberPicker$OnChangedListener;)V

    .line 123
    const v7, 0x1020174

    invoke-virtual {p0, v7}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/internal/widget/NumberPicker;

    iput-object p3, p0, Landroid/widget/DatePicker;->mYearPicker:Lcom/android/internal/widget/NumberPicker;

    .line 124
    iget-object v7, p0, Landroid/widget/DatePicker;->mYearPicker:Lcom/android/internal/widget/NumberPicker;

    const-wide/16 v8, 0x64

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/widget/NumberPicker;->setSpeed(J)V

    .line 125
    iget-object v7, p0, Landroid/widget/DatePicker;->mYearPicker:Lcom/android/internal/widget/NumberPicker;

    new-instance v8, Landroid/widget/DatePicker$3;

    invoke-direct {v8, p0}, Landroid/widget/DatePicker$3;-><init>(Landroid/widget/DatePicker;)V

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/NumberPicker;->setOnChangeListener(Lcom/android/internal/widget/NumberPicker$OnChangedListener;)V

    .line 138
    sget-object v7, Lcom/android/internal/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 140
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    const/16 v8, 0x76c

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 141
    .local v5, mStartYear:I
    const/4 v7, 0x1

    const/16 v8, 0x834

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 142
    .local v4, mEndYear:I
    iget-object v7, p0, Landroid/widget/DatePicker;->mYearPicker:Lcom/android/internal/widget/NumberPicker;

    invoke-virtual {v7, v5, v4}, Lcom/android/internal/widget/NumberPicker;->setRange(II)V

    .line 144
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 148
    .local v1, cal:Ljava/util/Calendar;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x5

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v8, v9, v10}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 151
    invoke-direct {p0, v6}, Landroid/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Landroid/widget/DatePicker;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_c5

    .line 154
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/DatePicker;->setEnabled(Z)V

    .line 156
    :cond_c5
    return-void
.end method

.method static synthetic access$000(Landroid/widget/DatePicker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/widget/DatePicker;->mDay:I

    return v0
.end method

.method static synthetic access$002(Landroid/widget/DatePicker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Landroid/widget/DatePicker;->mDay:I

    return p1
.end method

.method static synthetic access$100(Landroid/widget/DatePicker;)Landroid/widget/DatePicker$OnDateChangedListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/DatePicker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/widget/DatePicker;->mYear:I

    return v0
.end method

.method static synthetic access$202(Landroid/widget/DatePicker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Landroid/widget/DatePicker;->mYear:I

    return p1
.end method

.method static synthetic access$300(Landroid/widget/DatePicker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/widget/DatePicker;->mMonth:I

    return v0
.end method

.method static synthetic access$302(Landroid/widget/DatePicker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Landroid/widget/DatePicker;->mMonth:I

    return p1
.end method

.method static synthetic access$400(Landroid/widget/DatePicker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/widget/DatePicker;->adjustMaxDay()V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/DatePicker;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateDaySpinner()V

    return-void
.end method

.method private adjustMaxDay()V
    .registers 5

    .prologue
    .line 371
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 372
    .local v0, cal:Ljava/util/Calendar;
    const/4 v2, 0x1

    iget v3, p0, Landroid/widget/DatePicker;->mYear:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 373
    const/4 v2, 0x2

    iget v3, p0, Landroid/widget/DatePicker;->mMonth:I

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 374
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 375
    .local v1, max:I
    iget v2, p0, Landroid/widget/DatePicker;->mDay:I

    if-le v2, v1, :cond_1b

    .line 376
    iput v1, p0, Landroid/widget/DatePicker;->mDay:I

    .line 378
    :cond_1b
    return-void
.end method

.method private reorderPickers([Ljava/lang/String;)V
    .registers 14
    .parameter "months"

    .prologue
    const/4 v11, 0x0

    .line 177
    aget-object v9, p1, v11

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_51

    .line 178
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    .line 183
    .local v4, format:Ljava/text/DateFormat;
    :goto_13
    instance-of v9, v4, Ljava/text/SimpleDateFormat;

    if-eqz v9, :cond_5a

    .line 184
    check-cast v4, Ljava/text/SimpleDateFormat;

    .end local v4           #format:Ljava/text/DateFormat;
    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, order:Ljava/lang/String;
    :goto_1d
    const v9, 0x1020171

    invoke-virtual {p0, v9}, Landroid/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 194
    .local v7, parent:Landroid/widget/LinearLayout;
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 196
    const/4 v8, 0x0

    .line 197
    .local v8, quoted:Z
    const/4 v1, 0x0

    .local v1, didDay:Z
    const/4 v2, 0x0

    .local v2, didMonth:Z
    const/4 v3, 0x0

    .line 199
    .local v3, didYear:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2e
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v5, v9, :cond_88

    .line 200
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 202
    .local v0, c:C
    const/16 v9, 0x27

    if-ne v0, v9, :cond_40

    .line 203
    if-nez v8, :cond_68

    const/4 v9, 0x1

    move v8, v9

    .line 206
    :cond_40
    :goto_40
    if-nez v8, :cond_4e

    .line 207
    const/16 v9, 0x64

    if-ne v0, v9, :cond_6a

    if-nez v1, :cond_6a

    .line 208
    iget-object v9, p0, Landroid/widget/DatePicker;->mDayPicker:Lcom/android/internal/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 209
    const/4 v1, 0x1

    .line 199
    :cond_4e
    :goto_4e
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 180
    .end local v0           #c:C
    .end local v1           #didDay:Z
    .end local v2           #didMonth:Z
    .end local v3           #didYear:Z
    .end local v5           #i:I
    .end local v6           #order:Ljava/lang/String;
    .end local v7           #parent:Landroid/widget/LinearLayout;
    .end local v8           #quoted:Z
    :cond_51
    invoke-virtual {p0}, Landroid/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    .restart local v4       #format:Ljava/text/DateFormat;
    goto :goto_13

    .line 187
    :cond_5a
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/String;-><init>([C)V

    .restart local v6       #order:Ljava/lang/String;
    goto :goto_1d

    .end local v4           #format:Ljava/text/DateFormat;
    .restart local v0       #c:C
    .restart local v1       #didDay:Z
    .restart local v2       #didMonth:Z
    .restart local v3       #didYear:Z
    .restart local v5       #i:I
    .restart local v7       #parent:Landroid/widget/LinearLayout;
    .restart local v8       #quoted:Z
    :cond_68
    move v8, v11

    .line 203
    goto :goto_40

    .line 210
    :cond_6a
    const/16 v9, 0x4d

    if-eq v0, v9, :cond_72

    const/16 v9, 0x4c

    if-ne v0, v9, :cond_7b

    :cond_72
    if-nez v2, :cond_7b

    .line 211
    iget-object v9, p0, Landroid/widget/DatePicker;->mMonthPicker:Lcom/android/internal/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    const/4 v2, 0x1

    goto :goto_4e

    .line 213
    :cond_7b
    const/16 v9, 0x79

    if-ne v0, v9, :cond_4e

    if-nez v3, :cond_4e

    .line 214
    iget-object v9, p0, Landroid/widget/DatePicker;->mYearPicker:Lcom/android/internal/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    const/4 v3, 0x1

    goto :goto_4e

    .line 221
    .end local v0           #c:C
    :cond_88
    if-nez v2, :cond_8f

    .line 222
    iget-object v9, p0, Landroid/widget/DatePicker;->mMonthPicker:Lcom/android/internal/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    :cond_8f
    if-nez v1, :cond_96

    .line 225
    iget-object v9, p0, Landroid/widget/DatePicker;->mDayPicker:Lcom/android/internal/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    :cond_96
    if-nez v3, :cond_9d

    .line 228
    iget-object v9, p0, Landroid/widget/DatePicker;->mYearPicker:Lcom/android/internal/widget/NumberPicker;

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    :cond_9d
    return-void
.end method

.method private updateDaySpinner()V
    .registers 6

    .prologue
    .line 351
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 352
    .local v0, cal:Ljava/util/Calendar;
    iget v2, p0, Landroid/widget/DatePicker;->mYear:I

    iget v3, p0, Landroid/widget/DatePicker;->mMonth:I

    iget v4, p0, Landroid/widget/DatePicker;->mDay:I

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 353
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    .line 354
    .local v1, max:I
    iget-object v2, p0, Landroid/widget/DatePicker;->mDayPicker:Lcom/android/internal/widget/NumberPicker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/widget/NumberPicker;->setRange(II)V

    .line 355
    iget-object v2, p0, Landroid/widget/DatePicker;->mDayPicker:Lcom/android/internal/widget/NumberPicker;

    iget v3, p0, Landroid/widget/DatePicker;->mDay:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/NumberPicker;->setCurrent(I)V

    .line 356
    return-void
.end method

.method private updateSpinners()V
    .registers 3

    .prologue
    .line 341
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateDaySpinner()V

    .line 342
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearPicker:Lcom/android/internal/widget/NumberPicker;

    iget v1, p0, Landroid/widget/DatePicker;->mYear:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NumberPicker;->setCurrent(I)V

    .line 347
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthPicker:Lcom/android/internal/widget/NumberPicker;

    iget v1, p0, Landroid/widget/DatePicker;->mMonth:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/NumberPicker;->setCurrent(I)V

    .line 348
    return-void
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 306
    return-void
.end method

.method public getDayOfMonth()I
    .registers 2

    .prologue
    .line 367
    iget v0, p0, Landroid/widget/DatePicker;->mDay:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    .prologue
    .line 363
    iget v0, p0, Landroid/widget/DatePicker;->mMonth:I

    return v0
.end method

.method public getYear()I
    .registers 2

    .prologue
    .line 359
    iget v0, p0, Landroid/widget/DatePicker;->mYear:I

    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .registers 5
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "onDateChangedListener"

    .prologue
    .line 333
    iput p1, p0, Landroid/widget/DatePicker;->mYear:I

    .line 334
    iput p2, p0, Landroid/widget/DatePicker;->mMonth:I

    .line 335
    iput p3, p0, Landroid/widget/DatePicker;->mDay:I

    .line 336
    iput-object p4, p0, Landroid/widget/DatePicker;->mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

    .line 337
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    .line 338
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 317
    move-object v0, p1

    check-cast v0, Landroid/widget/DatePicker$SavedState;

    move-object v1, v0

    .line 318
    .local v1, ss:Landroid/widget/DatePicker$SavedState;
    invoke-virtual {v1}, Landroid/widget/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 319
    invoke-virtual {v1}, Landroid/widget/DatePicker$SavedState;->getYear()I

    move-result v2

    iput v2, p0, Landroid/widget/DatePicker;->mYear:I

    .line 320
    invoke-virtual {v1}, Landroid/widget/DatePicker$SavedState;->getMonth()I

    move-result v2

    iput v2, p0, Landroid/widget/DatePicker;->mMonth:I

    .line 321
    invoke-virtual {v1}, Landroid/widget/DatePicker$SavedState;->getDay()I

    move-result v2

    iput v2, p0, Landroid/widget/DatePicker;->mDay:I

    .line 322
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 7

    .prologue
    .line 310
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 312
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/DatePicker$SavedState;

    iget v2, p0, Landroid/widget/DatePicker;->mYear:I

    iget v3, p0, Landroid/widget/DatePicker;->mMonth:I

    iget v4, p0, Landroid/widget/DatePicker;->mDay:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILandroid/widget/DatePicker$1;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Landroid/widget/DatePicker;->mDayPicker:Lcom/android/internal/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NumberPicker;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Landroid/widget/DatePicker;->mMonthPicker:Lcom/android/internal/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NumberPicker;->setEnabled(Z)V

    .line 163
    iget-object v0, p0, Landroid/widget/DatePicker;->mYearPicker:Lcom/android/internal/widget/NumberPicker;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NumberPicker;->setEnabled(Z)V

    .line 164
    return-void
.end method

.method public updateDate(III)V
    .registers 5
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 233
    iput p1, p0, Landroid/widget/DatePicker;->mYear:I

    .line 234
    iput p2, p0, Landroid/widget/DatePicker;->mMonth:I

    .line 235
    iput p3, p0, Landroid/widget/DatePicker;->mDay:I

    .line 236
    invoke-direct {p0}, Landroid/widget/DatePicker;->updateSpinners()V

    .line 237
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 238
    return-void
.end method
