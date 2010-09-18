.class public Lcom/android/internal/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/NumberPicker$NumberRangeKeyListener;,
        Lcom/android/internal/widget/NumberPicker$NumberPickerInputFilter;,
        Lcom/android/internal/widget/NumberPicker$Formatter;,
        Lcom/android/internal/widget/NumberPicker$OnChangedListener;
    }
.end annotation


# static fields
.field private static final DIGIT_CHARACTERS:[C

.field public static final TWO_DIGIT_FORMATTER:Lcom/android/internal/widget/NumberPicker$Formatter;

.field public static maxDigitsAllowed:Ljava/lang/Integer;


# instance fields
.field private mCurrent:I

.field private mDecrement:Z

.field private mDecrementButton:Lcom/android/internal/widget/NumberPickerButton;

.field private mDisplayedValues:[Ljava/lang/String;

.field private mEnd:I

.field private mFormatter:Lcom/android/internal/widget/NumberPicker$Formatter;

.field private final mHandler:Landroid/os/Handler;

.field private mIncrement:Z

.field private mIncrementButton:Lcom/android/internal/widget/NumberPickerButton;

.field private mListener:Lcom/android/internal/widget/NumberPicker$OnChangedListener;

.field private final mNumberInputFilter:Landroid/text/InputFilter;

.field private mPrevious:I

.field private final mRunnable:Ljava/lang/Runnable;

.field private mSpeed:J

.field private mStart:I

.field private final mText:Landroid/widget/EditText;

.field private previousNumberInTheTextBox:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/widget/NumberPicker;->maxDigitsAllowed:Ljava/lang/Integer;

    .line 66
    new-instance v0, Lcom/android/internal/widget/NumberPicker$1;

    invoke-direct {v0}, Lcom/android/internal/widget/NumberPicker$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lcom/android/internal/widget/NumberPicker$Formatter;

    .line 345
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/internal/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    :array_14
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    new-instance v3, Lcom/android/internal/widget/NumberPicker$2;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/NumberPicker$2;-><init>(Lcom/android/internal/widget/NumberPicker;)V

    iput-object v3, p0, Lcom/android/internal/widget/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    .line 102
    const-wide/16 v3, 0x12c

    iput-wide v3, p0, Lcom/android/internal/widget/NumberPicker;->mSpeed:J

    .line 118
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/NumberPicker;->setOrientation(I)V

    .line 119
    iget-object v3, p0, Lcom/android/internal/widget/NumberPicker;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 120
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x109003e

    invoke-virtual {v0, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 121
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/NumberPicker;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v1, Lcom/android/internal/widget/NumberPicker$NumberPickerInputFilter;

    invoke-direct {v1, p0, v7}, Lcom/android/internal/widget/NumberPicker$NumberPickerInputFilter;-><init>(Lcom/android/internal/widget/NumberPicker;Lcom/android/internal/widget/NumberPicker$1;)V

    .line 123
    .local v1, inputFilter:Landroid/text/InputFilter;
    new-instance v3, Lcom/android/internal/widget/NumberPicker$NumberRangeKeyListener;

    invoke-direct {v3, p0, v7}, Lcom/android/internal/widget/NumberPicker$NumberRangeKeyListener;-><init>(Lcom/android/internal/widget/NumberPicker;Lcom/android/internal/widget/NumberPicker$1;)V

    iput-object v3, p0, Lcom/android/internal/widget/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    .line 124
    const v3, 0x10201b6

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/NumberPickerButton;

    iput-object v3, p0, Lcom/android/internal/widget/NumberPicker;->mIncrementButton:Lcom/android/internal/widget/NumberPickerButton;

    .line 125
    iget-object v3, p0, Lcom/android/internal/widget/NumberPicker;->mIncrementButton:Lcom/android/internal/widget/NumberPickerButton;

    invoke-virtual {v3, p0}, Lcom/android/internal/widget/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v3, p0, Lcom/android/internal/widget/NumberPicker;->mIncrementButton:Lcom/android/internal/widget/NumberPickerButton;

    invoke-virtual {v3, p0}, Lcom/android/internal/widget/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 127
    iget-object v3, p0, Lcom/android/internal/widget/NumberPicker;->mIncrementButton:Lcom/android/internal/widget/NumberPickerButton;

    invoke-virtual {v3, p0}, Lcom/android/internal/widget/NumberPickerButton;->setNumberPicker(Lcom/android/internal/widget/NumberPicker;)V

    .line 128
    const v3, 0x10201b8

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/NumberPickerButton;

    iput-object v3, p0, Lcom/android/internal/widget/NumberPicker;->mDecrementButton:Lcom/android/internal/widget/NumberPickerButton;

    .line 129
    iget-object v3, p0, Lcom/android/internal/widget/NumberPicker;->mDecrementButton:Lcom/android/internal/widget/NumberPickerButton;

    invoke-virtual {v3, p0}, Lcom/android/internal/widget/NumberPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v3, p0, Lcom/android/internal/widget/NumberPicker;->mDecrementButton:Lcom/android/internal/widget/NumberPickerButton;

    invoke-virtual {v3, p0}, Lcom/android/internal/widget/NumberPickerButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 131
    iget-object v3, p0, Lcom/android/internal/widget/NumberPicker;->mDecrementButton:Lcom/android/internal/widget/NumberPickerButton;

    invoke-virtual {v3, p0}, Lcom/android/internal/widget/NumberPickerButton;->setNumberPicker(Lcom/android/internal/widget/NumberPicker;)V

    .line 133
    const v3, 0x10201b7

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/internal/widget/NumberPicker;->mText:Landroid/widget/EditText;

    .line 134
    iget-object v3, p0, Lcom/android/internal/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 137
    new-instance v2, Lcom/android/internal/widget/NumberPicker$3;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/NumberPicker$3;-><init>(Lcom/android/internal/widget/NumberPicker;)V

    .line 157
    .local v2, mTextWatcher:Landroid/text/TextWatcher;
    sget-object v3, Lcom/android/internal/widget/NumberPicker;->maxDigitsAllowed:Ljava/lang/Integer;

    if-eqz v3, :cond_89

    .line 158
    iget-object v3, p0, Lcom/android/internal/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 161
    :cond_89
    iget-object v3, p0, Lcom/android/internal/widget/NumberPicker;->mText:Landroid/widget/EditText;

    new-array v4, v5, [Landroid/text/InputFilter;

    aput-object v1, v4, v6

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 162
    iget-object v3, p0, Lcom/android/internal/widget/NumberPicker;->mText:Landroid/widget/EditText;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/widget/NumberPicker;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_a1

    .line 165
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/NumberPicker;->setEnabled(Z)V

    .line 167
    :cond_a1
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/NumberPicker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/internal/widget/NumberPicker;->mIncrement:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/NumberPicker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/internal/widget/NumberPicker;->mCurrent:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/NumberPicker;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/NumberPicker;)Landroid/text/InputFilter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;

    return-object v0
.end method

.method static synthetic access$1200()[C
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/internal/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/NumberPicker;Ljava/lang/String;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/internal/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/NumberPicker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/android/internal/widget/NumberPicker;->mEnd:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/NumberPicker;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/internal/widget/NumberPicker;->changeCurrent(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/widget/NumberPicker;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/android/internal/widget/NumberPicker;->mSpeed:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/NumberPicker;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/NumberPicker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/internal/widget/NumberPicker;->mDecrement:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/NumberPicker;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker;->mText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/NumberPicker;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker;->previousNumberInTheTextBox:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/widget/NumberPicker;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/internal/widget/NumberPicker;->previousNumberInTheTextBox:Ljava/lang/String;

    return-object p1
.end method

.method private changeCurrent(I)V
    .registers 3
    .parameter "current"

    .prologue
    .line 250
    iget v0, p0, Lcom/android/internal/widget/NumberPicker;->mEnd:I

    if-le p1, v0, :cond_13

    .line 251
    iget p1, p0, Lcom/android/internal/widget/NumberPicker;->mStart:I

    .line 255
    :cond_6
    :goto_6
    iget v0, p0, Lcom/android/internal/widget/NumberPicker;->mCurrent:I

    iput v0, p0, Lcom/android/internal/widget/NumberPicker;->mPrevious:I

    .line 256
    iput p1, p0, Lcom/android/internal/widget/NumberPicker;->mCurrent:I

    .line 257
    invoke-direct {p0}, Lcom/android/internal/widget/NumberPicker;->notifyChange()V

    .line 258
    invoke-direct {p0}, Lcom/android/internal/widget/NumberPicker;->updateView()V

    .line 259
    return-void

    .line 252
    :cond_13
    iget v0, p0, Lcom/android/internal/widget/NumberPicker;->mStart:I

    if-ge p1, v0, :cond_6

    .line 253
    iget p1, p0, Lcom/android/internal/widget/NumberPicker;->mEnd:I

    goto :goto_6
.end method

.method private formatNumber(I)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker;->mFormatter:Lcom/android/internal/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker;->mFormatter:Lcom/android/internal/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/NumberPicker$Formatter;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .registers 4
    .parameter "str"

    .prologue
    .line 418
    iget-object v1, p0, Lcom/android/internal/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_9

    .line 419
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 440
    :goto_8
    return v1

    .line 421
    :cond_9
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v1, p0, Lcom/android/internal/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_28

    .line 424
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 425
    iget-object v1, p0, Lcom/android/internal/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 426
    iget v1, p0, Lcom/android/internal/widget/NumberPicker;->mStart:I

    add-int/2addr v1, v0

    goto :goto_8

    .line 421
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 434
    :cond_28
    :try_start_28
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_2b} :catch_2d

    move-result v1

    goto :goto_8

    .line 435
    :catch_2d
    move-exception v1

    .line 440
    iget v1, p0, Lcom/android/internal/widget/NumberPicker;->mStart:I

    goto :goto_8
.end method

.method private notifyChange()V
    .registers 4

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker;->mListener:Lcom/android/internal/widget/NumberPicker$OnChangedListener;

    if-eqz v0, :cond_d

    .line 263
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker;->mListener:Lcom/android/internal/widget/NumberPicker$OnChangedListener;

    iget v1, p0, Lcom/android/internal/widget/NumberPicker;->mPrevious:I

    iget v2, p0, Lcom/android/internal/widget/NumberPicker;->mCurrent:I

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/widget/NumberPicker$OnChangedListener;->onChanged(Lcom/android/internal/widget/NumberPicker;II)V

    .line 265
    :cond_d
    return-void
.end method

.method private updateView()V
    .registers 5

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_1f

    .line 274
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker;->mText:Landroid/widget/EditText;

    iget v1, p0, Lcom/android/internal/widget/NumberPicker;->mCurrent:I

    invoke-direct {p0, v1}, Lcom/android/internal/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :goto_f
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker;->mText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/internal/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 279
    return-void

    .line 276
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker;->mText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/internal/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/widget/NumberPicker;->mCurrent:I

    iget v3, p0, Lcom/android/internal/widget/NumberPicker;->mStart:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method

.method private validateCurrentView(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "str"

    .prologue
    .line 282
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 283
    .local v0, val:I
    iget v1, p0, Lcom/android/internal/widget/NumberPicker;->mStart:I

    if-lt v0, v1, :cond_1d

    iget v1, p0, Lcom/android/internal/widget/NumberPicker;->mEnd:I

    if-gt v0, v1, :cond_1d

    .line 284
    iget v1, p0, Lcom/android/internal/widget/NumberPicker;->mCurrent:I

    if-eq v1, v0, :cond_1d

    .line 285
    iget v1, p0, Lcom/android/internal/widget/NumberPicker;->mCurrent:I

    iput v1, p0, Lcom/android/internal/widget/NumberPicker;->mPrevious:I

    .line 286
    iput v0, p0, Lcom/android/internal/widget/NumberPicker;->mCurrent:I

    .line 287
    invoke-direct {p0}, Lcom/android/internal/widget/NumberPicker;->notifyChange()V

    .line 290
    :cond_1d
    invoke-direct {p0}, Lcom/android/internal/widget/NumberPicker;->updateView()V

    .line 291
    return-void
.end method

.method private validateInput(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 304
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, str:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 308
    invoke-direct {p0}, Lcom/android/internal/widget/NumberPicker;->updateView()V

    .line 314
    :goto_15
    return-void

    .line 312
    :cond_16
    invoke-direct {p0, v0}, Lcom/android/internal/widget/NumberPicker;->validateCurrentView(Ljava/lang/CharSequence;)V

    goto :goto_15
.end method


# virtual methods
.method public cancelDecrement()V
    .registers 2

    .prologue
    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/NumberPicker;->mDecrement:Z

    .line 343
    return-void
.end method

.method public cancelIncrement()V
    .registers 2

    .prologue
    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/NumberPicker;->mIncrement:Z

    .line 339
    return-void
.end method

.method public getCurrent()I
    .registers 2

    .prologue
    .line 447
    iget v0, p0, Lcom/android/internal/widget/NumberPicker;->mCurrent:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/android/internal/widget/NumberPicker;->validateInput(Landroid/view/View;)V

    .line 231
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 234
    :cond_12
    const v0, 0x10201b6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_23

    .line 235
    iget v0, p0, Lcom/android/internal/widget/NumberPicker;->mCurrent:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/NumberPicker;->changeCurrent(I)V

    .line 239
    :cond_22
    :goto_22
    return-void

    .line 236
    :cond_23
    const v0, 0x10201b8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_22

    .line 237
    iget v0, p0, Lcom/android/internal/widget/NumberPicker;->mCurrent:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/NumberPicker;->changeCurrent(I)V

    goto :goto_22
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 298
    if-nez p2, :cond_5

    .line 299
    invoke-direct {p0, p1}, Lcom/android/internal/widget/NumberPicker;->validateInput(Landroid/view/View;)V

    .line 301
    :cond_5
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 5
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 325
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 327
    const v0, 0x10201b6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_19

    .line 328
    iput-boolean v2, p0, Lcom/android/internal/widget/NumberPicker;->mIncrement:Z

    .line 329
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/widget/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 334
    :cond_18
    :goto_18
    return v2

    .line 330
    :cond_19
    const v0, 0x10201b8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_18

    .line 331
    iput-boolean v2, p0, Lcom/android/internal/widget/NumberPicker;->mDecrement:Z

    .line 332
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/widget/NumberPicker;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_18
.end method

.method public setCurrent(I)V
    .registers 2
    .parameter "current"

    .prologue
    .line 217
    iput p1, p0, Lcom/android/internal/widget/NumberPicker;->mCurrent:I

    .line 218
    invoke-direct {p0}, Lcom/android/internal/widget/NumberPicker;->updateView()V

    .line 219
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker;->mIncrementButton:Lcom/android/internal/widget/NumberPickerButton;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NumberPickerButton;->setEnabled(Z)V

    .line 173
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker;->mDecrementButton:Lcom/android/internal/widget/NumberPickerButton;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/NumberPickerButton;->setEnabled(Z)V

    .line 174
    iget-object v0, p0, Lcom/android/internal/widget/NumberPicker;->mText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 175
    return-void
.end method

.method public setFormatter(Lcom/android/internal/widget/NumberPicker$Formatter;)V
    .registers 2
    .parameter "formatter"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/internal/widget/NumberPicker;->mFormatter:Lcom/android/internal/widget/NumberPicker$Formatter;

    .line 183
    return-void
.end method

.method public setOnChangeListener(Lcom/android/internal/widget/NumberPicker$OnChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/internal/widget/NumberPicker;->mListener:Lcom/android/internal/widget/NumberPicker$OnChangedListener;

    .line 179
    return-void
.end method

.method public setRange(II)V
    .registers 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 193
    iput p1, p0, Lcom/android/internal/widget/NumberPicker;->mStart:I

    .line 194
    iput p2, p0, Lcom/android/internal/widget/NumberPicker;->mEnd:I

    .line 195
    iput p1, p0, Lcom/android/internal/widget/NumberPicker;->mCurrent:I

    .line 196
    invoke-direct {p0}, Lcom/android/internal/widget/NumberPicker;->updateView()V

    .line 197
    return-void
.end method

.method public setRange(II[Ljava/lang/String;)V
    .registers 4
    .parameter "start"
    .parameter "end"
    .parameter "displayedValues"

    .prologue
    .line 209
    iput-object p3, p0, Lcom/android/internal/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 210
    iput p1, p0, Lcom/android/internal/widget/NumberPicker;->mStart:I

    .line 211
    iput p2, p0, Lcom/android/internal/widget/NumberPicker;->mEnd:I

    .line 212
    iput p1, p0, Lcom/android/internal/widget/NumberPicker;->mCurrent:I

    .line 213
    invoke-direct {p0}, Lcom/android/internal/widget/NumberPicker;->updateView()V

    .line 214
    return-void
.end method

.method public setSpeed(J)V
    .registers 3
    .parameter "speed"

    .prologue
    .line 226
    iput-wide p1, p0, Lcom/android/internal/widget/NumberPicker;->mSpeed:J

    .line 227
    return-void
.end method
