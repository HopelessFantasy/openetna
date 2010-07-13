.class public Lcom/lge/homecube/SearchAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "SearchAutoCompleteTextView.java"


# static fields
.field private static final RESTRICTED_INPUT_INTENT_ACTION:Ljava/lang/String; = "com.android.inputmethod.xim.RESTRICTED_INPUT"

.field private static final RESTRICTED_INPUT_INTENT_EXTRA:Ljava/lang/String; = "FOCUS_CHANGED"

.field private static final RESTRICTED_INPUT_INTENT_FLAG_VIEW:I = 0x1

.field private static final RESTRICTED_INPUT_INTENT_FLAG_WINDOW:I


# instance fields
.field private mLoseFocusHandler:Landroid/os/Handler;

.field private mShowKeyboard:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/lge/homecube/SearchAutoCompleteTextView$1;

    invoke-direct {v0, p0}, Lcom/lge/homecube/SearchAutoCompleteTextView$1;-><init>(Lcom/lge/homecube/SearchAutoCompleteTextView;)V

    iput-object v0, p0, Lcom/lge/homecube/SearchAutoCompleteTextView;->mLoseFocusHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Lcom/lge/homecube/SearchAutoCompleteTextView$1;

    invoke-direct {v0, p0}, Lcom/lge/homecube/SearchAutoCompleteTextView$1;-><init>(Lcom/lge/homecube/SearchAutoCompleteTextView;)V

    iput-object v0, p0, Lcom/lge/homecube/SearchAutoCompleteTextView;->mLoseFocusHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Lcom/lge/homecube/SearchAutoCompleteTextView$1;

    invoke-direct {v0, p0}, Lcom/lge/homecube/SearchAutoCompleteTextView$1;-><init>(Lcom/lge/homecube/SearchAutoCompleteTextView;)V

    iput-object v0, p0, Lcom/lge/homecube/SearchAutoCompleteTextView;->mLoseFocusHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method private sendFocusChangeToIME(ZI)V
    .registers 5
    .parameter "gainFocus"
    .parameter "flag"

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.inputmethod.xim.RESTRICTED_INPUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "FOCUS_CHANGED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0}, Lcom/lge/homecube/SearchAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 77
    return-void
.end method


# virtual methods
.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 10
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 83
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 86
    invoke-direct {p0, p1, v4}, Lcom/lge/homecube/SearchAutoCompleteTextView;->sendFocusChangeToIME(ZI)V

    .line 89
    invoke-virtual {p0}, Lcom/lge/homecube/SearchAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 90
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_60

    .line 91
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit8 v3, v3, -0x10

    or-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 103
    :goto_20
    invoke-virtual {p0}, Lcom/lge/homecube/SearchAutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_5f

    .line 104
    invoke-virtual {p0}, Lcom/lge/homecube/SearchAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 106
    .local v2, manager:Landroid/view/WindowManager;
    invoke-virtual {p0}, Lcom/lge/homecube/SearchAutoCompleteTextView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-boolean v3, p0, Lcom/lge/homecube/SearchAutoCompleteTextView;->mShowKeyboard:Z

    if-eqz v3, :cond_5f

    .line 109
    invoke-virtual {p0}, Lcom/lge/homecube/SearchAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5d

    .line 111
    invoke-virtual {p0}, Lcom/lge/homecube/SearchAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 113
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 115
    .end local v0           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_5d
    iput-boolean v5, p0, Lcom/lge/homecube/SearchAutoCompleteTextView;->mShowKeyboard:Z

    .line 118
    .end local v2           #manager:Landroid/view/WindowManager;
    :cond_5f
    return-void

    .line 96
    :cond_60
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit8 v3, v3, -0x10

    or-int/lit8 v3, v3, 0x0

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 100
    iget-object v3, p0, Lcom/lge/homecube/SearchAutoCompleteTextView;->mLoseFocusHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_20
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter "hasWindowFocus"

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onWindowFocusChanged(Z)V

    .line 124
    invoke-virtual {p0, v1}, Lcom/lge/homecube/SearchAutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 127
    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/lge/homecube/SearchAutoCompleteTextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 128
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lge/homecube/SearchAutoCompleteTextView;->sendFocusChangeToIME(ZI)V

    .line 131
    :cond_13
    return-void
.end method

.method showKeyboardOnNextFocus()V
    .registers 2

    .prologue
    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/homecube/SearchAutoCompleteTextView;->mShowKeyboard:Z

    .line 135
    return-void
.end method
