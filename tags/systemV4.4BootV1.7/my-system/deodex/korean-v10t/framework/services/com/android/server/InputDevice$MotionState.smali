.class Lcom/android/server/InputDevice$MotionState;
.super Ljava/lang/Object;
.source "InputDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MotionState"
.end annotation


# instance fields
.field changed:Z

.field currentMove:Landroid/view/MotionEvent;

.field down:Z

.field downTime:J

.field lastDown:Z

.field pressure:I

.field scanCode:I

.field size:I

.field x:I

.field xMoveScale:F

.field xPrecision:I

.field y:I

.field yMoveScale:F

.field yPrecision:I


# direct methods
.method constructor <init>(II)V
    .registers 7
    .parameter "mx"
    .parameter "my"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputDevice$MotionState;->currentMove:Landroid/view/MotionEvent;

    .line 59
    iput-boolean v2, p0, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/server/InputDevice$MotionState;->down:Z

    .line 61
    iput-boolean v2, p0, Lcom/android/server/InputDevice$MotionState;->lastDown:Z

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/InputDevice$MotionState;->downTime:J

    .line 63
    iput v2, p0, Lcom/android/server/InputDevice$MotionState;->x:I

    .line 64
    iput v2, p0, Lcom/android/server/InputDevice$MotionState;->y:I

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/InputDevice$MotionState;->pressure:I

    .line 66
    iput v2, p0, Lcom/android/server/InputDevice$MotionState;->size:I

    .line 67
    iput v2, p0, Lcom/android/server/InputDevice$MotionState;->scanCode:I

    .line 70
    iput p1, p0, Lcom/android/server/InputDevice$MotionState;->xPrecision:I

    .line 71
    iput p2, p0, Lcom/android/server/InputDevice$MotionState;->yPrecision:I

    .line 72
    if-eqz p1, :cond_31

    int-to-float v0, p1

    div-float v0, v3, v0

    :goto_27
    iput v0, p0, Lcom/android/server/InputDevice$MotionState;->xMoveScale:F

    .line 73
    if-eqz p2, :cond_33

    int-to-float v0, p2

    div-float v0, v3, v0

    :goto_2e
    iput v0, p0, Lcom/android/server/InputDevice$MotionState;->yMoveScale:F

    .line 74
    return-void

    :cond_31
    move v0, v3

    .line 72
    goto :goto_27

    :cond_33
    move v0, v3

    .line 73
    goto :goto_2e
.end method


# virtual methods
.method generateMotion(Lcom/android/server/InputDevice;JZLandroid/view/Display;II)Landroid/view/MotionEvent;
    .registers 45
    .parameter "device"
    .parameter "curTime"
    .parameter "isAbs"
    .parameter "display"
    .parameter "orientation"
    .parameter "metaState"

    .prologue
    .line 79
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputDevice$MotionState;->changed:Z

    move v3, v0

    if-nez v3, :cond_9

    .line 80
    const/4 v3, 0x0

    .line 204
    :goto_8
    return-object v3

    .line 83
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->x:I

    move v3, v0

    int-to-float v8, v3

    .line 84
    .local v8, scaledX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->y:I

    move v3, v0

    int-to-float v9, v3

    .line 86
    .local v9, scaledY:F
    const/high16 v10, 0x3f80

    .line 87
    .local v10, scaledPressure:F
    const/4 v11, 0x0

    .line 88
    .local v11, scaledSize:F
    const/16 v16, 0x0

    .line 89
    .local v16, edgeFlags:I
    if-eqz p4, :cond_1a3

    .line 90
    invoke-virtual/range {p5 .. p5}, Landroid/view/Display;->getWidth()I

    move-result v3

    const/4 v4, 0x1

    sub-int v36, v3, v4

    .line 91
    .local v36, w:I
    invoke-virtual/range {p5 .. p5}, Landroid/view/Display;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    sub-int v32, v3, v4

    .line 92
    .local v32, h:I
    const/4 v3, 0x1

    move/from16 v0, p6

    move v1, v3

    if-eq v0, v1, :cond_36

    const/4 v3, 0x3

    move/from16 v0, p6

    move v1, v3

    if-ne v0, v1, :cond_3c

    .line 94
    :cond_36
    move/from16 v35, v36

    .line 95
    .local v35, tmp:I
    move/from16 v36, v32

    .line 96
    move/from16 v32, v35

    .line 98
    .end local v35           #tmp:I
    :cond_3c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/InputDevice;->absX:Lcom/android/server/InputDevice$AbsoluteInfo;

    move-object v3, v0

    if-eqz v3, :cond_5c

    .line 99
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/InputDevice;->absX:Lcom/android/server/InputDevice$AbsoluteInfo;

    move-object v3, v0

    iget v3, v3, Lcom/android/server/InputDevice$AbsoluteInfo;->minValue:I

    int-to-float v3, v3

    sub-float v3, v8, v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/InputDevice;->absX:Lcom/android/server/InputDevice$AbsoluteInfo;

    move-object v4, v0

    iget v4, v4, Lcom/android/server/InputDevice$AbsoluteInfo;->range:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    move/from16 v0, v36

    int-to-float v0, v0

    move v4, v0

    mul-float v8, v3, v4

    .line 102
    :cond_5c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/InputDevice;->absY:Lcom/android/server/InputDevice$AbsoluteInfo;

    move-object v3, v0

    if-eqz v3, :cond_7c

    .line 103
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/InputDevice;->absY:Lcom/android/server/InputDevice$AbsoluteInfo;

    move-object v3, v0

    iget v3, v3, Lcom/android/server/InputDevice$AbsoluteInfo;->minValue:I

    int-to-float v3, v3

    sub-float v3, v9, v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/InputDevice;->absY:Lcom/android/server/InputDevice$AbsoluteInfo;

    move-object v4, v0

    iget v4, v4, Lcom/android/server/InputDevice$AbsoluteInfo;->range:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    move/from16 v0, v32

    int-to-float v0, v0

    move v4, v0

    mul-float v9, v3, v4

    .line 106
    :cond_7c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/InputDevice;->absPressure:Lcom/android/server/InputDevice$AbsoluteInfo;

    move-object v3, v0

    if-eqz v3, :cond_9b

    .line 107
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->pressure:I

    move v3, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/InputDevice;->absPressure:Lcom/android/server/InputDevice$AbsoluteInfo;

    move-object v4, v0

    iget v4, v4, Lcom/android/server/InputDevice$AbsoluteInfo;->minValue:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/InputDevice;->absPressure:Lcom/android/server/InputDevice$AbsoluteInfo;

    move-object v4, v0

    iget v4, v4, Lcom/android/server/InputDevice$AbsoluteInfo;->range:I

    int-to-float v4, v4

    div-float v10, v3, v4

    .line 111
    :cond_9b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/InputDevice;->absSize:Lcom/android/server/InputDevice$AbsoluteInfo;

    move-object v3, v0

    if-eqz v3, :cond_ba

    .line 112
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->size:I

    move v3, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/InputDevice;->absSize:Lcom/android/server/InputDevice$AbsoluteInfo;

    move-object v4, v0

    iget v4, v4, Lcom/android/server/InputDevice$AbsoluteInfo;->minValue:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/InputDevice;->absSize:Lcom/android/server/InputDevice$AbsoluteInfo;

    move-object v4, v0

    iget v4, v4, Lcom/android/server/InputDevice$AbsoluteInfo;->range:I

    int-to-float v4, v4

    div-float v11, v3, v4

    .line 116
    :cond_ba
    packed-switch p6, :pswitch_data_22c

    .line 133
    :goto_bd
    const/4 v3, 0x0

    cmpl-float v3, v8, v3

    if-nez v3, :cond_183

    .line 134
    add-int/lit8 v16, v16, 0x4

    .line 139
    :cond_c4
    :goto_c4
    const/4 v3, 0x0

    cmpl-float v3, v9, v3

    if-nez v3, :cond_193

    .line 140
    add-int/lit8 v16, v16, 0x1

    .line 167
    .end local v32           #h:I
    .end local v36           #w:I
    :cond_cb
    :goto_cb
    invoke-static {}, Lcom/android/server/InputDevice;->getXScale()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v8

    invoke-static {}, Lcom/android/server/InputDevice;->getXTrans()I

    move-result v4

    invoke-static {}, Lcom/android/server/InputDevice;->getScaleFactor()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {}, Lcom/android/server/InputDevice;->getScaleFactor()I

    move-result v4

    int-to-float v4, v4

    div-float v8, v3, v4

    .line 168
    invoke-static {}, Lcom/android/server/InputDevice;->getYScale()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v9

    invoke-static {}, Lcom/android/server/InputDevice;->getYTrans()I

    move-result v4

    invoke-static {}, Lcom/android/server/InputDevice;->getScaleFactor()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {}, Lcom/android/server/InputDevice;->getScaleFactor()I

    move-result v4

    int-to-float v4, v4

    div-float v9, v3, v4

    .line 171
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/InputDevice$MotionState;->changed:Z

    .line 172
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputDevice$MotionState;->down:Z

    move v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputDevice$MotionState;->lastDown:Z

    move v4, v0

    if-eq v3, v4, :cond_1cb

    .line 174
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputDevice$MotionState;->down:Z

    move v3, v0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/InputDevice$MotionState;->lastDown:Z

    .line 175
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/InputDevice$MotionState;->down:Z

    move v3, v0

    if-eqz v3, :cond_1c8

    .line 176
    const/4 v7, 0x0

    .line 177
    .local v7, action:I
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/InputDevice$MotionState;->downTime:J

    .line 181
    :goto_125
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputDevice$MotionState;->currentMove:Landroid/view/MotionEvent;

    .line 182
    if-nez p4, :cond_138

    .line 183
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/InputDevice$MotionState;->y:I

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/InputDevice$MotionState;->x:I

    .line 185
    :cond_138
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/InputDevice$MotionState;->downTime:J

    move-wide v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->xPrecision:I

    move v5, v0

    int-to-float v13, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->yPrecision:I

    move v5, v0

    int-to-float v14, v5

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/InputDevice;->id:I

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->scanCode:I

    move/from16 v17, v0

    move-wide/from16 v5, p2

    move/from16 v12, p7

    invoke-static/range {v3 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFIII)Landroid/view/MotionEvent;

    move-result-object v3

    goto/16 :goto_8

    .line 118
    .end local v7           #action:I
    .restart local v32       #h:I
    .restart local v36       #w:I
    :pswitch_15e
    move/from16 v34, v8

    .line 119
    .local v34, temp:F
    move v8, v9

    .line 120
    move/from16 v0, v36

    int-to-float v0, v0

    move v3, v0

    sub-float v9, v3, v34

    .line 121
    goto/16 :goto_bd

    .line 123
    .end local v34           #temp:F
    :pswitch_169
    move/from16 v0, v36

    int-to-float v0, v0

    move v3, v0

    sub-float v8, v3, v8

    .line 124
    move/from16 v0, v32

    int-to-float v0, v0

    move v3, v0

    sub-float v9, v3, v9

    .line 125
    goto/16 :goto_bd

    .line 127
    :pswitch_177
    move/from16 v34, v8

    .line 128
    .restart local v34       #temp:F
    move/from16 v0, v32

    int-to-float v0, v0

    move v3, v0

    sub-float v8, v3, v9

    .line 129
    move/from16 v9, v34

    goto/16 :goto_bd

    .line 135
    .end local v34           #temp:F
    :cond_183
    invoke-virtual/range {p5 .. p5}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    sub-float/2addr v3, v4

    cmpl-float v3, v8, v3

    if-nez v3, :cond_c4

    .line 136
    add-int/lit8 v16, v16, 0x8

    goto/16 :goto_c4

    .line 141
    :cond_193
    invoke-virtual/range {p5 .. p5}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    sub-float/2addr v3, v4

    cmpl-float v3, v9, v3

    if-nez v3, :cond_cb

    .line 142
    add-int/lit8 v16, v16, 0x2

    goto/16 :goto_cb

    .line 146
    .end local v32           #h:I
    .end local v36           #w:I
    :cond_1a3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->xMoveScale:F

    move v3, v0

    mul-float/2addr v8, v3

    .line 147
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->yMoveScale:F

    move v3, v0

    mul-float/2addr v9, v3

    .line 148
    packed-switch p6, :pswitch_data_236

    goto/16 :goto_cb

    .line 150
    :pswitch_1b4
    move/from16 v34, v8

    .line 151
    .restart local v34       #temp:F
    move v8, v9

    .line 152
    move/from16 v0, v34

    neg-float v0, v0

    move v9, v0

    .line 153
    goto/16 :goto_cb

    .line 155
    .end local v34           #temp:F
    :pswitch_1bd
    neg-float v8, v8

    .line 156
    neg-float v9, v9

    .line 157
    goto/16 :goto_cb

    .line 159
    :pswitch_1c1
    move/from16 v34, v8

    .line 160
    .restart local v34       #temp:F
    neg-float v8, v9

    .line 161
    move/from16 v9, v34

    goto/16 :goto_cb

    .line 179
    .end local v34           #temp:F
    :cond_1c8
    const/4 v7, 0x1

    .restart local v7       #action:I
    goto/16 :goto_125

    .line 189
    .end local v7           #action:I
    :cond_1cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->currentMove:Landroid/view/MotionEvent;

    move-object v3, v0

    if-eqz v3, :cond_1ea

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/InputDevice$MotionState;->currentMove:Landroid/view/MotionEvent;

    move-object/from16 v17, v0

    move-wide/from16 v18, p2

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    move/from16 v24, p7

    invoke-virtual/range {v17 .. v24}, Landroid/view/MotionEvent;->addBatch(JFFFFI)V

    .line 197
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 199
    :cond_1ea
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/InputDevice$MotionState;->downTime:J

    move-wide/from16 v17, v0

    const/16 v21, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->xPrecision:I

    move v3, v0

    move v0, v3

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->yPrecision:I

    move v3, v0

    move v0, v3

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/InputDevice;->id:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/InputDevice$MotionState;->scanCode:I

    move/from16 v31, v0

    move-wide/from16 v19, p2

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, p7

    move/from16 v30, v16

    invoke-static/range {v17 .. v31}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFIII)Landroid/view/MotionEvent;

    move-result-object v33

    .line 203
    .local v33, me:Landroid/view/MotionEvent;
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/InputDevice$MotionState;->currentMove:Landroid/view/MotionEvent;

    move-object/from16 v3, v33

    .line 204
    goto/16 :goto_8

    .line 116
    :pswitch_data_22c
    .packed-switch 0x1
        :pswitch_15e
        :pswitch_169
        :pswitch_177
    .end packed-switch

    .line 148
    :pswitch_data_236
    .packed-switch 0x1
        :pswitch_1b4
        :pswitch_1bd
        :pswitch_1c1
    .end packed-switch
.end method
