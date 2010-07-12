.class public Landroid/text/method/ArrowKeyMovementMethod;
.super Ljava/lang/Object;
.source "ArrowKeyMovementMethod.java"

# interfaces
.implements Landroid/text/method/MovementMethod;


# static fields
.field private static sInstance:Landroid/text/method/ArrowKeyMovementMethod;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private down(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 9
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 62
    invoke-static {p2, v4}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eq v3, v4, :cond_10

    const/high16 v3, 0x1

    invoke-static {p2, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eqz v3, :cond_2a

    :cond_10
    move v1, v4

    .line 66
    .local v1, cap:Z
    :goto_11
    const/4 v3, 0x2

    invoke-static {p2, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-ne v3, v4, :cond_2c

    move v0, v4

    .line 68
    .local v0, alt:Z
    :goto_19
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 70
    .local v2, layout:Landroid/text/Layout;
    if-eqz v1, :cond_33

    .line 71
    if-eqz v0, :cond_2e

    .line 72
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-static {p2, v3}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v3, v4

    .line 82
    :goto_29
    return v3

    .end local v0           #alt:Z
    .end local v1           #cap:Z
    .end local v2           #layout:Landroid/text/Layout;
    :cond_2a
    move v1, v5

    .line 62
    goto :goto_11

    .restart local v1       #cap:Z
    :cond_2c
    move v0, v5

    .line 66
    goto :goto_19

    .line 75
    .restart local v0       #alt:Z
    .restart local v2       #layout:Landroid/text/Layout;
    :cond_2e
    invoke-static {p2, v2}, Landroid/text/Selection;->extendDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_29

    .line 78
    :cond_33
    if-eqz v0, :cond_3e

    .line 79
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-static {p2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v3, v4

    .line 80
    goto :goto_29

    .line 82
    :cond_3e
    invoke-static {p2, v2}, Landroid/text/Selection;->moveDown(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_29
.end method

.method private executeDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z
    .registers 6
    .parameter "widget"
    .parameter "buffer"
    .parameter "keyCode"

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 148
    .local v0, handled:Z
    packed-switch p3, :pswitch_data_36

    .line 173
    :cond_4
    :goto_4
    if-eqz v0, :cond_c

    .line 174
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 175
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    .line 178
    :cond_c
    return v0

    .line 150
    :pswitch_d
    invoke-direct {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->up(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 151
    goto :goto_4

    .line 154
    :pswitch_13
    invoke-direct {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->down(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 155
    goto :goto_4

    .line 158
    :pswitch_19
    invoke-direct {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->left(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 159
    goto :goto_4

    .line 162
    :pswitch_1f
    invoke-direct {p0, p1, p2}, Landroid/text/method/ArrowKeyMovementMethod;->right(Landroid/widget/TextView;Landroid/text/Spannable;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 163
    goto :goto_4

    .line 166
    :pswitch_25
    const/high16 v1, 0x1

    invoke-static {p2, v1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 167
    invoke-virtual {p1}, Landroid/widget/TextView;->showContextMenu()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 168
    const/4 v0, 0x1

    goto :goto_4

    .line 148
    nop

    :pswitch_data_36
    .packed-switch 0x13
        :pswitch_d
        :pswitch_13
        :pswitch_19
        :pswitch_1f
        :pswitch_25
    .end packed-switch
.end method

.method public static getInstance()Landroid/text/method/MovementMethod;
    .registers 1

    .prologue
    .line 311
    sget-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    if-nez v0, :cond_b

    .line 312
    new-instance v0, Landroid/text/method/ArrowKeyMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ArrowKeyMovementMethod;-><init>()V

    sput-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    .line 314
    :cond_b
    sget-object v0, Landroid/text/method/ArrowKeyMovementMethod;->sInstance:Landroid/text/method/ArrowKeyMovementMethod;

    return-object v0
.end method

.method private left(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 9
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 88
    invoke-static {p2, v4}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eq v3, v4, :cond_10

    const/high16 v3, 0x1

    invoke-static {p2, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eqz v3, :cond_26

    :cond_10
    move v1, v4

    .line 92
    .local v1, cap:Z
    :goto_11
    const/4 v3, 0x2

    invoke-static {p2, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-ne v3, v4, :cond_28

    move v0, v4

    .line 94
    .local v0, alt:Z
    :goto_19
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 96
    .local v2, layout:Landroid/text/Layout;
    if-eqz v1, :cond_2f

    .line 97
    if-eqz v0, :cond_2a

    .line 98
    invoke-static {p2, v2}, Landroid/text/Selection;->extendToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    .line 106
    :goto_25
    return v3

    .end local v0           #alt:Z
    .end local v1           #cap:Z
    .end local v2           #layout:Landroid/text/Layout;
    :cond_26
    move v1, v5

    .line 88
    goto :goto_11

    .restart local v1       #cap:Z
    :cond_28
    move v0, v5

    .line 92
    goto :goto_19

    .line 100
    .restart local v0       #alt:Z
    .restart local v2       #layout:Landroid/text/Layout;
    :cond_2a
    invoke-static {p2, v2}, Landroid/text/Selection;->extendLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_25

    .line 103
    :cond_2f
    if-eqz v0, :cond_36

    .line 104
    invoke-static {p2, v2}, Landroid/text/Selection;->moveToLeftEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_25

    .line 106
    :cond_36
    invoke-static {p2, v2}, Landroid/text/Selection;->moveLeft(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_25
.end method

.method private right(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 9
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 112
    invoke-static {p2, v4}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eq v3, v4, :cond_10

    const/high16 v3, 0x1

    invoke-static {p2, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eqz v3, :cond_26

    :cond_10
    move v1, v4

    .line 116
    .local v1, cap:Z
    :goto_11
    const/4 v3, 0x2

    invoke-static {p2, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-ne v3, v4, :cond_28

    move v0, v4

    .line 118
    .local v0, alt:Z
    :goto_19
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 120
    .local v2, layout:Landroid/text/Layout;
    if-eqz v1, :cond_2f

    .line 121
    if-eqz v0, :cond_2a

    .line 122
    invoke-static {p2, v2}, Landroid/text/Selection;->extendToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    .line 130
    :goto_25
    return v3

    .end local v0           #alt:Z
    .end local v1           #cap:Z
    .end local v2           #layout:Landroid/text/Layout;
    :cond_26
    move v1, v5

    .line 112
    goto :goto_11

    .restart local v1       #cap:Z
    :cond_28
    move v0, v5

    .line 116
    goto :goto_19

    .line 124
    .restart local v0       #alt:Z
    .restart local v2       #layout:Landroid/text/Layout;
    :cond_2a
    invoke-static {p2, v2}, Landroid/text/Selection;->extendRight(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_25

    .line 127
    :cond_2f
    if-eqz v0, :cond_36

    .line 128
    invoke-static {p2, v2}, Landroid/text/Selection;->moveToRightEdge(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_25

    .line 130
    :cond_36
    invoke-static {p2, v2}, Landroid/text/Selection;->moveRight(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_25
.end method

.method private up(Landroid/widget/TextView;Landroid/text/Spannable;)Z
    .registers 9
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 36
    invoke-static {p2, v4}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eq v3, v4, :cond_10

    const/high16 v3, 0x1

    invoke-static {p2, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eqz v3, :cond_26

    :cond_10
    move v1, v4

    .line 40
    .local v1, cap:Z
    :goto_11
    const/4 v3, 0x2

    invoke-static {p2, v3}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v3

    if-ne v3, v4, :cond_28

    move v0, v4

    .line 42
    .local v0, alt:Z
    :goto_19
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 44
    .local v2, layout:Landroid/text/Layout;
    if-eqz v1, :cond_2f

    .line 45
    if-eqz v0, :cond_2a

    .line 46
    invoke-static {p2, v5}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    move v3, v4

    .line 56
    :goto_25
    return v3

    .end local v0           #alt:Z
    .end local v1           #cap:Z
    .end local v2           #layout:Landroid/text/Layout;
    :cond_26
    move v1, v5

    .line 36
    goto :goto_11

    .restart local v1       #cap:Z
    :cond_28
    move v0, v5

    .line 40
    goto :goto_19

    .line 49
    .restart local v0       #alt:Z
    .restart local v2       #layout:Landroid/text/Layout;
    :cond_2a
    invoke-static {p2, v2}, Landroid/text/Selection;->extendUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_25

    .line 52
    :cond_2f
    if-eqz v0, :cond_36

    .line 53
    invoke-static {p2, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    move v3, v4

    .line 54
    goto :goto_25

    .line 56
    :cond_36
    invoke-static {p2, v2}, Landroid/text/Selection;->moveUp(Landroid/text/Spannable;Landroid/text/Layout;)Z

    move-result v3

    goto :goto_25
.end method


# virtual methods
.method public canSelectArbitrarily()Z
    .registers 2

    .prologue
    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V
    .registers 4
    .parameter "widget"
    .parameter "text"

    .prologue
    .line 280
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 281
    return-void
.end method

.method public onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "widget"
    .parameter "buffer"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 136
    invoke-direct {p0, p1, p2, p3}, Landroid/text/method/ArrowKeyMovementMethod;->executeDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 137
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 138
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    .line 139
    const/4 v0, 0x1

    .line 142
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    .registers 9
    .parameter "view"
    .parameter "text"
    .parameter "event"

    .prologue
    .line 186
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 187
    .local v0, code:I
    if-eqz v0, :cond_1e

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1e

    .line 189
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    .line 190
    .local v2, repeat:I
    const/4 v1, 0x0

    .line 191
    .local v1, handled:Z
    :goto_12
    add-int/lit8 v2, v2, -0x1

    if-lez v2, :cond_1c

    .line 192
    invoke-direct {p0, p1, p2, v0}, Landroid/text/method/ArrowKeyMovementMethod;->executeDown(Landroid/widget/TextView;Landroid/text/Spannable;I)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_12

    :cond_1c
    move v3, v1

    .line 196
    .end local v1           #handled:Z
    .end local v2           #repeat:I
    :goto_1d
    return v3

    :cond_1e
    const/4 v3, 0x0

    goto :goto_1d
.end method

.method public onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "widget"
    .parameter "buffer"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V
    .registers 7
    .parameter "view"
    .parameter "text"
    .parameter "dir"

    .prologue
    const/4 v2, 0x1

    .line 284
    and-int/lit16 v1, p3, 0x82

    if-eqz v1, :cond_2a

    .line 285
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 287
    .local v0, layout:Landroid/text/Layout;
    if-nez v0, :cond_13

    .line 291
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 308
    .end local v0           #layout:Landroid/text/Layout;
    :goto_12
    return-void

    .line 299
    .restart local v0       #layout:Landroid/text/Layout;
    :cond_13
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-ne v1, v2, :cond_21

    .line 300
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_12

    .line 302
    :cond_21
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_12

    .line 306
    .end local v0           #layout:Landroid/text/Layout;
    :cond_2a
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {p2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_12
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 16
    .parameter "widget"
    .parameter "buffer"
    .parameter "event"

    .prologue
    const/4 v11, 0x1

    .line 206
    const/4 v2, -0x1

    .local v2, initialScrollX:I
    const/4 v3, -0x1

    .line 207
    .local v3, initialScrollY:I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-ne v9, v11, :cond_11

    .line 208
    invoke-static {p1, p2}, Landroid/text/method/Touch;->getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v2

    .line 209
    invoke-static {p1, p2}, Landroid/text/method/Touch;->getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I

    move-result v3

    .line 212
    :cond_11
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 214
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/widget/TextView;->isFocused()Z

    move-result v9

    if-eqz v9, :cond_be

    invoke-virtual {p1}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v9

    if-nez v9, :cond_be

    .line 215
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-ne v9, v11, :cond_be

    .line 220
    if-ltz v3, :cond_2f

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v9

    if-ne v3, v9, :cond_37

    :cond_2f
    if-ltz v2, :cond_3c

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v9

    if-eq v2, v9, :cond_3c

    .line 222
    :cond_37
    invoke-virtual {p1}, Landroid/widget/TextView;->moveCursorToVisibleOffset()Z

    move v9, v11

    .line 272
    :goto_3b
    return v9

    .line 226
    :cond_3c
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 227
    .local v7, x:I
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 229
    .local v8, y:I
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v9

    sub-int/2addr v7, v9

    .line 230
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    .line 233
    if-gez v7, :cond_89

    .line 234
    const/4 v7, 0x0

    .line 238
    :cond_53
    :goto_53
    if-gez v8, :cond_a0

    .line 239
    const/4 v8, 0x0

    .line 244
    :cond_56
    :goto_56
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v9

    add-int/2addr v7, v9

    .line 245
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v9

    add-int/2addr v8, v9

    .line 247
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 248
    .local v4, layout:Landroid/text/Layout;
    invoke-virtual {v4, v8}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    .line 250
    .local v5, line:I
    int-to-float v9, v7

    invoke-virtual {v4, v5, v9}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v6

    .line 254
    .local v6, off:I
    invoke-static {p2, v11}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v9

    if-eq v9, v11, :cond_7b

    const/high16 v9, 0x1

    invoke-static {p2, v9}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v9

    if-eqz v9, :cond_b7

    :cond_7b
    move v0, v11

    .line 259
    .local v0, cap:Z
    :goto_7c
    if-eqz v0, :cond_ba

    .line 260
    invoke-static {p2, v6}, Landroid/text/Selection;->extendSelection(Landroid/text/Spannable;I)V

    .line 265
    :goto_81
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 266
    invoke-static {p2}, Landroid/text/method/MetaKeyKeyListener;->resetLockedMeta(Landroid/text/Spannable;)V

    move v9, v11

    .line 268
    goto :goto_3b

    .line 235
    .end local v0           #cap:Z
    .end local v4           #layout:Landroid/text/Layout;
    .end local v5           #line:I
    .end local v6           #off:I
    :cond_89
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    if-lt v7, v9, :cond_53

    .line 236
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int v7, v9, v11

    goto :goto_53

    .line 240
    :cond_a0
    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v9

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    if-lt v8, v9, :cond_56

    .line 241
    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v9

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int v8, v9, v11

    goto :goto_56

    .line 254
    .restart local v4       #layout:Landroid/text/Layout;
    .restart local v5       #line:I
    .restart local v6       #off:I
    :cond_b7
    const/4 v9, 0x0

    move v0, v9

    goto :goto_7c

    .line 262
    .restart local v0       #cap:Z
    :cond_ba
    invoke-static {p2, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_81

    .end local v0           #cap:Z
    .end local v4           #layout:Landroid/text/Layout;
    .end local v5           #line:I
    .end local v6           #off:I
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_be
    move v9, v1

    .line 272
    goto/16 :goto_3b
.end method

.method public onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "widget"
    .parameter "text"
    .parameter "event"

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method
