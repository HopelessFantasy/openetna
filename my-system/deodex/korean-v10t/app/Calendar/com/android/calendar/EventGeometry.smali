.class public Lcom/android/calendar/EventGeometry;
.super Ljava/lang/Object;
.source "EventGeometry.java"


# instance fields
.field private mCellMargin:I

.field private mHourGap:F

.field private mMinEventHeight:F

.field private mMinuteHeight:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:I

    return-void
.end method


# virtual methods
.method computeBusyBits(II[[BLcom/android/calendar/Event;I)V
    .registers 19
    .parameter "firstDate"
    .parameter "numDays"
    .parameter "busyBits"
    .parameter "event"
    .parameter "interval"

    .prologue
    .line 110
    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/android/calendar/Event;->allDay:Z

    move v11, v0

    if-eqz v11, :cond_8

    .line 155
    :cond_7
    return-void

    .line 114
    :cond_8
    add-int v3, p1, p2

    .line 115
    .local v3, endDate:I
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/calendar/Event;->startDay:I

    move v8, v0

    .line 116
    .local v8, startDay:I
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/calendar/Event;->endDay:I

    move v4, v0

    .line 117
    .local v4, endDay:I
    if-ge v8, v3, :cond_7

    if-lt v4, p1, :cond_7

    .line 121
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    move v10, v0

    .line 123
    .local v10, startTime:I
    move v1, v8

    .line 127
    .local v1, day:I
    if-ge v1, p1, :cond_22

    .line 128
    move v1, p1

    .line 129
    const/4 v10, 0x0

    .line 132
    :cond_22
    if-lt v4, v3, :cond_27

    .line 133
    const/4 v11, 0x1

    sub-int v4, v3, v11

    .line 136
    :cond_27
    sub-int v2, v1, p1

    .line 137
    .local v2, dayIndex:I
    :goto_29
    if-gt v1, v4, :cond_7

    .line 138
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    move v6, v0

    .line 141
    .local v6, endTime:I
    if-le v4, v1, :cond_34

    .line 142
    const/16 v6, 0x5a0

    .line 145
    :cond_34
    div-int v9, v10, p5

    .line 146
    .local v9, startInterval:I
    add-int v11, v6, p5

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    div-int v5, v11, p5

    .line 148
    .local v5, endInterval:I
    move v7, v9

    .local v7, ii:I
    :goto_3d
    if-ge v7, v5, :cond_47

    .line 149
    aget-object v11, p3, v2

    const/4 v12, 0x1

    aput-byte v12, v11, v7

    .line 148
    add-int/lit8 v7, v7, 0x1

    goto :goto_3d

    .line 151
    :cond_47
    add-int/lit8 v1, v1, 0x1

    .line 152
    add-int/lit8 v2, v2, 0x1

    .line 153
    const/4 v10, 0x0

    .line 154
    goto :goto_29
.end method

.method computeEventRect(IIIILcom/android/calendar/Event;)Z
    .registers 21
    .parameter "date"
    .parameter "left"
    .parameter "top"
    .parameter "cellWidth"
    .parameter "event"

    .prologue
    .line 49
    move-object/from16 v0, p5

    iget-boolean v0, v0, Lcom/android/calendar/Event;->allDay:Z

    move v12, v0

    if-eqz v12, :cond_9

    .line 50
    const/4 v12, 0x0

    .line 103
    :goto_8
    return v12

    .line 53
    :cond_9
    iget v2, p0, Lcom/android/calendar/EventGeometry;->mMinuteHeight:F

    .line 54
    .local v2, cellMinuteHeight:F
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->startDay:I

    move v9, v0

    .line 55
    .local v9, startDay:I
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->endDay:I

    move v5, v0

    .line 57
    .local v5, endDay:I
    move v0, v9

    move/from16 v1, p1

    if-gt v0, v1, :cond_1f

    move v0, v5

    move/from16 v1, p1

    if-ge v0, v1, :cond_21

    .line 58
    :cond_1f
    const/4 v12, 0x0

    goto :goto_8

    .line 61
    :cond_21
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->startTime:I

    move v11, v0

    .line 62
    .local v11, startTime:I
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->endTime:I

    move v7, v0

    .line 66
    .local v7, endTime:I
    move v0, v9

    move/from16 v1, p1

    if-ge v0, v1, :cond_31

    .line 67
    const/4 v11, 0x0

    .line 72
    :cond_31
    move v0, v5

    move/from16 v1, p1

    if-le v0, v1, :cond_38

    .line 73
    const/16 v7, 0x5a0

    .line 76
    :cond_38
    invoke-virtual/range {p5 .. p5}, Lcom/android/calendar/Event;->getColumn()I

    move-result v3

    .line 77
    .local v3, col:I
    invoke-virtual/range {p5 .. p5}, Lcom/android/calendar/Event;->getMaxColumns()I

    move-result v8

    .line 78
    .local v8, maxCols:I
    div-int/lit8 v10, v11, 0x3c

    .line 79
    .local v10, startHour:I
    div-int/lit8 v6, v7, 0x3c

    .line 84
    .local v6, endHour:I
    mul-int/lit8 v12, v6, 0x3c

    if-ne v12, v7, :cond_4a

    .line 85
    add-int/lit8 v6, v6, -0x1

    .line 87
    :cond_4a
    move/from16 v0, p3

    int-to-float v0, v0

    move v12, v0

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->top:F

    .line 88
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->top:F

    move v12, v0

    int-to-float v13, v11

    mul-float/2addr v13, v2

    float-to-int v13, v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->top:F

    .line 89
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->top:F

    move v12, v0

    int-to-float v13, v10

    iget v14, p0, Lcom/android/calendar/EventGeometry;->mHourGap:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->top:F

    .line 91
    move/from16 v0, p3

    int-to-float v0, v0

    move v12, v0

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->bottom:F

    .line 92
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->bottom:F

    move v12, v0

    int-to-float v13, v7

    mul-float/2addr v13, v2

    float-to-int v13, v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->bottom:F

    .line 93
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->bottom:F

    move v12, v0

    int-to-float v13, v6

    iget v14, p0, Lcom/android/calendar/EventGeometry;->mHourGap:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->bottom:F

    .line 96
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->bottom:F

    move v12, v0

    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->top:F

    move v13, v0

    iget v14, p0, Lcom/android/calendar/EventGeometry;->mMinEventHeight:F

    add-float/2addr v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_b6

    .line 97
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->top:F

    move v12, v0

    iget v13, p0, Lcom/android/calendar/EventGeometry;->mMinEventHeight:F

    add-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->bottom:F

    .line 100
    :cond_b6
    iget v12, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:I

    mul-int/lit8 v12, v12, 0x2

    sub-int v12, p4, v12

    int-to-float v12, v12

    int-to-float v13, v8

    div-float v4, v12, v13

    .line 101
    .local v4, colWidth:F
    iget v12, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:I

    add-int v12, v12, p2

    int-to-float v12, v12

    int-to-float v13, v3

    mul-float/2addr v13, v4

    add-float/2addr v12, v13

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->left:F

    .line 102
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/calendar/Event;->left:F

    move v12, v0

    add-float/2addr v12, v4

    move v0, v12

    move-object/from16 v1, p5

    iput v0, v1, Lcom/android/calendar/Event;->right:F

    .line 103
    const/4 v12, 0x1

    goto/16 :goto_8
.end method

.method eventIntersectsSelection(Lcom/android/calendar/Event;Landroid/graphics/Rect;)Z
    .registers 5
    .parameter "event"
    .parameter "selection"

    .prologue
    .line 161
    iget v0, p1, Lcom/android/calendar/Event;->left:F

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_26

    iget v0, p1, Lcom/android/calendar/Event;->right:F

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_26

    iget v0, p1, Lcom/android/calendar/Event;->top:F

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_26

    iget v0, p1, Lcom/android/calendar/Event;->bottom:F

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_26

    .line 163
    const/4 v0, 0x1

    .line 165
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method pointToEvent(FFLcom/android/calendar/Event;)F
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "event"

    .prologue
    .line 172
    iget v3, p3, Lcom/android/calendar/Event;->left:F

    .line 173
    .local v3, left:F
    iget v4, p3, Lcom/android/calendar/Event;->right:F

    .line 174
    .local v4, right:F
    iget v5, p3, Lcom/android/calendar/Event;->top:F

    .line 175
    .local v5, top:F
    iget v0, p3, Lcom/android/calendar/Event;->bottom:F

    .line 177
    .local v0, bottom:F
    cmpl-float v6, p1, v3

    if-ltz v6, :cond_48

    .line 178
    cmpg-float v6, p1, v4

    if-gtz v6, :cond_20

    .line 179
    cmpl-float v6, p2, v5

    if-ltz v6, :cond_1d

    .line 180
    cmpg-float v6, p2, v0

    if-gtz v6, :cond_1a

    .line 182
    const/4 v6, 0x0

    .line 219
    :goto_19
    return v6

    .line 185
    :cond_1a
    sub-float v6, p2, v0

    goto :goto_19

    .line 188
    :cond_1d
    sub-float v6, v5, p2

    goto :goto_19

    .line 192
    :cond_20
    sub-float v1, p1, v4

    .line 193
    .local v1, dx:F
    cmpg-float v6, p2, v5

    if-gez v6, :cond_34

    .line 195
    sub-float v2, v5, p2

    .line 196
    .local v2, dy:F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    goto :goto_19

    .line 198
    .end local v2           #dy:F
    :cond_34
    cmpl-float v6, p2, v0

    if-lez v6, :cond_46

    .line 200
    sub-float v2, p2, v0

    .line 201
    .restart local v2       #dy:F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    goto :goto_19

    .end local v2           #dy:F
    :cond_46
    move v6, v1

    .line 204
    goto :goto_19

    .line 207
    .end local v1           #dx:F
    :cond_48
    sub-float v1, v3, p1

    .line 208
    .restart local v1       #dx:F
    cmpg-float v6, p2, v5

    if-gez v6, :cond_5c

    .line 210
    sub-float v2, v5, p2

    .line 211
    .restart local v2       #dy:F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    goto :goto_19

    .line 213
    .end local v2           #dy:F
    :cond_5c
    cmpl-float v6, p2, v0

    if-lez v6, :cond_6e

    .line 215
    sub-float v2, p2, v0

    .line 216
    .restart local v2       #dy:F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    goto :goto_19

    .end local v2           #dy:F
    :cond_6e
    move v6, v1

    .line 219
    goto :goto_19
.end method

.method setCellMargin(I)V
    .registers 2
    .parameter "cellMargin"

    .prologue
    .line 31
    iput p1, p0, Lcom/android/calendar/EventGeometry;->mCellMargin:I

    .line 32
    return-void
.end method

.method setHourGap(F)V
    .registers 2
    .parameter "gap"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/calendar/EventGeometry;->mHourGap:F

    .line 36
    return-void
.end method

.method setHourHeight(F)V
    .registers 3
    .parameter "height"

    .prologue
    .line 43
    const/high16 v0, 0x4270

    div-float v0, p1, v0

    iput v0, p0, Lcom/android/calendar/EventGeometry;->mMinuteHeight:F

    .line 44
    return-void
.end method

.method setMinEventHeight(F)V
    .registers 2
    .parameter "height"

    .prologue
    .line 39
    iput p1, p0, Lcom/android/calendar/EventGeometry;->mMinEventHeight:F

    .line 40
    return-void
.end method
