.class public Lcom/android/internal/widget/NumberPickerButton;
.super Landroid/widget/ImageButton;
.source "NumberPickerButton.java"


# instance fields
.field private mNumberPicker:Lcom/android/internal/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method private cancelLongpress()V
    .registers 3

    .prologue
    .line 80
    const v0, 0x10201b6

    invoke-virtual {p0}, Lcom/android/internal/widget/NumberPickerButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 81
    iget-object v0, p0, Lcom/android/internal/widget/NumberPickerButton;->mNumberPicker:Lcom/android/internal/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/android/internal/widget/NumberPicker;->cancelIncrement()V

    .line 85
    :cond_e
    :goto_e
    return-void

    .line 82
    :cond_f
    const v0, 0x10201b8

    invoke-virtual {p0}, Lcom/android/internal/widget/NumberPickerButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 83
    iget-object v0, p0, Lcom/android/internal/widget/NumberPickerButton;->mNumberPicker:Lcom/android/internal/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/android/internal/widget/NumberPicker;->cancelDecrement()V

    goto :goto_e
.end method

.method private cancelLongpressIfRequired(Landroid/view/MotionEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 75
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/widget/NumberPickerButton;->cancelLongpress()V

    .line 77
    :cond_11
    return-void
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 65
    const/16 v0, 0x17

    if-eq p1, v0, :cond_8

    const/16 v0, 0x42

    if-ne p1, v0, :cond_b

    .line 67
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/widget/NumberPickerButton;->cancelLongpress()V

    .line 69
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/widget/NumberPickerButton;->cancelLongpressIfRequired(Landroid/view/MotionEvent;)V

    .line 54
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/widget/NumberPickerButton;->cancelLongpressIfRequired(Landroid/view/MotionEvent;)V

    .line 60
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setNumberPicker(Lcom/android/internal/widget/NumberPicker;)V
    .registers 2
    .parameter "picker"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/internal/widget/NumberPickerButton;->mNumberPicker:Lcom/android/internal/widget/NumberPicker;

    .line 49
    return-void
.end method
