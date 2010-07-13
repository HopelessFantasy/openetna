.class Lcom/android/browser/FindDialog;
.super Landroid/app/Dialog;
.source "FindDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mBrowserActivity:Lcom/android/browser/BrowserActivity;

.field private mEditText:Landroid/widget/EditText;

.field private mFindCancelListener:Landroid/view/View$OnClickListener;

.field private mFindListener:Landroid/view/View$OnClickListener;

.field private mFindPreviousListener:Landroid/view/View$OnClickListener;

.field private mMatches:Landroid/widget/TextView;

.field private mMatchesView:Landroid/view/View;

.field private mNextButton:Landroid/view/View;

.field private mOk:Landroid/view/View;

.field private mPrevButton:Landroid/view/View;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 96
    const v0, 0x7f0a0004

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 51
    new-instance v0, Lcom/android/browser/FindDialog$1;

    invoke-direct {v0, p0}, Lcom/android/browser/FindDialog$1;-><init>(Lcom/android/browser/FindDialog;)V

    iput-object v0, p0, Lcom/android/browser/FindDialog;->mFindListener:Landroid/view/View$OnClickListener;

    .line 57
    new-instance v0, Lcom/android/browser/FindDialog$2;

    invoke-direct {v0, p0}, Lcom/android/browser/FindDialog$2;-><init>(Lcom/android/browser/FindDialog;)V

    iput-object v0, p0, Lcom/android/browser/FindDialog;->mFindCancelListener:Landroid/view/View$OnClickListener;

    .line 64
    new-instance v0, Lcom/android/browser/FindDialog$3;

    invoke-direct {v0, p0}, Lcom/android/browser/FindDialog$3;-><init>(Lcom/android/browser/FindDialog;)V

    iput-object v0, p0, Lcom/android/browser/FindDialog;->mFindPreviousListener:Landroid/view/View$OnClickListener;

    .line 97
    iput-object p1, p0, Lcom/android/browser/FindDialog;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/FindDialog;->setCanceledOnTouchOutside(Z)V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/FindDialog;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->findNext()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/FindDialog;)Landroid/webkit/WebView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/FindDialog;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->hideSoftInput()V

    return-void
.end method

.method private disableButtons()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mPrevButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mNextButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mPrevButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 88
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mNextButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 89
    return-void
.end method

.method private findNext()V
    .registers 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_c

    .line 169
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No WebView for FindDialog::findNext"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 171
    :cond_c
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->findNext(Z)V

    .line 172
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->hideSoftInput()V

    .line 173
    return-void
.end method

.method private hideSoftInput()V
    .registers 4

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/browser/FindDialog;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 81
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 82
    return-void
.end method

.method private setMatchesFound(I)V
    .registers 8
    .parameter "found"

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/browser/FindDialog;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f08

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, template:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/FindDialog;->mMatches:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 232
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 191
    return-void
.end method

.method public dismiss()V
    .registers 2

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 143
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mBrowserActivity:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->closeFind()V

    .line 144
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearMatches()V

    .line 145
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 149
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 150
    .local v0, code:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_14

    move v1, v3

    .line 151
    .local v1, up:Z
    :goto_c
    sparse-switch v0, :sswitch_data_26

    .line 164
    :cond_f
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    :goto_13
    return v2

    .line 150
    .end local v1           #up:Z
    :cond_14
    const/4 v2, 0x0

    move v1, v2

    goto :goto_c

    .line 154
    .restart local v1       #up:Z
    :sswitch_17
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 157
    if-eqz v1, :cond_24

    .line 158
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->findNext()V

    :cond_24
    move v2, v3

    .line 160
    goto :goto_13

    .line 151
    :sswitch_data_26
    .sparse-switch
        0x17 -> :sswitch_17
        0x42 -> :sswitch_17
    .end sparse-switch
.end method

.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 106
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/browser/FindDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 113
    .local v1, theWindow:Landroid/view/Window;
    const/16 v2, 0x57

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 115
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lcom/android/browser/FindDialog;->setContentView(I)V

    .line 117
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 120
    const v2, 0x7f0c0015

    invoke-virtual {p0, v2}, Lcom/android/browser/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    .line 122
    const v2, 0x7f0c0014

    invoke-virtual {p0, v2}, Lcom/android/browser/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, button:Landroid/view/View;
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mFindListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iput-object v0, p0, Lcom/android/browser/FindDialog;->mNextButton:Landroid/view/View;

    .line 126
    const v2, 0x7f0c0013

    invoke-virtual {p0, v2}, Lcom/android/browser/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 127
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mFindPreviousListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iput-object v0, p0, Lcom/android/browser/FindDialog;->mPrevButton:Landroid/view/View;

    .line 130
    const v2, 0x7f0c0018

    invoke-virtual {p0, v2}, Lcom/android/browser/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 131
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mFindCancelListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iput-object v0, p0, Lcom/android/browser/FindDialog;->mOk:Landroid/view/View;

    .line 134
    const v2, 0x7f0c0017

    invoke-virtual {p0, v2}, Lcom/android/browser/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/browser/FindDialog;->mMatches:Landroid/widget/TextView;

    .line 135
    const v2, 0x7f0c0016

    invoke-virtual {p0, v2}, Lcom/android/browser/FindDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/FindDialog;->mMatchesView:Landroid/view/View;

    .line 136
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->disableButtons()V

    .line 137
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 139
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 11
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 197
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    if-nez v2, :cond_e

    .line 198
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "No WebView for FindDialog::onTextChanged"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 201
    :cond_e
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 202
    .local v0, find:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_29

    .line 203
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->disableButtons()V

    .line 204
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearMatches()V

    .line 205
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mMatchesView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 222
    :cond_28
    :goto_28
    return-void

    .line 207
    :cond_29
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mMatchesView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->findAll(Ljava/lang/String;)I

    move-result v1

    .line 209
    .local v1, found:I
    invoke-direct {p0, v1}, Lcom/android/browser/FindDialog;->setMatchesFound(I)V

    .line 210
    const/4 v2, 0x2

    if-ge v1, v2, :cond_47

    .line 211
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->disableButtons()V

    .line 212
    if-nez v1, :cond_28

    .line 213
    invoke-direct {p0, v5}, Lcom/android/browser/FindDialog;->setMatchesFound(I)V

    goto :goto_28

    .line 216
    :cond_47
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mPrevButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 217
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mNextButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 218
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mPrevButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 219
    iget-object v2, p0, Lcom/android/browser/FindDialog;->mNextButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_28
.end method

.method setWebView(Landroid/webkit/WebView;)V
    .registers 2
    .parameter "webview"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/browser/FindDialog;->mWebView:Landroid/webkit/WebView;

    .line 93
    return-void
.end method

.method public show()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 176
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 177
    iget-object v1, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 178
    iget-object v1, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v1, p0, Lcom/android/browser/FindDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 180
    .local v0, span:Landroid/text/Spannable;
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const/16 v2, 0x12

    invoke-interface {v0, p0, v3, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 182
    invoke-direct {p0, v3}, Lcom/android/browser/FindDialog;->setMatchesFound(I)V

    .line 183
    invoke-direct {p0}, Lcom/android/browser/FindDialog;->disableButtons()V

    .line 184
    return-void
.end method
