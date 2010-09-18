.class public Landroid/text/method/Touch;
.super Ljava/lang/Object;
.source "Touch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/Touch$DragState;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInitialScrollX(Landroid/widget/TextView;Landroid/text/Spannable;)I
    .registers 6
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v3, 0x0

    .line 152
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    .line 153
    .local v0, ds:[Landroid/text/method/Touch$DragState;
    array-length v1, v0

    if-lez v1, :cond_15

    aget-object v1, v0, v3

    iget v1, v1, Landroid/text/method/Touch$DragState;->mScrollX:I

    :goto_14
    return v1

    :cond_15
    const/4 v1, -0x1

    goto :goto_14
.end method

.method public static getInitialScrollY(Landroid/widget/TextView;Landroid/text/Spannable;)I
    .registers 6
    .parameter "widget"
    .parameter "buffer"

    .prologue
    const/4 v3, 0x0

    .line 157
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    .line 158
    .local v0, ds:[Landroid/text/method/Touch$DragState;
    array-length v1, v0

    if-lez v1, :cond_15

    aget-object v1, v0, v3

    iget v1, v1, Landroid/text/method/Touch$DragState;->mScrollY:I

    :goto_14
    return v1

    :cond_15
    const/4 v1, -0x1

    goto :goto_14
.end method

.method public static onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "widget"
    .parameter "buffer"
    .parameter "event"

    .prologue
    .line 82
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_120

    .line 148
    .end local p1
    :cond_7
    const/4 p0, 0x0

    .end local p0
    .end local p2
    :goto_8
    return p0

    .line 84
    .restart local p0
    .restart local p1
    .restart local p2
    :pswitch_9
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/Touch$DragState;

    .line 86
    .local v0, ds:[Landroid/text/method/Touch$DragState;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_17
    array-length v2, v0

    if-ge v1, v2, :cond_22

    .line 87
    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 90
    :cond_22
    new-instance v0, Landroid/text/method/Touch$DragState;

    .end local v0           #ds:[Landroid/text/method/Touch$DragState;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .end local v1           #i:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .end local p2
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result p0

    .end local p0
    invoke-direct {v0, v1, p2, v2, p0}, Landroid/text/method/Touch$DragState;-><init>(FFII)V

    const/4 p0, 0x0

    const/4 p2, 0x0

    const/16 v1, 0x11

    invoke-interface {p1, v0, p0, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 93
    const/4 p0, 0x1

    goto :goto_8

    .line 96
    .restart local p0
    .restart local p2
    :pswitch_40
    const/4 p0, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    .end local p0
    move-result p2

    .end local p2
    const-class v0, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, p0, p2, v0}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/method/Touch$DragState;

    .line 98
    .local p0, ds:[Landroid/text/method/Touch$DragState;
    const/4 p2, 0x0

    .local p2, i:I
    :goto_4e
    array-length v0, p0

    if-ge p2, v0, :cond_59

    .line 99
    aget-object v0, p0, p2

    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 98
    add-int/lit8 p2, p2, 0x1

    goto :goto_4e

    .line 102
    :cond_59
    array-length p1, p0

    .end local p1
    if-lez p1, :cond_65

    const/4 p1, 0x0

    aget-object p0, p0, p1

    .end local p0           #ds:[Landroid/text/method/Touch$DragState;
    iget-boolean p0, p0, Landroid/text/method/Touch$DragState;->mUsed:Z

    if-eqz p0, :cond_65

    .line 103
    const/4 p0, 0x1

    goto :goto_8

    .line 105
    :cond_65
    const/4 p0, 0x0

    goto :goto_8

    .line 109
    .local p0, widget:Landroid/widget/TextView;
    .restart local p1
    .local p2, event:Landroid/view/MotionEvent;
    :pswitch_67
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/method/Touch$DragState;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [Landroid/text/method/Touch$DragState;

    .line 111
    .local p1, ds:[Landroid/text/method/Touch$DragState;
    array-length v0, p1

    if-lez v0, :cond_7

    .line 112
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-boolean v0, v0, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    if-nez v0, :cond_b6

    .line 113
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 115
    .local v0, slop:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget v2, v2, Landroid/text/method/Touch$DragState;->mX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-gez v1, :cond_b0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iget v2, v2, Landroid/text/method/Touch$DragState;->mY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_b6

    .line 117
    .end local v0           #slop:I
    :cond_b0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    .line 121
    :cond_b6
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-boolean v0, v0, Landroid/text/method/Touch$DragState;->mFarEnough:Z

    if-eqz v0, :cond_7

    .line 122
    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/text/method/Touch$DragState;->mUsed:Z

    .line 124
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget v0, v0, Landroid/text/method/Touch$DragState;->mX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 125
    .local v0, dx:F
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget v1, v1, Landroid/text/method/Touch$DragState;->mY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 127
    .local v1, dy:F
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, v2, Landroid/text/method/Touch$DragState;->mX:F

    .line 128
    const/4 v2, 0x0

    aget-object p1, p1, v2

    .end local p1           #ds:[Landroid/text/method/Touch$DragState;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .end local p2           #event:Landroid/view/MotionEvent;
    iput p2, p1, Landroid/text/method/Touch$DragState;->mY:F

    .line 130
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result p1

    float-to-int p2, v0

    add-int/2addr p2, p1

    .line 131
    .local p2, nx:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result p1

    float-to-int v0, v1

    add-int/2addr v0, p1

    .line 133
    .local v0, ny:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v1

    .end local v1           #dy:F
    add-int/2addr v1, p1

    .line 135
    .local v1, padding:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    .line 137
    .local p1, layout:Landroid/text/Layout;
    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    sub-int v1, v3, v1

    sub-int v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .end local v1           #padding:I
    move-result v0

    .line 139
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 141
    invoke-static {p0, p1, p2, v0}, Landroid/text/method/Touch;->scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V

    .line 142
    invoke-virtual {p0}, Landroid/widget/TextView;->cancelLongPress()V

    .line 143
    const/4 p0, 0x1

    goto/16 :goto_8

    .line 82
    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_9
        :pswitch_40
        :pswitch_67
    .end packed-switch
.end method

.method public static scrollTo(Landroid/widget/TextView;Landroid/text/Layout;II)V
    .registers 15
    .parameter "widget"
    .parameter "layout"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 37
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v10

    add-int v5, v9, v10

    .line 39
    .local v5, padding:I
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v7

    .line 40
    .local v7, top:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v9

    add-int/2addr v9, p3

    sub-int/2addr v9, v5

    invoke-virtual {p1, v9}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v1

    .line 43
    .local v1, bottom:I
    const v4, 0x7fffffff

    .line 44
    .local v4, left:I
    const/4 v6, 0x0

    .line 45
    .local v6, right:I
    const/4 v0, 0x0

    .line 47
    .local v0, a:Landroid/text/Layout$Alignment;
    move v3, v7

    .local v3, i:I
    :goto_1e
    if-gt v3, v1, :cond_3d

    .line 48
    int-to-float v9, v4

    invoke-virtual {p1, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v4, v9

    .line 49
    int-to-float v9, v6

    invoke-virtual {p1, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    float-to-int v6, v9

    .line 51
    if-nez v0, :cond_3a

    .line 52
    invoke-virtual {p1, v3}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 47
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 56
    :cond_3d
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v10

    add-int v5, v9, v10

    .line 57
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v8

    .line 58
    .local v8, width:I
    const/4 v2, 0x0

    .line 60
    .local v2, diff:I
    sub-int v9, v6, v4

    sub-int v10, v8, v5

    if-ge v9, v10, :cond_5d

    .line 61
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_70

    .line 62
    sub-int v9, v8, v5

    sub-int v10, v6, v4

    sub-int/2addr v9, v10

    div-int/lit8 v2, v9, 0x2

    .line 68
    :cond_5d
    :goto_5d
    sub-int v9, v8, v5

    sub-int v9, v6, v9

    sub-int/2addr v9, v2

    invoke-static {p2, v9}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 69
    sub-int v9, v4, v2

    invoke-static {p2, v9}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 71
    invoke-virtual {p0, p2, p3}, Landroid/widget/TextView;->scrollTo(II)V

    .line 72
    return-void

    .line 63
    :cond_70
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_5d

    .line 64
    sub-int v9, v8, v5

    sub-int v10, v6, v4

    sub-int v2, v9, v10

    goto :goto_5d
.end method
