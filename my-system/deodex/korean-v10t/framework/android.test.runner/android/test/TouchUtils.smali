.class public Landroid/test/TouchUtils;
.super Ljava/lang/Object;
.source "TouchUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clickView(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V
    .registers 20
    .parameter "test"
    .parameter "v"

    .prologue
    .line 327
    const/4 v2, 0x2

    new-array v4, v2, [I

    .line 328
    .local v4, xy:[I
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 330
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 331
    .local v3, viewWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 333
    .local v2, viewHeight:I
    const/4 v5, 0x0

    aget v5, v4, v5

    int-to-float v5, v5

    int-to-float v3, v3

    const/high16 v6, 0x4000

    div-float/2addr v3, v6

    add-float v7, v5, v3

    .line 334
    .local v7, x:F
    const/4 v3, 0x1

    aget v3, v4, v3

    .end local v3           #viewWidth:I
    int-to-float v3, v3

    int-to-float v2, v2

    const/high16 v4, 0x4000

    div-float/2addr v2, v4

    add-float v8, v3, v2

    .line 336
    .local v8, y:F
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    .end local v2           #viewHeight:I
    .end local v4           #xy:[I
    move-result-object v17

    .line 338
    .local v17, inst:Landroid/app/Instrumentation;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 339
    .local v2, downTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 341
    .local v4, eventTime:J
    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    .line 343
    .local p0, event:Landroid/view/MotionEvent;
    invoke-virtual/range {v17 .. v18}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 344
    invoke-virtual/range {v17 .. v17}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 347
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 348
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0           #event:Landroid/view/MotionEvent;
    invoke-static/range {p0 .. p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    .line 349
    .local p0, touchSlop:I
    const/4 v13, 0x2

    move/from16 v0, p0

    int-to-float v0, v0

    move/from16 p1, v0

    const/high16 v6, 0x4000

    div-float p1, p1, v6

    add-float v14, v7, p1

    move/from16 v0, p0

    int-to-float v0, v0

    move/from16 p0, v0

    const/high16 p1, 0x4000

    div-float p0, p0, p1

    add-float v15, v8, p0

    const/16 v16, 0x0

    move-wide v9, v2

    move-wide v11, v4

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .end local p0           #touchSlop:I
    .end local p1
    move-result-object p0

    .line 351
    .local p0, event:Landroid/view/MotionEvent;
    invoke-virtual/range {v17 .. v18}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 352
    invoke-virtual/range {v17 .. v17}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 354
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 355
    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    .line 356
    invoke-virtual/range {v17 .. v18}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 357
    invoke-virtual/range {v17 .. v17}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 360
    const-wide/16 p0, 0x3e8

    :try_start_84
    invoke-static/range {p0 .. p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_87
    .catch Ljava/lang/InterruptedException; {:try_start_84 .. :try_end_87} :catch_88

    .line 364
    .end local p0           #event:Landroid/view/MotionEvent;
    :goto_87
    return-void

    .line 361
    :catch_88
    move-exception p0

    .line 362
    .local p0, e:Ljava/lang/InterruptedException;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_87
.end method

.method public static drag(Landroid/test/ActivityInstrumentationTestCase;FFFFI)V
    .registers 6
    .parameter "test"
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"
    .parameter "stepCount"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 748
    invoke-static/range {p0 .. p5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 749
    return-void
.end method

.method public static drag(Landroid/test/InstrumentationTestCase;FFFFI)V
    .registers 24
    .parameter "test"
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"
    .parameter "stepCount"

    .prologue
    .line 763
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v17

    .line 765
    .local v17, inst:Landroid/app/Instrumentation;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 766
    .local v2, downTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 768
    .local v4, eventTime:J
    move/from16 v8, p3

    .line 769
    .local v8, y:F
    move/from16 v10, p1

    .line 771
    .local v10, x:F
    sub-float p0, p4, p3

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 p3, v0

    div-float p4, p0, p3

    .line 772
    .local p4, yStep:F
    sub-float p0, p2, p1

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 p2, v0

    div-float p3, p0, p2

    .line 774
    .local p3, xStep:F
    const/4 v6, 0x0

    const/4 v9, 0x0

    move/from16 v7, p1

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .end local p0
    .end local p2
    move-result-object p0

    .line 776
    .local p0, event:Landroid/view/MotionEvent;
    invoke-virtual/range {v17 .. v18}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 777
    invoke-virtual/range {v17 .. v17}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 779
    const/16 p2, 0x0

    .local p2, i:I
    move v7, v10

    .end local v10           #x:F
    .local v7, x:F
    :goto_33
    move/from16 v0, p2

    move/from16 v1, p5

    if-ge v0, v1, :cond_50

    .line 780
    add-float v8, v8, p4

    .line 781
    add-float v7, v7, p3

    .line 782
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 783
    const/4 v6, 0x2

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    .line 784
    invoke-virtual/range {v17 .. v18}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 785
    invoke-virtual/range {v17 .. v17}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 779
    add-int/lit8 p2, p2, 0x1

    goto :goto_33

    .line 788
    :cond_50
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 789
    const/4 v13, 0x1

    const/16 v16, 0x0

    move-wide v9, v2

    move-wide v11, v4

    move/from16 v14, p1

    move v15, v8

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    .line 790
    invoke-virtual/range {v17 .. v18}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 791
    invoke-virtual/range {v17 .. v17}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 792
    return-void
.end method

.method public static dragQuarterScreenDown(Landroid/test/ActivityInstrumentationTestCase;)V
    .registers 2
    .parameter "test"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/TouchUtils;->dragQuarterScreenDown(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V

    .line 47
    return-void
.end method

.method public static dragQuarterScreenDown(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V
    .registers 11
    .parameter "test"
    .parameter "activity"

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 56
    .local v6, display:Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v7

    .line 57
    .local v7, screenHeight:I
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v8

    .line 59
    .local v8, screenWidth:I
    int-to-float v0, v8

    const/high16 v2, 0x4000

    div-float v1, v0, v2

    .line 60
    .local v1, x:F
    int-to-float v0, v7

    const/high16 v2, 0x3f00

    mul-float v3, v0, v2

    .line 61
    .local v3, fromY:F
    int-to-float v0, v7

    const/high16 v2, 0x3f40

    mul-float v4, v0, v2

    .line 63
    .local v4, toY:F
    const/4 v5, 0x4

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 64
    return-void
.end method

.method public static dragQuarterScreenUp(Landroid/test/ActivityInstrumentationTestCase;)V
    .registers 2
    .parameter "test"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/test/TouchUtils;->dragQuarterScreenUp(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V

    .line 77
    return-void
.end method

.method public static dragQuarterScreenUp(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V
    .registers 11
    .parameter "test"
    .parameter "activity"

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 86
    .local v6, display:Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v7

    .line 87
    .local v7, screenHeight:I
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v8

    .line 89
    .local v8, screenWidth:I
    int-to-float v0, v8

    const/high16 v2, 0x4000

    div-float v1, v0, v2

    .line 90
    .local v1, x:F
    int-to-float v0, v7

    const/high16 v2, 0x3f00

    mul-float v3, v0, v2

    .line 91
    .local v3, fromY:F
    int-to-float v0, v7

    const/high16 v2, 0x3e80

    mul-float v4, v0, v2

    .line 93
    .local v4, toY:F
    const/4 v5, 0x4

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 94
    return-void
.end method

.method public static dragViewBy(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;III)I
    .registers 6
    .parameter "test"
    .parameter "v"
    .parameter "gravity"
    .parameter "deltaX"
    .parameter "deltaY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 549
    invoke-static {p0, p1, p2, p3, p4}, Landroid/test/TouchUtils;->dragViewBy(Landroid/test/InstrumentationTestCase;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method public static dragViewBy(Landroid/test/InstrumentationTestCase;Landroid/view/View;III)I
    .registers 14
    .parameter "test"
    .parameter "v"
    .parameter "gravity"
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 570
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 572
    .local v8, xy:[I
    invoke-static {p1, p2, v8}, Landroid/test/TouchUtils;->getStartLocation(Landroid/view/View;I[I)V

    .line 574
    const/4 v0, 0x0

    aget v6, v8, v0

    .line 575
    .local v6, fromX:I
    const/4 v0, 0x1

    aget v7, v8, v0

    .line 577
    .local v7, fromY:I
    mul-int v0, p3, p3

    mul-int v1, p4, p4

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v5, v0

    .line 579
    .local v5, distance:I
    int-to-float v1, v6

    add-int v0, v6, p3

    int-to-float v2, v0

    int-to-float v3, v7

    add-int v0, v7, p4

    int-to-float v4, v0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 581
    return v5
.end method

.method public static dragViewTo(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;III)I
    .registers 6
    .parameter "test"
    .parameter "v"
    .parameter "gravity"
    .parameter "toX"
    .parameter "toY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 603
    invoke-static {p0, p1, p2, p3, p4}, Landroid/test/TouchUtils;->dragViewTo(Landroid/test/InstrumentationTestCase;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method public static dragViewTo(Landroid/test/InstrumentationTestCase;Landroid/view/View;III)I
    .registers 16
    .parameter "test"
    .parameter "v"
    .parameter "gravity"
    .parameter "toX"
    .parameter "toY"

    .prologue
    .line 620
    const/4 v0, 0x2

    new-array v10, v0, [I

    .line 622
    .local v10, xy:[I
    invoke-static {p1, p2, v10}, Landroid/test/TouchUtils;->getStartLocation(Landroid/view/View;I[I)V

    .line 624
    const/4 v0, 0x0

    aget v8, v10, v0

    .line 625
    .local v8, fromX:I
    const/4 v0, 0x1

    aget v9, v10, v0

    .line 627
    .local v9, fromY:I
    sub-int v6, v8, p3

    .line 628
    .local v6, deltaX:I
    sub-int v7, v9, p4

    .line 630
    .local v7, deltaY:I
    mul-int v0, v6, v6

    mul-int v1, v7, v7

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v5, v0

    .line 631
    .local v5, distance:I
    int-to-float v1, v8

    int-to-float v2, p3

    int-to-float v3, v9

    int-to-float v4, p4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 633
    return v5
.end method

.method public static dragViewToBottom(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;)V
    .registers 4
    .parameter "test"
    .parameter "v"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p0, v0, p1, v1}, Landroid/test/TouchUtils;->dragViewToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/View;I)V

    .line 190
    return-void
.end method

.method public static dragViewToBottom(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;I)V
    .registers 4
    .parameter "test"
    .parameter "v"
    .parameter "stepCount"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Landroid/test/TouchUtils;->dragViewToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/View;I)V

    .line 218
    return-void
.end method

.method public static dragViewToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/View;)V
    .registers 4
    .parameter "test"
    .parameter "activity"
    .parameter "v"

    .prologue
    .line 200
    const/4 v0, 0x4

    invoke-static {p0, p1, p2, v0}, Landroid/test/TouchUtils;->dragViewToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/View;I)V

    .line 201
    return-void
.end method

.method public static dragViewToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/View;I)V
    .registers 15
    .parameter "test"
    .parameter "activity"
    .parameter "v"
    .parameter "stepCount"

    .prologue
    const/4 v10, 0x1

    const/high16 v5, 0x4000

    .line 230
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    .line 232
    .local v6, screenHeight:I
    const/4 v0, 0x2

    new-array v9, v0, [I

    .line 233
    .local v9, xy:[I
    invoke-virtual {p2, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 235
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 236
    .local v8, viewWidth:I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 238
    .local v7, viewHeight:I
    const/4 v0, 0x0

    aget v0, v9, v0

    int-to-float v0, v0

    int-to-float v2, v8

    div-float/2addr v2, v5

    add-float v1, v0, v2

    .line 239
    .local v1, x:F
    aget v0, v9, v10

    int-to-float v0, v0

    int-to-float v2, v7

    div-float/2addr v2, v5

    add-float v3, v0, v2

    .line 240
    .local v3, fromY:F
    sub-int v0, v6, v10

    int-to-float v4, v0

    .local v4, toY:F
    move-object v0, p0

    move v2, v1

    move v5, p3

    .line 242
    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 243
    return-void
.end method

.method public static dragViewToTop(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;)V
    .registers 3
    .parameter "test"
    .parameter "v"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 438
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Landroid/test/TouchUtils;->dragViewToTop(Landroid/test/InstrumentationTestCase;Landroid/view/View;I)V

    .line 439
    return-void
.end method

.method public static dragViewToTop(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;I)V
    .registers 3
    .parameter "test"
    .parameter "v"
    .parameter "stepCount"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 454
    invoke-static {p0, p1, p2}, Landroid/test/TouchUtils;->dragViewToTop(Landroid/test/InstrumentationTestCase;Landroid/view/View;I)V

    .line 455
    return-void
.end method

.method public static dragViewToTop(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V
    .registers 3
    .parameter "test"
    .parameter "v"

    .prologue
    .line 464
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Landroid/test/TouchUtils;->dragViewToTop(Landroid/test/InstrumentationTestCase;Landroid/view/View;I)V

    .line 465
    return-void
.end method

.method public static dragViewToTop(Landroid/test/InstrumentationTestCase;Landroid/view/View;I)V
    .registers 12
    .parameter "test"
    .parameter "v"
    .parameter "stepCount"

    .prologue
    const/high16 v5, 0x4000

    .line 475
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 476
    .local v8, xy:[I
    invoke-virtual {p1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 479
    .local v7, viewWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 481
    .local v6, viewHeight:I
    const/4 v0, 0x0

    aget v0, v8, v0

    int-to-float v0, v0

    int-to-float v2, v7

    div-float/2addr v2, v5

    add-float v1, v0, v2

    .line 482
    .local v1, x:F
    const/4 v0, 0x1

    aget v0, v8, v0

    int-to-float v0, v0

    int-to-float v2, v6

    div-float/2addr v2, v5

    add-float v3, v0, v2

    .line 483
    .local v3, fromY:F
    const/4 v4, 0x0

    .local v4, toY:F
    move-object v0, p0

    move v2, v1

    move v5, p2

    .line 485
    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 486
    return-void
.end method

.method public static dragViewToX(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;II)I
    .registers 5
    .parameter "test"
    .parameter "v"
    .parameter "gravity"
    .parameter "toX"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 654
    invoke-static {p0, p1, p2, p3}, Landroid/test/TouchUtils;->dragViewToX(Landroid/test/InstrumentationTestCase;Landroid/view/View;II)I

    move-result v0

    return v0
.end method

.method public static dragViewToX(Landroid/test/InstrumentationTestCase;Landroid/view/View;II)I
    .registers 13
    .parameter "test"
    .parameter "v"
    .parameter "gravity"
    .parameter "toX"

    .prologue
    .line 669
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 671
    .local v8, xy:[I
    invoke-static {p1, p2, v8}, Landroid/test/TouchUtils;->getStartLocation(Landroid/view/View;I[I)V

    .line 673
    const/4 v0, 0x0

    aget v6, v8, v0

    .line 674
    .local v6, fromX:I
    const/4 v0, 0x1

    aget v7, v8, v0

    .line 676
    .local v7, fromY:I
    sub-int v5, v6, p3

    .line 678
    .local v5, deltaX:I
    int-to-float v1, v6

    int-to-float v2, p3

    int-to-float v3, v7

    int-to-float v4, v7

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 680
    return v5
.end method

.method public static dragViewToY(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;II)I
    .registers 5
    .parameter "test"
    .parameter "v"
    .parameter "gravity"
    .parameter "toY"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 701
    invoke-static {p0, p1, p2, p3}, Landroid/test/TouchUtils;->dragViewToY(Landroid/test/InstrumentationTestCase;Landroid/view/View;II)I

    move-result v0

    return v0
.end method

.method public static dragViewToY(Landroid/test/InstrumentationTestCase;Landroid/view/View;II)I
    .registers 13
    .parameter "test"
    .parameter "v"
    .parameter "gravity"
    .parameter "toY"

    .prologue
    .line 716
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 718
    .local v8, xy:[I
    invoke-static {p1, p2, v8}, Landroid/test/TouchUtils;->getStartLocation(Landroid/view/View;I[I)V

    .line 720
    const/4 v0, 0x0

    aget v6, v8, v0

    .line 721
    .local v6, fromX:I
    const/4 v0, 0x1

    aget v7, v8, v0

    .line 723
    .local v7, fromY:I
    sub-int v5, v7, p3

    .line 725
    .local v5, deltaY:I
    int-to-float v1, v6

    int-to-float v2, v6

    int-to-float v3, v7

    int-to-float v4, p3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/test/TouchUtils;->drag(Landroid/test/InstrumentationTestCase;FFFFI)V

    .line 727
    return v5
.end method

.method private static getStartLocation(Landroid/view/View;I[I)V
    .registers 9
    .parameter "v"
    .parameter "gravity"
    .parameter "xy"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 498
    invoke-virtual {p0, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 500
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 501
    .local v1, viewWidth:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 503
    .local v0, viewHeight:I
    and-int/lit8 v2, p1, 0x70

    sparse-switch v2, :sswitch_data_38

    .line 516
    :goto_12
    :sswitch_12
    and-int/lit8 v2, p1, 0x7

    packed-switch v2, :pswitch_data_46

    .line 528
    :goto_17
    :pswitch_17
    return-void

    .line 507
    :sswitch_18
    aget v2, p2, v4

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    aput v2, p2, v4

    goto :goto_12

    .line 510
    :sswitch_20
    aget v2, p2, v4

    sub-int v3, v0, v4

    add-int/2addr v2, v3

    aput v2, p2, v4

    goto :goto_12

    .line 520
    :pswitch_28
    aget v2, p2, v5

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    aput v2, p2, v5

    goto :goto_17

    .line 523
    :pswitch_30
    aget v2, p2, v5

    sub-int v3, v1, v4

    add-int/2addr v2, v3

    aput v2, p2, v5

    goto :goto_17

    .line 503
    :sswitch_data_38
    .sparse-switch
        0x10 -> :sswitch_18
        0x30 -> :sswitch_12
        0x50 -> :sswitch_20
    .end sparse-switch

    .line 516
    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_28
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_30
    .end packed-switch
.end method

.method public static longClickView(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/View;)V
    .registers 2
    .parameter "test"
    .parameter "v"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 378
    invoke-static {p0, p1}, Landroid/test/TouchUtils;->longClickView(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V

    .line 379
    return-void
.end method

.method public static longClickView(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V
    .registers 20
    .parameter "test"
    .parameter "v"

    .prologue
    .line 388
    const/4 v2, 0x2

    new-array v4, v2, [I

    .line 389
    .local v4, xy:[I
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 391
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 392
    .local v3, viewWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 394
    .local v2, viewHeight:I
    const/4 v5, 0x0

    aget v5, v4, v5

    int-to-float v5, v5

    int-to-float v3, v3

    const/high16 v6, 0x4000

    div-float/2addr v3, v6

    add-float v7, v5, v3

    .line 395
    .local v7, x:F
    const/4 v3, 0x1

    aget v3, v4, v3

    .end local v3           #viewWidth:I
    int-to-float v3, v3

    int-to-float v2, v2

    const/high16 v4, 0x4000

    div-float/2addr v2, v4

    add-float v8, v3, v2

    .line 397
    .local v8, y:F
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    .end local v2           #viewHeight:I
    .end local v4           #xy:[I
    move-result-object v17

    .line 399
    .local v17, inst:Landroid/app/Instrumentation;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 400
    .local v2, downTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 402
    .local v4, eventTime:J
    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    .line 404
    .local p0, event:Landroid/view/MotionEvent;
    invoke-virtual/range {v17 .. v18}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 405
    invoke-virtual/range {v17 .. v17}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 407
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 408
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0           #event:Landroid/view/MotionEvent;
    invoke-static/range {p0 .. p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    .line 409
    .local p0, touchSlop:I
    const/4 v13, 0x2

    div-int/lit8 p1, p0, 0x2

    .end local p1
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 p1, v0

    add-float v14, v7, p1

    div-int/lit8 p0, p0, 0x2

    .end local p0           #touchSlop:I
    move/from16 v0, p0

    int-to-float v0, v0

    move/from16 p0, v0

    add-float v15, v8, p0

    const/16 v16, 0x0

    move-wide v9, v2

    move-wide v11, v4

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    .line 411
    .local p0, event:Landroid/view/MotionEvent;
    invoke-virtual/range {v17 .. v18}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 412
    invoke-virtual/range {v17 .. v17}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 415
    :try_start_6e
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p0

    .end local p0           #event:Landroid/view/MotionEvent;
    move/from16 v0, p0

    int-to-float v0, v0

    move/from16 p0, v0

    const/high16 p1, 0x3fc0

    mul-float p0, p0, p1

    move/from16 v0, p0

    float-to-long v0, v0

    move-wide/from16 p0, v0

    invoke-static/range {p0 .. p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_83
    .catch Ljava/lang/InterruptedException; {:try_start_6e .. :try_end_83} :catch_94

    .line 420
    :goto_83
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 421
    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    .line 422
    .restart local p0       #event:Landroid/view/MotionEvent;
    invoke-virtual/range {v17 .. v18}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 423
    invoke-virtual/range {v17 .. v17}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 424
    return-void

    .line 416
    .end local p0           #event:Landroid/view/MotionEvent;
    :catch_94
    move-exception p0

    .line 417
    .local p0, e:Ljava/lang/InterruptedException;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_83
.end method

.method public static scrollToBottom(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/ViewGroup;)V
    .registers 3
    .parameter "test"
    .parameter "v"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/test/TouchUtils;->scrollToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 110
    return-void
.end method

.method public static scrollToBottom(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 9
    .parameter "test"
    .parameter "activity"
    .parameter "v"

    .prologue
    .line 123
    const/high16 v1, -0x8000

    .line 124
    .local v1, firstId:I
    const/high16 v2, -0x8000

    .line 128
    .local v2, firstTop:I
    :cond_4
    move v3, v1

    .line 129
    .local v3, prevId:I
    move v4, v2

    .line 130
    .local v4, prevTop:I
    invoke-static {p0, p1}, Landroid/test/TouchUtils;->dragQuarterScreenUp(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V

    .line 131
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, firstChild:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    .line 133
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 134
    if-ne v3, v1, :cond_4

    if-ne v4, v2, :cond_4

    .line 135
    return-void
.end method

.method public static scrollToTop(Landroid/test/ActivityInstrumentationTestCase;Landroid/view/ViewGroup;)V
    .registers 3
    .parameter "test"
    .parameter "v"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/test/TouchUtils;->scrollToTop(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 151
    return-void
.end method

.method public static scrollToTop(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .registers 9
    .parameter "test"
    .parameter "activity"
    .parameter "v"

    .prologue
    .line 163
    const/high16 v1, -0x8000

    .line 164
    .local v1, firstId:I
    const/high16 v2, -0x8000

    .line 168
    .local v2, firstTop:I
    :cond_4
    move v3, v1

    .line 169
    .local v3, prevId:I
    move v4, v2

    .line 170
    .local v4, prevTop:I
    invoke-static {p0, p1}, Landroid/test/TouchUtils;->dragQuarterScreenDown(Landroid/test/InstrumentationTestCase;Landroid/app/Activity;)V

    .line 171
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, firstChild:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    .line 173
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 174
    if-ne v3, v1, :cond_4

    if-ne v4, v2, :cond_4

    .line 175
    return-void
.end method

.method public static tapView(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V
    .registers 20
    .parameter "test"
    .parameter "v"

    .prologue
    .line 252
    const/4 v2, 0x2

    new-array v4, v2, [I

    .line 253
    .local v4, xy:[I
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 255
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 256
    .local v3, viewWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 258
    .local v2, viewHeight:I
    const/4 v5, 0x0

    aget v5, v4, v5

    int-to-float v5, v5

    int-to-float v3, v3

    const/high16 v6, 0x4000

    div-float/2addr v3, v6

    add-float v7, v5, v3

    .line 259
    .local v7, x:F
    const/4 v3, 0x1

    aget v3, v4, v3

    .end local v3           #viewWidth:I
    int-to-float v3, v3

    int-to-float v2, v2

    const/high16 v4, 0x4000

    div-float/2addr v2, v4

    add-float v8, v3, v2

    .line 261
    .local v8, y:F
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    .end local v2           #viewHeight:I
    .end local v4           #xy:[I
    move-result-object v17

    .line 263
    .local v17, inst:Landroid/app/Instrumentation;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 264
    .local v2, downTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 266
    .local v4, eventTime:J
    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    .line 268
    .local p0, event:Landroid/view/MotionEvent;
    invoke-virtual/range {v17 .. v18}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 269
    invoke-virtual/range {v17 .. v17}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 271
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 272
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0           #event:Landroid/view/MotionEvent;
    invoke-static/range {p0 .. p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    .line 273
    .local p0, touchSlop:I
    const/4 v13, 0x2

    move/from16 v0, p0

    int-to-float v0, v0

    move/from16 p1, v0

    const/high16 v6, 0x4000

    div-float p1, p1, v6

    add-float v14, v7, p1

    move/from16 v0, p0

    int-to-float v0, v0

    move/from16 p0, v0

    const/high16 p1, 0x4000

    div-float p0, p0, p1

    add-float v15, v8, p0

    const/16 v16, 0x0

    move-wide v9, v2

    move-wide v11, v4

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .end local p0           #touchSlop:I
    .end local p1
    move-result-object p0

    .line 275
    .local p0, event:Landroid/view/MotionEvent;
    invoke-virtual/range {v17 .. v18}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 276
    invoke-virtual/range {v17 .. v17}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 278
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 279
    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    .line 280
    invoke-virtual/range {v17 .. v18}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 281
    invoke-virtual/range {v17 .. v17}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 282
    return-void
.end method

.method public static touchAndCancelView(Landroid/test/InstrumentationTestCase;Landroid/view/View;)V
    .registers 20
    .parameter "test"
    .parameter "v"

    .prologue
    .line 292
    const/4 v2, 0x2

    new-array v4, v2, [I

    .line 293
    .local v4, xy:[I
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 295
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 296
    .local v3, viewWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 298
    .local v2, viewHeight:I
    const/4 v5, 0x0

    aget v5, v4, v5

    int-to-float v5, v5

    int-to-float v3, v3

    const/high16 v6, 0x4000

    div-float/2addr v3, v6

    add-float v7, v5, v3

    .line 299
    .local v7, x:F
    const/4 v3, 0x1

    aget v3, v4, v3

    .end local v3           #viewWidth:I
    int-to-float v3, v3

    int-to-float v2, v2

    const/high16 v4, 0x4000

    div-float/2addr v2, v4

    add-float v8, v3, v2

    .line 301
    .local v8, y:F
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    .end local v2           #viewHeight:I
    .end local v4           #xy:[I
    move-result-object v17

    .line 303
    .local v17, inst:Landroid/app/Instrumentation;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 304
    .local v2, downTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 306
    .local v4, eventTime:J
    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    .line 308
    .local p0, event:Landroid/view/MotionEvent;
    invoke-virtual/range {v17 .. v18}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 309
    invoke-virtual/range {v17 .. v17}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 311
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 312
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0           #event:Landroid/view/MotionEvent;
    invoke-static/range {p0 .. p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p0

    .line 313
    .local p0, touchSlop:I
    const/4 v13, 0x3

    move/from16 v0, p0

    int-to-float v0, v0

    move/from16 p1, v0

    const/high16 v6, 0x4000

    div-float p1, p1, v6

    add-float v14, v7, p1

    move/from16 v0, p0

    int-to-float v0, v0

    move/from16 p0, v0

    const/high16 p1, 0x4000

    div-float p0, p0, p1

    add-float v15, v8, p0

    const/16 v16, 0x0

    move-wide v9, v2

    move-wide v11, v4

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .end local p0           #touchSlop:I
    .end local p1
    move-result-object p0

    .line 315
    .local p0, event:Landroid/view/MotionEvent;
    invoke-virtual/range {v17 .. v18}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 316
    invoke-virtual/range {v17 .. v17}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 318
    return-void
.end method
