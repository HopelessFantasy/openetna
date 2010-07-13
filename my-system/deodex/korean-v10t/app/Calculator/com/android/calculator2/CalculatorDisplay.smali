.class Lcom/android/calculator2/CalculatorDisplay;
.super Landroid/widget/ViewSwitcher;
.source "CalculatorDisplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calculator2/CalculatorDisplay$Scroll;
    }
.end annotation


# static fields
.field private static final ACCEPTED_CHARS:[C = null

.field private static final ANIM_DURATION:I = 0x1f4


# instance fields
.field inAnimDown:Landroid/view/animation/TranslateAnimation;

.field inAnimUp:Landroid/view/animation/TranslateAnimation;

.field outAnimDown:Landroid/view/animation/TranslateAnimation;

.field outAnimUp:Landroid/view/animation/TranslateAnimation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-string v0, "0123456789.+-*/\u2212\u00d7\u00f7()!%^"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/calculator2/CalculatorDisplay;->ACCEPTED_CHARS:[C

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method static synthetic access$000()[C
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/calculator2/CalculatorDisplay;->ACCEPTED_CHARS:[C

    return-object v0
.end method


# virtual methods
.method getEditText()Landroid/widget/EditText;
    .registers 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getCurrentView()Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    return-object p0
.end method

.method getSelectionStart()I
    .registers 3

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 147
    .local v0, text:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    return v1
.end method

.method getText()Landroid/text/Editable;
    .registers 3

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 114
    .local v0, text:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    return-object v1
.end method

.method insert(Ljava/lang/String;)V
    .registers 5
    .parameter "delta"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 104
    .local v1, editor:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 105
    .local v0, cursor:I
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 106
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4
    .parameter "gain"
    .parameter "direction"
    .parameter "prev"

    .prologue
    .line 153
    if-nez p1, :cond_5

    .line 154
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->requestFocus()Z

    .line 156
    :cond_5
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 10
    .parameter "w"
    .parameter "h"
    .parameter "oldW"
    .parameter "oldH"

    .prologue
    const-wide/16 v3, 0x1f4

    const/4 v2, 0x0

    .line 91
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p2

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->inAnimUp:Landroid/view/animation/TranslateAnimation;

    .line 92
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->inAnimUp:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 93
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-int v1, p2

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->outAnimUp:Landroid/view/animation/TranslateAnimation;

    .line 94
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->outAnimUp:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 96
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-int v1, p2

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->inAnimDown:Landroid/view/animation/TranslateAnimation;

    .line 97
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->inAnimDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 98
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p2

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->outAnimDown:Landroid/view/animation/TranslateAnimation;

    .line 99
    iget-object v0, p0, Lcom/android/calculator2/CalculatorDisplay;->outAnimDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 100
    return-void
.end method

.method protected setLogic(Lcom/android/calculator2/Logic;)V
    .registers 7
    .parameter "logic"

    .prologue
    .line 54
    new-instance v0, Lcom/android/calculator2/CalculatorDisplay$1;

    invoke-direct {v0, p0}, Lcom/android/calculator2/CalculatorDisplay$1;-><init>(Lcom/android/calculator2/CalculatorDisplay;)V

    .line 74
    .local v0, calculatorKeyListener:Landroid/text/method/NumberKeyListener;
    new-instance v1, Lcom/android/calculator2/CalculatorEditable$Factory;

    invoke-direct {v1, p1}, Lcom/android/calculator2/CalculatorEditable$Factory;-><init>(Lcom/android/calculator2/Logic;)V

    .line 75
    .local v1, factory:Landroid/text/Editable$Factory;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    const/4 v4, 0x2

    if-ge v2, v4, :cond_21

    .line 76
    invoke-virtual {p0, v2}, Lcom/android/calculator2/CalculatorDisplay;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 77
    .local v3, text:Landroid/widget/EditText;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setEditableFactory(Landroid/text/Editable$Factory;)V

    .line 79
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 81
    .end local v3           #text:Landroid/widget/EditText;
    :cond_21
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorDisplay;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorDisplay;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 87
    return-void
.end method

.method setSelection(I)V
    .registers 3
    .parameter "i"

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 142
    .local v0, text:Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 143
    return-void
.end method

.method setText(Ljava/lang/CharSequence;Lcom/android/calculator2/CalculatorDisplay$Scroll;)V
    .registers 6
    .parameter "text"
    .parameter "dir"

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_d

    .line 119
    sget-object p2, Lcom/android/calculator2/CalculatorDisplay$Scroll;->NONE:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    .line 122
    :cond_d
    sget-object v1, Lcom/android/calculator2/CalculatorDisplay$Scroll;->UP:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    if-ne p2, v1, :cond_2f

    .line 123
    iget-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->inAnimUp:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v1}, Lcom/android/calculator2/CalculatorDisplay;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 124
    iget-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->outAnimUp:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v1}, Lcom/android/calculator2/CalculatorDisplay;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 133
    :goto_1b
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 134
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 137
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorDisplay;->showNext()V

    .line 138
    return-void

    .line 125
    .end local v0           #editText:Landroid/widget/EditText;
    :cond_2f
    sget-object v1, Lcom/android/calculator2/CalculatorDisplay$Scroll;->DOWN:Lcom/android/calculator2/CalculatorDisplay$Scroll;

    if-ne p2, v1, :cond_3e

    .line 126
    iget-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->inAnimDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v1}, Lcom/android/calculator2/CalculatorDisplay;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 127
    iget-object v1, p0, Lcom/android/calculator2/CalculatorDisplay;->outAnimDown:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v1}, Lcom/android/calculator2/CalculatorDisplay;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1b

    .line 129
    :cond_3e
    invoke-virtual {p0, v2}, Lcom/android/calculator2/CalculatorDisplay;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 130
    invoke-virtual {p0, v2}, Lcom/android/calculator2/CalculatorDisplay;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1b
.end method
