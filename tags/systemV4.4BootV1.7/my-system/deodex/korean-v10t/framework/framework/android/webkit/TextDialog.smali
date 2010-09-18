.class Landroid/webkit/TextDialog;
.super Landroid/widget/AutoCompleteTextView;
.source "TextDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/TextDialog$AutoCompleteAdapter;
    }
.end annotation


# static fields
.field private static final NO_FILTERS:[Landroid/text/InputFilter;


# instance fields
.field private mCharacter:[C

.field private mGotEnterDown:Z

.field private mHeightSpec:I

.field private mMaxLength:I

.field private mNodePointer:I

.field private mPreChange:Ljava/lang/String;

.field private mScrollToAccommodateCursor:Z

.field private mSingle:Z

.field private mWebView:Landroid/webkit/WebView;

.field private mWidthSpec:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/text/InputFilter;

    sput-object v0, Landroid/webkit/TextDialog;->NO_FILTERS:[Landroid/text/InputFilter;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .registers 15
    .parameter "context"
    .parameter "webView"

    .prologue
    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 87
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 74
    new-array v7, v9, [C

    iput-object v7, p0, Landroid/webkit/TextDialog;->mCharacter:[C

    .line 88
    iput-object p2, p0, Landroid/webkit/TextDialog;->mWebView:Landroid/webkit/WebView;

    .line 89
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v7, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v7}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v1, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 90
    .local v1, background:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    .line 91
    .local v6, shapePaint:Landroid/graphics/Paint;
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 93
    .local v2, color:Landroid/graphics/drawable/ColorDrawable;
    new-array v0, v11, [Landroid/graphics/drawable/Drawable;

    .line 94
    .local v0, array:[Landroid/graphics/drawable/Drawable;
    aput-object v2, v0, v8

    .line 95
    aput-object v1, v0, v9

    .line 96
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 99
    .local v4, layers:Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {p0, v4}, Landroid/webkit/TextDialog;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    const/4 v7, 0x3

    invoke-virtual {p0, v7, v11, v8, v8}, Landroid/webkit/TextDialog;->setPadding(IIII)V

    .line 103
    iput v10, p0, Landroid/webkit/TextDialog;->mMaxLength:I

    .line 106
    invoke-virtual {p0}, Landroid/webkit/TextDialog;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 107
    .local v5, paint:Landroid/text/TextPaint;
    invoke-virtual {v5}, Landroid/text/TextPaint;->getFlags()I

    move-result v7

    or-int/lit16 v7, v7, 0x80

    or-int/lit8 v3, v7, 0x1

    .line 109
    .local v3, flags:I
    invoke-virtual {v5, v3}, Landroid/text/TextPaint;->setFlags(I)V

    .line 113
    const/high16 v7, -0x100

    invoke-virtual {p0, v7}, Landroid/webkit/TextDialog;->setTextColor(I)V

    .line 114
    invoke-virtual {p0, v9}, Landroid/webkit/TextDialog;->setImeOptions(I)V

    .line 115
    return-void
.end method

.method private sendDomEvent(Landroid/view/KeyEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 423
    iget-object v0, p0, Landroid/webkit/TextDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/TextDialog;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebView;->passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V

    .line 424
    return-void
.end method


# virtual methods
.method bringIntoView()V
    .registers 2

    .prologue
    .line 405
    invoke-virtual {p0}, Landroid/webkit/TextDialog;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 406
    invoke-virtual {p0}, Landroid/webkit/TextDialog;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/TextDialog;->bringPointIntoView(I)Z

    .line 408
    :cond_11
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 20
    .parameter "event"

    .prologue
    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 120
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    .line 259
    :goto_a
    return v3

    .line 123
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2b

    const/4 v3, 0x1

    move v9, v3

    .line 124
    .local v9, down:Z
    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v11

    .line 125
    .local v11, keyCode:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/TextDialog;->getText()Landroid/text/Editable;

    move-result-object v17

    .line 126
    .local v17, text:Landroid/text/Spannable;
    invoke-interface/range {v17 .. v17}, Landroid/text/Spannable;->length()I

    move-result v5

    .line 130
    .local v5, oldLength:I
    const/16 v3, 0x43

    if-ne v3, v11, :cond_2e

    if-nez v5, :cond_2e

    .line 131
    invoke-direct/range {p0 .. p1}, Landroid/webkit/TextDialog;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 132
    const/4 v3, 0x1

    goto :goto_a

    .line 123
    .end local v5           #oldLength:I
    .end local v9           #down:Z
    .end local v11           #keyCode:I
    .end local v17           #text:Landroid/text/Spannable;
    :cond_2b
    const/4 v3, 0x0

    move v9, v3

    goto :goto_14

    .line 135
    .restart local v5       #oldLength:I
    .restart local v9       #down:Z
    .restart local v11       #keyCode:I
    .restart local v17       #text:Landroid/text/Spannable;
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/TextDialog;->mSingle:Z

    move v3, v0

    if-eqz v3, :cond_6b

    const/16 v3, 0x42

    if-ne v3, v11, :cond_6b

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/TextDialog;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 137
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_a

    .line 139
    :cond_44
    if-nez v9, :cond_66

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/TextDialog;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/TextDialog;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 145
    .end local v5           #oldLength:I
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v11}, Landroid/view/KeyEvent;-><init>(II)V

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/webkit/TextDialog;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 146
    invoke-direct/range {p0 .. p1}, Landroid/webkit/TextDialog;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 148
    :cond_66
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_a

    .line 149
    .restart local v5       #oldLength:I
    :cond_6b
    const/16 v3, 0x17

    if-ne v3, v11, :cond_89

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/TextDialog;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 152
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_a

    .line 155
    :cond_7a
    if-nez v9, :cond_84

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/TextDialog;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->shortPressOnTextField()V

    .line 159
    :cond_84
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_a

    .line 163
    :cond_89
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/TextDialog;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-nez v3, :cond_a0

    .line 164
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/TextDialog;->mWidthSpec:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/TextDialog;->mHeightSpec:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/webkit/TextDialog;->measure(II)V

    .line 166
    :cond_a0
    invoke-static/range {v17 .. v17}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v14

    .line 167
    .local v14, oldStart:I
    invoke-static/range {v17 .. v17}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v13

    .line 169
    .local v13, oldEnd:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/TextDialog;->mMaxLength:I

    move v3, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_de

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/TextDialog;->mMaxLength:I

    move v3, v0

    if-ne v5, v3, :cond_de

    const/4 v3, 0x1

    move v12, v3

    .line 174
    .local v12, maxedOut:Z
    :goto_b9
    if-eqz v12, :cond_e1

    if-eq v13, v14, :cond_e1

    .line 175
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 179
    .local v15, oldText:Ljava/lang/String;
    :goto_c1
    invoke-super/range {p0 .. p1}, Landroid/widget/AutoCompleteTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_12b

    .line 191
    sparse-switch v11, :sswitch_data_17a

    .line 204
    :goto_ca
    const/4 v10, 0x0

    .line 207
    .local v10, isArrowKey:Z
    :goto_cb
    if-eqz v12, :cond_11d

    if-nez v10, :cond_11d

    const/16 v3, 0x43

    if-eq v11, v3, :cond_11d

    .line 208
    if-ne v13, v14, :cond_ed

    .line 210
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/TextDialog;->mScrollToAccommodateCursor:Z

    .line 211
    const/4 v3, 0x1

    goto/16 :goto_a

    .line 169
    .end local v10           #isArrowKey:Z
    .end local v12           #maxedOut:Z
    .end local v15           #oldText:Ljava/lang/String;
    :cond_de
    const/4 v3, 0x0

    move v12, v3

    goto :goto_b9

    .line 177
    .restart local v12       #maxedOut:Z
    :cond_e1
    const-string v15, ""

    .restart local v15       #oldText:Ljava/lang/String;
    goto :goto_c1

    .line 196
    :sswitch_e4
    const/4 v10, 0x1

    .line 197
    .restart local v10       #isArrowKey:Z
    goto :goto_cb

    .line 202
    .end local v10           #isArrowKey:Z
    :sswitch_e6
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/TextDialog;->mGotEnterDown:Z

    goto :goto_ca

    .line 212
    .restart local v10       #isArrowKey:Z
    :cond_ed
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/TextDialog;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11d

    .line 219
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/TextDialog;->getText()Landroid/text/Editable;

    move-result-object v16

    .line 220
    .local v16, span:Landroid/text/Spannable;
    invoke-static/range {v16 .. v16}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v7

    .line 221
    .local v7, newStart:I
    invoke-static/range {v16 .. v16}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v8

    .line 222
    .local v8, newEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/TextDialog;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 224
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/TextDialog;->mScrollToAccommodateCursor:Z

    .line 225
    const/4 v3, 0x1

    goto/16 :goto_a

    .line 228
    .end local v7           #newStart:I
    .end local v8           #newEnd:I
    .end local v16           #span:Landroid/text/Spannable;
    :cond_11d
    if-eqz v10, :cond_122

    .line 231
    invoke-direct/range {p0 .. p1}, Landroid/webkit/TextDialog;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 233
    :cond_122
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/TextDialog;->mScrollToAccommodateCursor:Z

    .line 234
    const/4 v3, 0x1

    goto/16 :goto_a

    .line 240
    .end local v10           #isArrowKey:Z
    :cond_12b
    move-object/from16 v0, v17

    move v1, v14

    move v2, v13

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 243
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/TextDialog;->mGotEnterDown:Z

    move v3, v0

    if-eqz v3, :cond_13e

    if-nez v9, :cond_13e

    .line 244
    const/4 v3, 0x1

    goto/16 :goto_a

    .line 247
    :cond_13e
    const/16 v3, 0x15

    if-eq v11, v3, :cond_14e

    const/16 v3, 0x16

    if-eq v11, v3, :cond_14e

    const/16 v3, 0x13

    if-eq v11, v3, :cond_14e

    const/16 v3, 0x14

    if-ne v11, v3, :cond_176

    .line 255
    :cond_14e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/TextDialog;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/WebView;->resetTrackballTime()V

    .line 256
    if-eqz v9, :cond_167

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/TextDialog;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_a

    :cond_167
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/TextDialog;->mWebView:Landroid/webkit/WebView;

    move-object v3, v0

    move-object v0, v3

    move v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_a

    .line 259
    :cond_176
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 191
    nop

    :sswitch_data_17a
    .sparse-switch
        0x13 -> :sswitch_e4
        0x14 -> :sswitch_e4
        0x15 -> :sswitch_e4
        0x16 -> :sswitch_e4
        0x42 -> :sswitch_e6
    .end sparse-switch
.end method

.method enableScrollOnScreen(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 401
    iput-boolean p1, p0, Landroid/webkit/TextDialog;->mScrollToAccommodateCursor:Z

    .line 402
    return-void
.end method

.method fakeTouchEvent(FF)V
    .registers 12
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/16 v0, 0x0

    .line 271
    invoke-virtual {p0}, Landroid/webkit/TextDialog;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_f

    .line 272
    iget v2, p0, Landroid/webkit/TextDialog;->mWidthSpec:I

    iget v3, p0, Landroid/webkit/TextDialog;->mHeightSpec:I

    invoke-virtual {p0, v2, v3}, Landroid/webkit/TextDialog;->measure(II)V

    .line 275
    :cond_f
    const/4 v4, 0x1

    const/4 v7, 0x0

    move-wide v2, v0

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 277
    .local v8, ev:Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Landroid/webkit/TextDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 278
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 279
    return-void
.end method

.method isSameTextField(I)Z
    .registers 3
    .parameter "ptr"

    .prologue
    .line 289
    iget v0, p0, Landroid/webkit/TextDialog;->mNodePointer:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onPreDraw()Z
    .registers 3

    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/webkit/TextDialog;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_d

    .line 295
    iget v0, p0, Landroid/webkit/TextDialog;->mWidthSpec:I

    iget v1, p0, Landroid/webkit/TextDialog;->mHeightSpec:I

    invoke-virtual {p0, v0, v1}, Landroid/webkit/TextDialog;->measure(II)V

    .line 297
    :cond_d
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->onPreDraw()Z

    move-result v0

    return v0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 23
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 302
    invoke-super/range {p0 .. p4}, Landroid/widget/AutoCompleteTextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 303
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 308
    .local v17, postChange:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/TextDialog;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/TextDialog;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/TextDialog;->mMaxLength:I

    move v5, v0

    const/4 v6, -0x1

    if-le v5, v6, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/TextDialog;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/TextDialog;->mMaxLength:I

    move v6, v0

    if-le v5, v6, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/TextDialog;->mPreChange:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/TextDialog;->mMaxLength:I

    move v7, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 356
    :cond_4c
    :goto_4c
    return-void

    .line 313
    :cond_4d
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/TextDialog;->mPreChange:Ljava/lang/String;

    .line 316
    if-lez p3, :cond_69

    if-nez p4, :cond_69

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/TextDialog;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    add-int v6, p2, p3

    move-object v0, v5

    move/from16 v1, p2

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->deleteSelection(II)V

    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/TextDialog;->updateCachedTextfield()V

    goto :goto_4c

    .line 327
    :cond_69
    add-int v5, p2, p4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    add-int v6, p2, p4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/TextDialog;->mCharacter:[C

    move-object v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 328
    const/4 v5, 0x0

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v15

    .line 330
    .local v15, kmap:Landroid/view/KeyCharacterMap;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/TextDialog;->mCharacter:[C

    move-object v5, v0

    invoke-virtual {v15, v5}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v13

    .line 331
    .local v13, events:[Landroid/view/KeyEvent;
    if-nez v13, :cond_e6

    const/4 v5, 0x1

    move v11, v5

    .line 332
    .local v11, cannotUseKeyEvents:Z
    :goto_90
    if-eqz v11, :cond_e9

    const/4 v5, 0x0

    move v12, v5

    .line 333
    .local v12, charactersFromKeyEvents:I
    :goto_94
    const/4 v5, 0x1

    move/from16 v0, p4

    move v1, v5

    if-gt v0, v1, :cond_9c

    if-eqz v11, :cond_ec

    .line 334
    :cond_9c
    add-int v5, p2, p4

    sub-int/2addr v5, v12

    move-object/from16 v0, p1

    move/from16 v1, p2

    move v2, v5

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 336
    .local v8, replace:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/TextDialog;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    add-int v7, p2, p3

    add-int v6, p2, p4

    sub-int v9, v6, v12

    add-int v6, p2, p4

    sub-int v10, v6, v12

    move/from16 v6, p2

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/WebView;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 344
    .end local v8           #replace:Ljava/lang/String;
    :goto_c0
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/TextDialog;->updateCachedTextfield()V

    .line 345
    if-nez v11, :cond_4c

    .line 348
    move-object v0, v13

    array-length v0, v0

    move/from16 v16, v0

    .line 349
    .local v16, length:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_ca
    move v0, v14

    move/from16 v1, v16

    if-ge v0, v1, :cond_4c

    .line 352
    aget-object v5, v13, v14

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v5

    if-nez v5, :cond_e3

    .line 353
    aget-object v5, v13, v14

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/TextDialog;->sendDomEvent(Landroid/view/KeyEvent;)V

    .line 349
    :cond_e3
    add-int/lit8 v14, v14, 0x1

    goto :goto_ca

    .line 331
    .end local v11           #cannotUseKeyEvents:Z
    .end local v12           #charactersFromKeyEvents:I
    .end local v14           #i:I
    .end local v16           #length:I
    :cond_e6
    const/4 v5, 0x0

    move v11, v5

    goto :goto_90

    .line 332
    .restart local v11       #cannotUseKeyEvents:Z
    :cond_e9
    const/4 v5, 0x1

    move v12, v5

    goto :goto_94

    .line 342
    .restart local v12       #charactersFromKeyEvents:I
    :cond_ec
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/TextDialog;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    add-int v6, p2, p3

    move-object v0, v5

    move/from16 v1, p2

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setSelection(II)V

    goto :goto_c0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 360
    invoke-virtual {p0}, Landroid/webkit/TextDialog;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 361
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 384
    :goto_b
    return v2

    .line 363
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_15

    move v2, v4

    .line 364
    goto :goto_b

    .line 366
    :cond_15
    invoke-virtual {p0}, Landroid/webkit/TextDialog;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 367
    .local v1, text:Landroid/text/Spannable;
    invoke-virtual {p0}, Landroid/webkit/TextDialog;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 368
    .local v0, move:Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Landroid/webkit/TextDialog;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-interface {v0, p0, v1, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 376
    const/4 v2, 0x1

    goto :goto_b

    .line 383
    :cond_2d
    iput-boolean v4, p0, Landroid/webkit/TextDialog;->mScrollToAccommodateCursor:Z

    move v2, v4

    .line 384
    goto :goto_b
.end method

.method remove()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 393
    iget-object v0, p0, Landroid/webkit/TextDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/TextDialog;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 395
    iget-object v0, p0, Landroid/webkit/TextDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 396
    iget-object v0, p0, Landroid/webkit/TextDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 397
    iput-boolean v2, p0, Landroid/webkit/TextDialog;->mScrollToAccommodateCursor:Z

    .line 398
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;)Z
    .registers 3
    .parameter "rectangle"

    .prologue
    .line 412
    iget-boolean v0, p0, Landroid/webkit/TextDialog;->mScrollToAccommodateCursor:Z

    if-eqz v0, :cond_9

    .line 413
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v0

    .line 415
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setAdapterCustom(Landroid/webkit/TextDialog$AutoCompleteAdapter;)V
    .registers 3
    .parameter "adapter"

    .prologue
    .line 431
    if-eqz p1, :cond_a

    .line 432
    const/high16 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/TextDialog;->setInputType(I)V

    .line 433
    invoke-static {p1, p0}, Landroid/webkit/TextDialog$AutoCompleteAdapter;->access$000(Landroid/webkit/TextDialog$AutoCompleteAdapter;Landroid/widget/TextView;)V

    .line 435
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 436
    return-void
.end method

.method setInPassword(Z)V
    .registers 3
    .parameter "inPassword"

    .prologue
    .line 476
    if-eqz p1, :cond_7

    .line 477
    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Landroid/webkit/TextDialog;->setInputType(I)V

    .line 480
    :cond_7
    return-void
.end method

.method setMaxLength(I)V
    .registers 5
    .parameter "maxLength"

    .prologue
    .line 483
    iput p1, p0, Landroid/webkit/TextDialog;->mMaxLength:I

    .line 484
    const/4 v0, -0x1

    if-ne v0, p1, :cond_b

    .line 485
    sget-object v0, Landroid/webkit/TextDialog;->NO_FILTERS:[Landroid/text/InputFilter;

    invoke-virtual {p0, v0}, Landroid/webkit/TextDialog;->setFilters([Landroid/text/InputFilter;)V

    .line 490
    :goto_a
    return-void

    .line 487
    :cond_b
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/TextDialog;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_a
.end method

.method setNodePointer(I)V
    .registers 2
    .parameter "ptr"

    .prologue
    .line 499
    iput p1, p0, Landroid/webkit/TextDialog;->mNodePointer:I

    .line 500
    return-void
.end method

.method setRect(IIII)V
    .registers 8
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v2, 0x4000

    .line 513
    invoke-virtual {p0}, Landroid/webkit/TextDialog;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 514
    .local v0, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    if-nez v0, :cond_2a

    .line 515
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .end local v0           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    invoke-direct {v0, p3, p4, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 522
    .restart local v0       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :goto_f
    invoke-virtual {p0}, Landroid/webkit/TextDialog;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_33

    .line 523
    iget-object v1, p0, Landroid/webkit/TextDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p0, v0}, Landroid/webkit/WebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    :goto_1a
    invoke-static {p3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Landroid/webkit/TextDialog;->mWidthSpec:I

    .line 529
    invoke-static {p4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iput v1, p0, Landroid/webkit/TextDialog;->mHeightSpec:I

    .line 530
    invoke-virtual {p0}, Landroid/webkit/TextDialog;->requestFocus()Z

    .line 531
    return-void

    .line 517
    :cond_2a
    iput p1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 518
    iput p2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 519
    iput p3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 520
    iput p4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    goto :goto_f

    .line 525
    :cond_33
    invoke-virtual {p0, v0}, Landroid/webkit/TextDialog;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1a
.end method

.method public setSingleLine(Z)V
    .registers 4
    .parameter "single"

    .prologue
    .line 541
    const/16 v0, 0xa1

    .line 543
    .local v0, inputType:I
    if-nez p1, :cond_8

    .line 544
    const v1, 0x2c000

    or-int/2addr v0, v1

    .line 548
    :cond_8
    iput-boolean p1, p0, Landroid/webkit/TextDialog;->mSingle:Z

    .line 549
    invoke-virtual {p0, p1}, Landroid/webkit/TextDialog;->setHorizontallyScrolling(Z)V

    .line 550
    invoke-virtual {p0, v0}, Landroid/webkit/TextDialog;->setInputType(I)V

    .line 551
    return-void
.end method

.method setText(Ljava/lang/CharSequence;II)V
    .registers 7
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 560
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/TextDialog;->mPreChange:Ljava/lang/String;

    .line 561
    invoke-virtual {p0, p1}, Landroid/webkit/TextDialog;->setText(Ljava/lang/CharSequence;)V

    .line 562
    invoke-virtual {p0}, Landroid/webkit/TextDialog;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 563
    .local v1, span:Landroid/text/Spannable;
    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 564
    .local v0, length:I
    if-le p3, v0, :cond_14

    .line 565
    move p3, v0

    .line 567
    :cond_14
    if-gez p2, :cond_1b

    .line 568
    const/4 p2, 0x0

    .line 572
    :cond_17
    :goto_17
    invoke-static {v1, p2, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 573
    return-void

    .line 569
    :cond_1b
    if-le p2, v0, :cond_17

    .line 570
    move p2, v0

    goto :goto_17
.end method

.method setTextAndKeepSelection(Ljava/lang/String;)V
    .registers 5
    .parameter "text"

    .prologue
    .line 581
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/TextDialog;->mPreChange:Ljava/lang/String;

    .line 582
    invoke-virtual {p0}, Landroid/webkit/TextDialog;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 583
    .local v0, edit:Landroid/text/Editable;
    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 584
    invoke-virtual {p0}, Landroid/webkit/TextDialog;->updateCachedTextfield()V

    .line 585
    return-void
.end method

.method updateCachedTextfield()V
    .registers 3

    .prologue
    .line 591
    iget-object v0, p0, Landroid/webkit/TextDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/TextDialog;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateCachedTextfield(Ljava/lang/String;)V

    .line 592
    return-void
.end method
