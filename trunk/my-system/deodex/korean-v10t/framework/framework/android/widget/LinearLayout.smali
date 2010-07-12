.class public Landroid/widget/LinearLayout;
.super Landroid/view/ViewGroup;
.source "LinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/LinearLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I

.field private mTotalLength:I

.field private mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 62
    iput v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 69
    iput v1, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 72
    const/16 v0, 0x33

    iput v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 12
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-boolean v7, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 62
    iput v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 69
    iput v6, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 72
    const/16 v5, 0x33

    iput v5, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 94
    sget-object v5, Lcom/android/internal/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 98
    .local v3, index:I
    if-ltz v3, :cond_1f

    .line 99
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 102
    :cond_1f
    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 103
    if-ltz v3, :cond_28

    .line 104
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 107
    :cond_28
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 108
    .local v1, baselineAligned:Z
    if-nez v1, :cond_32

    .line 109
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 112
    :cond_32
    const/4 v5, 0x4

    const/high16 v6, -0x4080

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 114
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 118
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isCurrentRTLanguage()Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 119
    iget v5, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v2, v5, 0x7

    .line 120
    .local v2, horiMask:I
    if-eq v2, v7, :cond_56

    .line 121
    iget v5, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v5, v5, 0x70

    or-int/lit8 v5, v5, 0x5

    iput v5, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 122
    :cond_56
    iget v4, p0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    .line 123
    .local v4, temp:I
    iget v5, p0, Landroid/widget/LinearLayout;->mPaddingRight:I

    iput v5, p0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    .line 124
    iput v4, p0, Landroid/widget/LinearLayout;->mPaddingRight:I

    .line 129
    .end local v2           #horiMask:I
    .end local v4           #temp:I
    :cond_5e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    return-void
.end method

.method private forceUniformHeight(II)V
    .registers 12
    .parameter "count"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 840
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 842
    .local v4, uniformMeasureSpec:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_c
    if-ge v6, p1, :cond_38

    .line 843
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 844
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_35

    .line 845
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 847
    .local v7, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_35

    .line 850
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 851
    .local v8, oldWidth:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object v0, p0

    move v2, p2

    move v5, v3

    .line 854
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 855
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 842
    .end local v7           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v8           #oldWidth:I
    :cond_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 859
    .end local v1           #child:Landroid/view/View;
    :cond_38
    return-void
.end method

.method private forceUniformWidth(II)V
    .registers 12
    .parameter "count"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 523
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v4, 0x4000

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 525
    .local v2, uniformMeasureSpec:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_c
    if-ge v6, p1, :cond_38

    .line 526
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 527
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_35

    .line 528
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 530
    .local v7, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_35

    .line 533
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 534
    .local v8, oldHeight:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 537
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 538
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 525
    .end local v7           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v8           #oldHeight:I
    :cond_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 542
    .end local v1           #child:Landroid/view/View;
    :cond_38
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .registers 8
    .parameter "child"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1137
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1138
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 1251
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .prologue
    const/4 v2, -0x2

    .line 1234
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-nez v0, :cond_b

    .line 1235
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1239
    :goto_a
    return-object v0

    .line 1236
    :cond_b
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 1237
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_a

    .line 1239
    :cond_17
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5
    .parameter "attrs"

    .prologue
    .line 1219
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isCurrentRTLanguage()Z

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Z)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3
    .parameter "p"

    .prologue
    .line 1244
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .registers 9

    .prologue
    const/4 v7, -0x1

    .line 158
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v5, :cond_a

    .line 159
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v5

    .line 206
    :goto_9
    return v5

    .line 162
    :cond_a
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    iget v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gt v5, v6, :cond_1a

    .line 163
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 167
    :cond_1a
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 168
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 170
    .local v1, childBaseline:I
    if-ne v1, v7, :cond_34

    .line 171
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-nez v5, :cond_2c

    move v5, v7

    .line 173
    goto :goto_9

    .line 177
    :cond_2c
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 187
    :cond_34
    iget v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 189
    .local v2, childTop:I
    iget v5, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_46

    .line 190
    iget v5, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v4, v5, 0x70

    .line 191
    .local v4, majorGravity:I
    const/16 v5, 0x30

    if-eq v4, v5, :cond_46

    .line 192
    sparse-switch v4, :sswitch_data_70

    .line 205
    .end local v4           #majorGravity:I
    :cond_46
    :goto_46
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 206
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v2

    add-int/2addr v5, v1

    goto :goto_9

    .line 194
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4       #majorGravity:I
    :sswitch_51
    iget v5, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v6, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v2, v5, v6

    .line 195
    goto :goto_46

    .line 198
    :sswitch_5e
    iget v5, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v6, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    goto :goto_46

    .line 192
    :sswitch_data_70
    .sparse-switch
        0x10 -> :sswitch_5e
        0x50 -> :sswitch_51
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .registers 2

    .prologue
    .line 215
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .registers 4
    .parameter "child"
    .parameter "index"

    .prologue
    .line 870
    const/4 v0, 0x0

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .registers 3
    .parameter "child"

    .prologue
    .line 912
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .registers 3
    .parameter "child"

    .prologue
    .line 924
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 1160
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .registers 3
    .parameter "index"

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .registers 2

    .prologue
    .line 256
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .registers 2

    .prologue
    .line 267
    iget v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return v0
.end method

.method public isBaselineAligned()Z
    .registers 2

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return v0
.end method

.method layoutHorizontal()V
    .registers 26

    .prologue
    .line 1028
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move/from16 v24, v0

    .line 1030
    .local v24, paddingTop:I
    move/from16 v6, v24

    .line 1031
    .local v6, childTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move v12, v0

    .line 1034
    .local v12, childLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mBottom:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTop:I

    move v4, v0

    sub-int v17, v3, v4

    .line 1035
    .local v17, height:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    move v3, v0

    sub-int v11, v17, v3

    .line 1038
    .local v11, childBottom:I
    sub-int v3, v17, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    move v4, v0

    sub-int v13, v3, v4

    .line 1040
    .local v13, childSpace:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v14

    .line 1042
    .local v14, count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    and-int/lit8 v20, v3, 0x7

    .line 1043
    .local v20, majorGravity:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    and-int/lit8 v23, v3, 0x70

    .line 1045
    .local v23, minorGravity:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    move v9, v0

    .line 1047
    .local v9, baselineAligned:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object/from16 v21, v0

    .line 1048
    .local v21, maxAscent:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object/from16 v22, v0

    .line 1050
    .local v22, maxDescent:[I
    const/4 v3, 0x3

    move/from16 v0, v20

    move v1, v3

    if-eq v0, v1, :cond_55

    .line 1051
    sparse-switch v20, :sswitch_data_14e

    .line 1064
    :cond_55
    :goto_55
    const/16 v18, 0x0

    .local v18, i:I
    :goto_57
    move/from16 v0, v18

    move v1, v14

    if-ge v0, v1, :cond_14d

    .line 1069
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->isCurrentRTLanguage()Z

    move-result v3

    if-eqz v3, :cond_aa

    const/4 v3, 0x1

    sub-int v3, v14, v3

    sub-int v3, v3, v18

    :goto_67
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1073
    .local v4, child:Landroid/view/View;
    if-nez v4, :cond_ad

    .line 1074
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v3

    add-int/2addr v12, v3

    .line 1064
    :cond_79
    :goto_79
    add-int/lit8 v18, v18, 0x1

    goto :goto_57

    .line 1055
    .end local v4           #child:Landroid/view/View;
    .end local v18           #i:I
    :sswitch_7c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mRight:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mLeft:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v4, v0

    sub-int v12, v3, v4

    .line 1056
    goto :goto_55

    .line 1059
    :sswitch_95
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mRight:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mLeft:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v4, v0

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v12, v3

    goto :goto_55

    .restart local v18       #i:I
    :cond_aa
    move/from16 v3, v18

    .line 1069
    goto :goto_67

    .line 1075
    .restart local v4       #child:Landroid/view/View;
    :cond_ad
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_79

    .line 1076
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1077
    .local v7, childWidth:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1078
    .local v8, childHeight:I
    const/4 v10, -0x1

    .line 1080
    .local v10, childBaseline:I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout$LayoutParams;

    .line 1083
    .local v19, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v9, :cond_d2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    const/4 v5, -0x1

    if-eq v3, v5, :cond_d2

    .line 1084
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v10

    .line 1087
    :cond_d2
    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move/from16 v16, v0

    .line 1088
    .local v16, gravity:I
    if-gez v16, :cond_dc

    .line 1089
    move/from16 v16, v23

    .line 1092
    :cond_dc
    and-int/lit8 v3, v16, 0x70

    sparse-switch v3, :sswitch_data_158

    .line 1125
    :cond_e1
    :goto_e1
    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v3, v0

    add-int/2addr v12, v3

    .line 1126
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int v5, v12, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1128
    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v3, v0

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v12, v3

    .line 1131
    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int v18, v18, v3

    goto/16 :goto_79

    .line 1094
    :sswitch_111
    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v3, v0

    add-int v6, v24, v3

    .line 1095
    const/4 v3, -0x1

    if-eq v10, v3, :cond_e1

    .line 1096
    const/4 v3, 0x1

    aget v3, v21, v3

    sub-int/2addr v3, v10

    add-int/2addr v6, v3

    goto :goto_e1

    .line 1112
    :sswitch_121
    sub-int v3, v13, v8

    div-int/lit8 v3, v3, 0x2

    add-int v3, v3, v24

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v5, v0

    add-int/2addr v3, v5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v5, v0

    sub-int v6, v3, v5

    .line 1114
    goto :goto_e1

    .line 1117
    :sswitch_135
    sub-int v3, v11, v8

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v5, v0

    sub-int v6, v3, v5

    .line 1118
    const/4 v3, -0x1

    if-eq v10, v3, :cond_e1

    .line 1119
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v15, v3, v10

    .line 1120
    .local v15, descent:I
    const/4 v3, 0x2

    aget v3, v22, v3

    sub-int/2addr v3, v15

    sub-int/2addr v6, v3

    goto :goto_e1

    .line 1134
    .end local v4           #child:Landroid/view/View;
    .end local v7           #childWidth:I
    .end local v8           #childHeight:I
    .end local v10           #childBaseline:I
    .end local v15           #descent:I
    .end local v16           #gravity:I
    .end local v19           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_14d
    return-void

    .line 1051
    :sswitch_data_14e
    .sparse-switch
        0x1 -> :sswitch_95
        0x5 -> :sswitch_7c
    .end sparse-switch

    .line 1092
    :sswitch_data_158
    .sparse-switch
        0x10 -> :sswitch_121
        0x30 -> :sswitch_111
        0x50 -> :sswitch_135
    .end sparse-switch
.end method

.method layoutVertical()V
    .registers 21

    .prologue
    .line 945
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move/from16 v18, v0

    .line 947
    .local v18, paddingLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move v11, v0

    .line 948
    .local v11, childTop:I
    move/from16 v5, v18

    .line 951
    .local v5, childLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mRight:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mLeft:I

    move v4, v0

    sub-int v19, v3, v4

    .line 952
    .local v19, width:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    move v3, v0

    sub-int v9, v19, v3

    .line 955
    .local v9, childRight:I
    sub-int v3, v19, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    move v4, v0

    sub-int v10, v3, v4

    .line 957
    .local v10, childSpace:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v12

    .line 959
    .local v12, count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    and-int/lit8 v16, v3, 0x70

    .line 960
    .local v16, majorGravity:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    and-int/lit8 v17, v3, 0x7

    .line 962
    .local v17, minorGravity:I
    const/16 v3, 0x30

    move/from16 v0, v16

    move v1, v3

    if-eq v0, v1, :cond_45

    .line 963
    sparse-switch v16, :sswitch_data_ee

    .line 977
    :cond_45
    :goto_45
    const/4 v14, 0x0

    .local v14, i:I
    :goto_46
    if-ge v14, v12, :cond_ec

    .line 978
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 979
    .local v4, child:Landroid/view/View;
    if-nez v4, :cond_8a

    .line 980
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v3

    add-int/2addr v11, v3

    .line 977
    :cond_59
    :goto_59
    add-int/lit8 v14, v14, 0x1

    goto :goto_46

    .line 967
    .end local v4           #child:Landroid/view/View;
    .end local v14           #i:I
    :sswitch_5c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mBottom:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTop:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v4, v0

    sub-int v11, v3, v4

    .line 968
    goto :goto_45

    .line 971
    :sswitch_75
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mBottom:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTop:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v4, v0

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v11, v3

    goto :goto_45

    .line 981
    .restart local v4       #child:Landroid/view/View;
    .restart local v14       #i:I
    :cond_8a
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-eq v3, v6, :cond_59

    .line 982
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 983
    .local v7, childWidth:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 985
    .local v8, childHeight:I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 988
    .local v15, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v13, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 989
    .local v13, gravity:I
    if-gez v13, :cond_a6

    .line 990
    move/from16 v13, v17

    .line 993
    :cond_a6
    and-int/lit8 v3, v13, 0x7

    packed-switch v3, :pswitch_data_f8

    .line 1009
    :goto_ab
    :pswitch_ab
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v3

    .line 1010
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int v6, v11, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1012
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    add-int/2addr v11, v3

    .line 1014
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v14, v3

    goto :goto_59

    .line 995
    :pswitch_d2
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v5, v18, v3

    .line 996
    goto :goto_ab

    .line 999
    :pswitch_d7
    sub-int v3, v10, v7

    div-int/lit8 v3, v3, 0x2

    add-int v3, v3, v18

    iget v5, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .end local v5           #childLeft:I
    add-int/2addr v3, v5

    iget v5, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v5, v3, v5

    .line 1001
    .restart local v5       #childLeft:I
    goto :goto_ab

    .line 1004
    :pswitch_e5
    sub-int v3, v9, v7

    iget v5, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .end local v5           #childLeft:I
    sub-int v5, v3, v5

    .restart local v5       #childLeft:I
    goto :goto_ab

    .line 1017
    .end local v4           #child:Landroid/view/View;
    .end local v7           #childWidth:I
    .end local v8           #childHeight:I
    .end local v13           #gravity:I
    .end local v15           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_ec
    return-void

    .line 963
    nop

    :sswitch_data_ee
    .sparse-switch
        0x10 -> :sswitch_75
        0x50 -> :sswitch_5c
    .end sparse-switch

    .line 993
    :pswitch_data_f8
    .packed-switch 0x1
        :pswitch_d7
        :pswitch_ab
        :pswitch_d2
        :pswitch_ab
        :pswitch_e5
    .end packed-switch
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 13
    .parameter "child"
    .parameter "childIndex"
    .parameter "widthMeasureSpec"
    .parameter "totalWidth"
    .parameter "heightMeasureSpec"
    .parameter "totalHeight"

    .prologue
    .line 900
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 902
    return-void
.end method

.method measureHorizontal(II)V
    .registers 43
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 556
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 557
    const/16 v32, 0x0

    .line 558
    .local v32, maxHeight:I
    const/4 v11, 0x0

    .line 559
    .local v11, alternativeMaxHeight:I
    const/16 v37, 0x0

    .line 560
    .local v37, weightedMaxHeight:I
    const/4 v10, 0x1

    .line 561
    .local v10, allFillParent:Z
    const/16 v35, 0x0

    .line 563
    .local v35, totalWeight:F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v19

    .line 565
    .local v19, count:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v38

    .line 566
    .local v38, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v24

    .line 568
    .local v24, heightMode:I
    const/16 v28, 0x0

    .line 570
    .local v28, matchHeight:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object v3, v0

    if-eqz v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object v3, v0

    if-nez v3, :cond_3a

    .line 571
    :cond_2a
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 572
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 575
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object/from16 v30, v0

    .line 576
    .local v30, maxAscent:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object/from16 v31, v0

    .line 578
    .local v31, maxDescent:[I
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v30, v6

    aput v7, v30, v5

    aput v7, v30, v4

    aput v7, v30, v3

    .line 579
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v31, v6

    aput v7, v31, v5

    aput v7, v31, v4

    aput v7, v31, v3

    .line 581
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    move v13, v0

    .line 584
    .local v13, baselineAligned:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_66
    move v0, v5

    move/from16 v1, v19

    if-ge v0, v1, :cond_1f1

    .line 585
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 587
    .local v4, child:Landroid/view/View;
    if-nez v4, :cond_89

    .line 588
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 584
    :goto_86
    add-int/lit8 v5, v5, 0x1

    goto :goto_66

    .line 592
    .restart local v4       #child:Landroid/view/View;
    :cond_89
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_9b

    .line 593
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 594
    goto :goto_86

    .line 597
    :cond_9b
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout$LayoutParams;

    .line 599
    .local v26, lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    add-float v35, v35, v3

    .line 601
    const/high16 v3, 0x4000

    move/from16 v0, v38

    move v1, v3

    if-ne v0, v1, :cond_170

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    if-nez v3, :cond_170

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_170

    .line 605
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v6, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v7, v0

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 612
    if-eqz v13, :cond_e6

    .line 613
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .line 614
    .local v22, freeSpec:I
    move-object v0, v4

    move/from16 v1, v22

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 643
    .end local v22           #freeSpec:I
    :cond_e6
    :goto_e6
    const/16 v29, 0x0

    .line 644
    .local v29, matchHeightLocally:Z
    const/high16 v3, 0x4000

    move/from16 v0, v24

    move v1, v3

    if-eq v0, v1, :cond_fb

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_fb

    .line 648
    const/16 v28, 0x1

    .line 649
    const/16 v29, 0x1

    .line 652
    :cond_fb
    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v3, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v6, v0

    add-int v27, v3, v6

    .line 653
    .local v27, margin:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v27

    .line 655
    .local v16, childHeight:I
    if-eqz v13, :cond_13c

    .line 656
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 657
    .local v14, childBaseline:I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_13c

    .line 660
    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move v3, v0

    if-gez v3, :cond_1d5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    :goto_122
    and-int/lit8 v23, v3, 0x70

    .line 662
    .local v23, gravity:I
    shr-int/lit8 v3, v23, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v25, v3, 0x1

    .line 665
    .local v25, index:I
    aget v3, v30, v25

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v30, v25

    .line 666
    aget v3, v31, v25

    sub-int v6, v16, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v31, v25

    .line 670
    .end local v14           #childBaseline:I
    .end local v23           #gravity:I
    .end local v25           #index:I
    :cond_13c
    move/from16 v0, v32

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v32

    .line 672
    if-eqz v10, :cond_1dc

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1dc

    const/4 v3, 0x1

    move v10, v3

    .line 673
    :goto_150
    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1e4

    .line 678
    if-eqz v29, :cond_1e0

    move/from16 v3, v27

    :goto_15e
    move/from16 v0, v37

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v37

    .line 685
    :goto_165
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_86

    .line 617
    .end local v16           #childHeight:I
    .end local v27           #margin:I
    .end local v29           #matchHeightLocally:Z
    :cond_170
    const/high16 v33, -0x8000

    .line 619
    .local v33, oldWidth:I
    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    if-nez v3, :cond_18b

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_18b

    .line 623
    const/16 v33, 0x0

    .line 624
    const/4 v3, -0x2

    move v0, v3

    move-object/from16 v1, v26

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 631
    :cond_18b
    const/4 v3, 0x0

    cmpl-float v3, v35, v3

    if-nez v3, :cond_1d2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move v7, v3

    :goto_196
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 635
    const/high16 v3, -0x8000

    move/from16 v0, v33

    move v1, v3

    if-eq v0, v1, :cond_1ad

    .line 636
    move/from16 v0, v33

    move-object/from16 v1, v26

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 639
    :cond_1ad
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_e6

    .line 631
    :cond_1d2
    const/4 v3, 0x0

    move v7, v3

    goto :goto_196

    .line 660
    .end local v33           #oldWidth:I
    .restart local v14       #childBaseline:I
    .restart local v16       #childHeight:I
    .restart local v27       #margin:I
    .restart local v29       #matchHeightLocally:Z
    :cond_1d5
    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move v3, v0

    goto/16 :goto_122

    .line 672
    .end local v14           #childBaseline:I
    :cond_1dc
    const/4 v3, 0x0

    move v10, v3

    goto/16 :goto_150

    :cond_1e0
    move/from16 v3, v16

    .line 678
    goto/16 :goto_15e

    .line 681
    :cond_1e4
    if-eqz v29, :cond_1ee

    move/from16 v3, v27

    :goto_1e8
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto/16 :goto_165

    :cond_1ee
    move/from16 v3, v16

    goto :goto_1e8

    .line 690
    .end local v4           #child:Landroid/view/View;
    .end local v16           #childHeight:I
    .end local v26           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v27           #margin:I
    .end local v29           #matchHeightLocally:Z
    :cond_1f1
    const/4 v3, 0x1

    aget v3, v30, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_209

    const/4 v3, 0x0

    aget v3, v30, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_209

    const/4 v3, 0x2

    aget v3, v30, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_209

    const/4 v3, 0x3

    aget v3, v30, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_242

    .line 694
    :cond_209
    const/4 v3, 0x3

    aget v3, v30, v3

    const/4 v4, 0x0

    aget v4, v30, v4

    const/4 v5, 0x1

    aget v5, v30, v5

    .end local v5           #i:I
    const/4 v6, 0x2

    aget v6, v30, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 697
    .local v12, ascent:I
    const/4 v3, 0x3

    aget v3, v31, v3

    const/4 v4, 0x0

    aget v4, v31, v4

    const/4 v5, 0x1

    aget v5, v31, v5

    const/4 v6, 0x2

    aget v6, v31, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 700
    .local v21, descent:I
    add-int v3, v12, v21

    move/from16 v0, v32

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v32

    .line 704
    .end local v12           #ascent:I
    .end local v21           #descent:I
    :cond_242
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    move v5, v0

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 706
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v39, v0

    .line 709
    .local v39, widthSize:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v39

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v39

    .line 712
    move/from16 v0, v39

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/widget/LinearLayout;->resolveSize(II)I

    move-result v39

    .line 716
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    sub-int v20, v39, v3

    .line 717
    .local v20, delta:I
    if-eqz v20, :cond_499

    const/4 v3, 0x0

    cmpl-float v3, v35, v3

    if-lez v3, :cond_499

    .line 718
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2cc

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move v3, v0

    move/from16 v36, v3

    .line 720
    .local v36, weightSum:F
    :goto_290
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v30, v6

    aput v7, v30, v5

    aput v7, v30, v4

    aput v7, v30, v3

    .line 721
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v31, v6

    aput v7, v31, v5

    aput v7, v31, v4

    aput v7, v31, v3

    .line 722
    const/16 v32, -0x1

    .line 724
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 726
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2b3
    move v0, v5

    move/from16 v1, v19

    if-ge v0, v1, :cond_3f3

    .line 727
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 729
    .restart local v4       #child:Landroid/view/View;
    if-eqz v4, :cond_2c9

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_2cf

    .line 726
    .end local v4           #child:Landroid/view/View;
    :cond_2c9
    :goto_2c9
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b3

    .end local v5           #i:I
    .end local v36           #weightSum:F
    :cond_2cc
    move/from16 v36, v35

    .line 718
    goto :goto_290

    .line 733
    .restart local v4       #child:Landroid/view/View;
    .restart local v5       #i:I
    .restart local v36       #weightSum:F
    :cond_2cf
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout$LayoutParams;

    .line 736
    .restart local v26       #lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v15, v0

    .line 737
    .local v15, childExtra:F
    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_33a

    .line 739
    move/from16 v0, v20

    int-to-float v0, v0

    move v3, v0

    mul-float/2addr v3, v15

    div-float v3, v3, v36

    move v0, v3

    float-to-int v0, v0

    move/from16 v34, v0

    .line 740
    .local v34, share:I
    sub-float v36, v36, v15

    .line 741
    sub-int v20, v20, v34

    .line 743
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v6, v0

    move/from16 v0, p2

    move v1, v3

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v17

    .line 750
    .local v17, childHeightMeasureSpec:I
    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    if-nez v3, :cond_320

    const/high16 v3, 0x4000

    move/from16 v0, v38

    move v1, v3

    if-eq v0, v1, :cond_3ce

    .line 753
    :cond_320
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v18, v3, v34

    .line 754
    .local v18, childWidth:I
    if-gez v18, :cond_32a

    .line 755
    const/16 v18, 0x0

    .line 758
    :cond_32a
    const/high16 v3, 0x4000

    move/from16 v0, v18

    move v1, v3

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move-object v0, v4

    move v1, v3

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 769
    .end local v17           #childHeightMeasureSpec:I
    .end local v18           #childWidth:I
    .end local v34           #share:I
    :cond_33a
    :goto_33a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 772
    const/high16 v3, 0x4000

    move/from16 v0, v24

    move v1, v3

    if-eq v0, v1, :cond_3e3

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_3e3

    const/4 v3, 0x1

    move/from16 v29, v3

    .line 775
    .restart local v29       #matchHeightLocally:Z
    :goto_36f
    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v3, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v6, v0

    add-int v27, v3, v6

    .line 776
    .restart local v27       #margin:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v27

    .line 777
    .restart local v16       #childHeight:I
    move/from16 v0, v32

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v32

    .line 778
    if-eqz v29, :cond_3e7

    move/from16 v3, v27

    :goto_38d
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 781
    if-eqz v10, :cond_3ea

    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_3ea

    const/4 v3, 0x1

    move v10, v3

    .line 783
    :goto_39d
    if-eqz v13, :cond_2c9

    .line 784
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 785
    .restart local v14       #childBaseline:I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_2c9

    .line 787
    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move v3, v0

    if-gez v3, :cond_3ed

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    :goto_3b2
    and-int/lit8 v23, v3, 0x70

    .line 789
    .restart local v23       #gravity:I
    shr-int/lit8 v3, v23, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v25, v3, 0x1

    .line 792
    .restart local v25       #index:I
    aget v3, v30, v25

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v30, v25

    .line 793
    aget v3, v31, v25

    sub-int v4, v16, v14

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .end local v4           #child:Landroid/view/View;
    move-result v3

    aput v3, v31, v25

    goto/16 :goto_2c9

    .line 763
    .end local v14           #childBaseline:I
    .end local v16           #childHeight:I
    .end local v23           #gravity:I
    .end local v25           #index:I
    .end local v27           #margin:I
    .end local v29           #matchHeightLocally:Z
    .restart local v4       #child:Landroid/view/View;
    .restart local v17       #childHeightMeasureSpec:I
    .restart local v34       #share:I
    :cond_3ce
    if-lez v34, :cond_3e1

    move/from16 v3, v34

    :goto_3d2
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move-object v0, v4

    move v1, v3

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto/16 :goto_33a

    :cond_3e1
    const/4 v3, 0x0

    goto :goto_3d2

    .line 772
    .end local v17           #childHeightMeasureSpec:I
    .end local v34           #share:I
    :cond_3e3
    const/4 v3, 0x0

    move/from16 v29, v3

    goto :goto_36f

    .restart local v16       #childHeight:I
    .restart local v27       #margin:I
    .restart local v29       #matchHeightLocally:Z
    :cond_3e7
    move/from16 v3, v16

    .line 778
    goto :goto_38d

    .line 781
    :cond_3ea
    const/4 v3, 0x0

    move v10, v3

    goto :goto_39d

    .line 787
    .restart local v14       #childBaseline:I
    :cond_3ed
    move-object/from16 v0, v26

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move v3, v0

    goto :goto_3b2

    .line 800
    .end local v4           #child:Landroid/view/View;
    .end local v14           #childBaseline:I
    .end local v15           #childExtra:F
    .end local v16           #childHeight:I
    .end local v26           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v27           #margin:I
    .end local v29           #matchHeightLocally:Z
    :cond_3f3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    move v5, v0

    .end local v5           #i:I
    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 804
    const/4 v3, 0x1

    aget v3, v30, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_421

    const/4 v3, 0x0

    aget v3, v30, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_421

    const/4 v3, 0x2

    aget v3, v30, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_421

    const/4 v3, 0x3

    aget v3, v30, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_45a

    .line 808
    :cond_421
    const/4 v3, 0x3

    aget v3, v30, v3

    const/4 v4, 0x0

    aget v4, v30, v4

    const/4 v5, 0x1

    aget v5, v30, v5

    const/4 v6, 0x2

    aget v6, v30, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 811
    .restart local v12       #ascent:I
    const/4 v3, 0x3

    aget v3, v31, v3

    const/4 v4, 0x0

    aget v4, v31, v4

    const/4 v5, 0x1

    aget v5, v31, v5

    const/4 v6, 0x2

    aget v6, v31, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 814
    .restart local v21       #descent:I
    add-int v3, v12, v21

    move/from16 v0, v32

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v32

    .line 820
    .end local v12           #ascent:I
    .end local v21           #descent:I
    .end local v36           #weightSum:F
    :cond_45a
    :goto_45a
    if-nez v10, :cond_465

    const/high16 v3, 0x4000

    move/from16 v0, v24

    move v1, v3

    if-eq v0, v1, :cond_465

    .line 821
    move/from16 v32, v11

    .line 824
    :cond_465
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    move v4, v0

    add-int/2addr v3, v4

    add-int v32, v32, v3

    .line 827
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v32

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v32

    .line 829
    move/from16 v0, v32

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/widget/LinearLayout;->resolveSize(II)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v39

    move v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 831
    if-eqz v28, :cond_498

    .line 832
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;->forceUniformHeight(II)V

    .line 834
    :cond_498
    return-void

    .line 817
    :cond_499
    move v0, v11

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_45a
.end method

.method measureNullChild(I)I
    .registers 3
    .parameter "childIndex"

    .prologue
    .line 881
    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .registers 35
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 308
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 309
    const/16 v24, 0x0

    .line 310
    .local v24, maxWidth:I
    const/4 v11, 0x0

    .line 311
    .local v11, alternativeMaxWidth:I
    const/16 v30, 0x0

    .line 312
    .local v30, weightedMaxWidth:I
    const/4 v10, 0x1

    .line 313
    .local v10, allFillParent:Z
    const/16 v28, 0x0

    .line 315
    .local v28, totalWeight:F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v16

    .line 317
    .local v16, count:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v31

    .line 318
    .local v31, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 320
    .local v18, heightMode:I
    const/16 v22, 0x0

    .line 322
    .local v22, matchWidth:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    move v12, v0

    .line 325
    .local v12, baselineChildIndex:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_22
    move v0, v5

    move/from16 v1, v16

    if-ge v0, v1, :cond_184

    .line 326
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 328
    .local v4, child:Landroid/view/View;
    if-nez v4, :cond_45

    .line 329
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 325
    :goto_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 333
    .restart local v4       #child:Landroid/view/View;
    :cond_45
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_57

    .line 334
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 335
    goto :goto_42

    .line 338
    :cond_57
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout$LayoutParams;

    .line 340
    .local v20, lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    add-float v28, v28, v3

    .line 342
    const/high16 v3, 0x4000

    move/from16 v0, v18

    move v1, v3

    if-ne v0, v1, :cond_b6

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    if-nez v3, :cond_b6

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_b6

    .line 346
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v6, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v7, v0

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 378
    :goto_92
    if-ltz v12, :cond_a2

    add-int/lit8 v3, v5, 0x1

    if-ne v12, v3, :cond_a2

    .line 379
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 385
    :cond_a2
    if-ge v5, v12, :cond_11b

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_11b

    .line 386
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    .end local v4           #child:Landroid/view/View;
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 348
    .restart local v4       #child:Landroid/view/View;
    :cond_b6
    const/high16 v26, -0x8000

    .line 350
    .local v26, oldHeight:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    if-nez v3, :cond_d1

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_d1

    .line 354
    const/16 v26, 0x0

    .line 355
    const/4 v3, -0x2

    move v0, v3

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 362
    :cond_d1
    const/4 v7, 0x0

    const/4 v3, 0x0

    cmpl-float v3, v28, v3

    if-nez v3, :cond_118

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move v9, v3

    :goto_dd
    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 366
    const/high16 v3, -0x8000

    move/from16 v0, v26

    move v1, v3

    if-eq v0, v1, :cond_f3

    .line 367
    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 370
    :cond_f3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_92

    .line 362
    :cond_118
    const/4 v3, 0x0

    move v9, v3

    goto :goto_dd

    .line 392
    .end local v26           #oldHeight:I
    :cond_11b
    const/16 v23, 0x0

    .line 393
    .local v23, matchWidthLocally:Z
    const/high16 v3, 0x4000

    move/from16 v0, v31

    move v1, v3

    if-eq v0, v1, :cond_130

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_130

    .line 398
    const/16 v22, 0x1

    .line 399
    const/16 v23, 0x1

    .line 402
    :cond_130
    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v3, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v6, v0

    add-int v21, v3, v6

    .line 403
    .local v21, margin:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v25, v3, v21

    .line 404
    .local v25, measuredWidth:I
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 406
    if-eqz v10, :cond_172

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_172

    const/4 v3, 0x1

    move v10, v3

    .line 407
    :goto_152
    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_178

    .line 412
    if-eqz v23, :cond_175

    move/from16 v3, v21

    :goto_160
    move/from16 v0, v30

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v30

    .line 419
    :goto_167
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_42

    .line 406
    :cond_172
    const/4 v3, 0x0

    move v10, v3

    goto :goto_152

    :cond_175
    move/from16 v3, v25

    .line 412
    goto :goto_160

    .line 415
    :cond_178
    if-eqz v23, :cond_181

    move/from16 v3, v21

    :goto_17c
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_167

    :cond_181
    move/from16 v3, v25

    goto :goto_17c

    .line 423
    .end local v4           #child:Landroid/view/View;
    .end local v20           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v21           #margin:I
    .end local v23           #matchWidthLocally:Z
    .end local v25           #measuredWidth:I
    :cond_184
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    move v5, v0

    .end local v5           #i:I
    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 425
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v19, v0

    .line 428
    .local v19, heightSize:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v19

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 431
    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/widget/LinearLayout;->resolveSize(II)I

    move-result v19

    .line 435
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    sub-int v17, v19, v3

    .line 436
    .local v17, delta:I
    if-eqz v17, :cond_326

    const/4 v3, 0x0

    cmpl-float v3, v28, v3

    if-lez v3, :cond_326

    .line 437
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1f0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move v3, v0

    move/from16 v29, v3

    .line 439
    .local v29, weightSum:F
    :goto_1d2
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 441
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_1d9
    move v0, v5

    move/from16 v1, v16

    if-ge v0, v1, :cond_2d1

    .line 442
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 444
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1f3

    .line 441
    .end local v4           #child:Landroid/view/View;
    :goto_1ed
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d9

    .end local v5           #i:I
    .end local v29           #weightSum:F
    :cond_1f0
    move/from16 v29, v28

    .line 437
    goto :goto_1d2

    .line 448
    .restart local v4       #child:Landroid/view/View;
    .restart local v5       #i:I
    .restart local v29       #weightSum:F
    :cond_1f3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout$LayoutParams;

    .line 450
    .restart local v20       #lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v13, v0

    .line 451
    .local v13, childExtra:F
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_256

    .line 453
    move/from16 v0, v17

    int-to-float v0, v0

    move v3, v0

    mul-float/2addr v3, v13

    div-float v3, v3, v29

    move v0, v3

    float-to-int v0, v0

    move/from16 v27, v0

    .line 454
    .local v27, share:I
    sub-float v29, v29, v13

    .line 455
    sub-int v17, v17, v27

    .line 457
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v6, v0

    move/from16 v0, p1

    move v1, v3

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v15

    .line 463
    .local v15, childWidthMeasureSpec:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    if-nez v3, :cond_244

    const/high16 v3, 0x4000

    move/from16 v0, v18

    move v1, v3

    if-eq v0, v1, :cond_2b7

    .line 466
    :cond_244
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v14, v3, v27

    .line 467
    .local v14, childHeight:I
    if-gez v14, :cond_24d

    .line 468
    const/4 v14, 0x0

    .line 471
    :cond_24d
    const/high16 v3, 0x4000

    invoke-static {v14, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, v15, v3}, Landroid/view/View;->measure(II)V

    .line 482
    .end local v14           #childHeight:I
    .end local v15           #childWidthMeasureSpec:I
    .end local v27           #share:I
    :cond_256
    :goto_256
    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v3, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v6, v0

    add-int v21, v3, v6

    .line 483
    .restart local v21       #margin:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v25, v3, v21

    .line 484
    .restart local v25       #measuredWidth:I
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 486
    const/high16 v3, 0x4000

    move/from16 v0, v31

    move v1, v3

    if-eq v0, v1, :cond_2c7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2c7

    const/4 v3, 0x1

    move/from16 v23, v3

    .line 489
    .restart local v23       #matchWidthLocally:Z
    :goto_27e
    if-eqz v23, :cond_2cb

    move/from16 v3, v21

    :goto_282
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 492
    if-eqz v10, :cond_2ce

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2ce

    const/4 v3, 0x1

    move v10, v3

    .line 494
    :goto_292
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v4, v6

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_1ed

    .line 476
    .end local v21           #margin:I
    .end local v23           #matchWidthLocally:Z
    .end local v25           #measuredWidth:I
    .restart local v4       #child:Landroid/view/View;
    .restart local v15       #childWidthMeasureSpec:I
    .restart local v27       #share:I
    :cond_2b7
    if-lez v27, :cond_2c5

    move/from16 v3, v27

    :goto_2bb
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, v15, v3}, Landroid/view/View;->measure(II)V

    goto :goto_256

    :cond_2c5
    const/4 v3, 0x0

    goto :goto_2bb

    .line 486
    .end local v15           #childWidthMeasureSpec:I
    .end local v27           #share:I
    .restart local v21       #margin:I
    .restart local v25       #measuredWidth:I
    :cond_2c7
    const/4 v3, 0x0

    move/from16 v23, v3

    goto :goto_27e

    .restart local v23       #matchWidthLocally:Z
    :cond_2cb
    move/from16 v3, v25

    .line 489
    goto :goto_282

    .line 492
    :cond_2ce
    const/4 v3, 0x0

    move v10, v3

    goto :goto_292

    .line 499
    .end local v4           #child:Landroid/view/View;
    .end local v13           #childExtra:F
    .end local v20           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v21           #margin:I
    .end local v23           #matchWidthLocally:Z
    .end local v25           #measuredWidth:I
    :cond_2d1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    move v5, v0

    .end local v5           #i:I
    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 505
    .end local v29           #weightSum:F
    :goto_2e7
    if-nez v10, :cond_2f2

    const/high16 v3, 0x4000

    move/from16 v0, v31

    move v1, v3

    if-eq v0, v1, :cond_2f2

    .line 506
    move/from16 v24, v11

    .line 509
    :cond_2f2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    move v4, v0

    add-int/2addr v3, v4

    add-int v24, v24, v3

    .line 512
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v24

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 514
    move/from16 v0, v24

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/widget/LinearLayout;->resolveSize(II)I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 516
    if-eqz v22, :cond_325

    .line 517
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;->forceUniformWidth(II)V

    .line 519
    :cond_325
    return-void

    .line 501
    :cond_326
    move v0, v11

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_2e7
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 929
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 930
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->layoutVertical()V

    .line 934
    :goto_8
    return-void

    .line 932
    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->layoutHorizontal()V

    goto :goto_8
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 289
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 290
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    .line 294
    :goto_8
    return-void

    .line 292
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    goto :goto_8
.end method

.method public setBaselineAligned(Z)V
    .registers 2
    .parameter "baselineAligned"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 153
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 154
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .registers 5
    .parameter "i"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 226
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_2b

    .line 227
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_2b
    iput p1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 231
    return-void
.end method

.method public setGravity(I)V
    .registers 4
    .parameter "gravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1177
    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isCurrentRTLanguage()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1178
    and-int/lit8 v0, p1, 0x70

    or-int/lit8 p1, v0, 0x5

    .line 1182
    :cond_f
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    if-eq v0, p1, :cond_24

    .line 1183
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_19

    .line 1184
    or-int/lit8 p1, p1, 0x3

    .line 1187
    :cond_19
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1f

    .line 1188
    or-int/lit8 p1, p1, 0x30

    .line 1191
    :cond_1f
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1192
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1194
    :cond_24
    return-void
.end method

.method public setHorizontalGravity(I)V
    .registers 4
    .parameter "horizontalGravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1198
    and-int/lit8 v0, p1, 0x7

    .line 1199
    .local v0, gravity:I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x7

    if-eq v1, v0, :cond_12

    .line 1200
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x8

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1201
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1203
    :cond_12
    return-void
.end method

.method public setOrientation(I)V
    .registers 3
    .parameter "orientation"

    .prologue
    .line 1148
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_9

    .line 1149
    iput p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    .line 1150
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1152
    :cond_9
    return-void
.end method

.method public setVerticalGravity(I)V
    .registers 4
    .parameter "verticalGravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1207
    and-int/lit8 v0, p1, 0x70

    .line 1208
    .local v0, gravity:I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_12

    .line 1209
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1210
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1212
    :cond_12
    return-void
.end method

.method public setWeightSum(F)V
    .registers 3
    .parameter "weightSum"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 285
    return-void
.end method
