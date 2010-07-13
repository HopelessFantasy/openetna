.class public Lcom/android/commands/monkey/MonkeySourceScript;
.super Ljava/lang/Object;
.source "MonkeySourceScript.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeyEventSource;


# static fields
.field private static final EVENT_KEYWORD_FLIP:Ljava/lang/String; = "DispatchFlip"

.field private static final EVENT_KEYWORD_KEY:Ljava/lang/String; = "DispatchKey"

.field private static final EVENT_KEYWORD_POINTER:Ljava/lang/String; = "DispatchPointer"

.field private static final EVENT_KEYWORD_TRACKBALL:Ljava/lang/String; = "DispatchTrackball"

.field private static final HEADER_COUNT:Ljava/lang/String; = "count="

.field private static final HEADER_SPEED:Ljava/lang/String; = "speed="

.field private static final HEADER_TYPE:Ljava/lang/String; = "type="

.field private static final MAX_ONE_TIME_READS:I = 0x64

.field private static final POLICY_ADDITIONAL_EVENT_COUNT:I = 0x2

.field private static final SLEEP_COMPENSATE_DIFF:J = 0x10L

.field private static final STARTING_DATA_LINE:Ljava/lang/String; = "start data >>"

.field private static final THIS_DEBUG:Z


# instance fields
.field mBufferReader:Ljava/io/BufferedReader;

.field private mEventCountInScript:I

.field mFStream:Ljava/io/FileInputStream;

.field private mFileOpened:Z

.field mInputStream:Ljava/io/DataInputStream;

.field private mLastExportDownTimeKey:J

.field private mLastExportDownTimeMotion:J

.field private mLastExportEventTime:J

.field private mLastRecordedDownTimeKey:J

.field private mLastRecordedDownTimeMotion:J

.field private mLastRecordedEventTime:J

.field private mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

.field private mScriptFileName:Ljava/lang/String;

.field private mSpeed:D

.field private mVerbose:I


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 11
    .parameter "filename"
    .parameter "throttle"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I

    .line 47
    iput v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    .line 48
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    .line 56
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    .line 57
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    .line 58
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    .line 59
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    .line 60
    iput-wide v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    .line 61
    iput-wide v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    .line 83
    iput-boolean v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    .line 90
    iput-object p1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptFileName:Ljava/lang/String;

    .line 91
    new-instance v0, Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-direct {v0, p2, p3}, Lcom/android/commands/monkey/MonkeyEventQueue;-><init>(J)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    .line 92
    return-void
.end method

.method private addHomeKeyEvent()V
    .registers 4

    .prologue
    const/4 v2, 0x3

    .line 248
    new-instance v0, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 250
    .local v0, e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v1, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 251
    new-instance v0, Lcom/android/commands/monkey/MonkeyKeyEvent;

    .end local v0           #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 252
    .restart local v0       #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v1, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 253
    return-void
.end method

.method private adjustKeyEventTime(Lcom/android/commands/monkey/MonkeyKeyEvent;)V
    .registers 12
    .parameter "e"

    .prologue
    const-wide/16 v8, 0x0

    .line 340
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-gez v6, :cond_b

    .line 369
    :goto_a
    return-void

    .line 343
    :cond_b
    const-wide/16 v2, 0x0

    .line 344
    .local v2, thisDownTime:J
    const-wide/16 v4, 0x0

    .line 345
    .local v4, thisEventTime:J
    const-wide/16 v0, 0x0

    .line 347
    .local v0, expectedDelay:J
    iget-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_33

    .line 349
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 350
    move-wide v4, v2

    .line 363
    :goto_1c
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    .line 364
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    .line 365
    invoke-virtual {p1, v2, v3}, Lcom/android/commands/monkey/MonkeyKeyEvent;->setDownTime(J)V

    .line 366
    invoke-virtual {p1, v4, v5}, Lcom/android/commands/monkey/MonkeyKeyEvent;->setEventTime(J)V

    .line 367
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    .line 368
    iput-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    goto :goto_a

    .line 352
    :cond_33
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_59

    .line 353
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    move-result-wide v2

    .line 357
    :goto_41
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    mul-double/2addr v6, v8

    double-to-long v0, v6

    .line 359
    iget-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    add-long v4, v6, v0

    .line 361
    const-wide/16 v6, 0x10

    sub-long v6, v0, v6

    invoke-direct {p0, v6, v7}, Lcom/android/commands/monkey/MonkeySourceScript;->needSleep(J)V

    goto :goto_1c

    .line 355
    :cond_59
    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    goto :goto_41
.end method

.method private adjustMotionEventTime(Lcom/android/commands/monkey/MonkeyMotionEvent;)V
    .registers 12
    .parameter "e"

    .prologue
    const-wide/16 v8, 0x0

    .line 377
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getEventTime()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-gez v6, :cond_b

    .line 407
    :goto_a
    return-void

    .line 380
    :cond_b
    const-wide/16 v2, 0x0

    .line 381
    .local v2, thisDownTime:J
    const-wide/16 v4, 0x0

    .line 382
    .local v4, thisEventTime:J
    const-wide/16 v0, 0x0

    .line 384
    .local v0, expectedDelay:J
    iget-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_33

    .line 386
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 387
    move-wide v4, v2

    .line 401
    :goto_1c
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    .line 402
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    .line 403
    invoke-virtual {p1, v2, v3}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)V

    .line 404
    invoke-virtual {p1, v4, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)V

    .line 405
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    .line 406
    iput-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    goto :goto_a

    .line 389
    :cond_33
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getDownTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_59

    .line 390
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getDownTime()J

    move-result-wide v2

    .line 394
    :goto_41
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    mul-double/2addr v6, v8

    double-to-long v0, v6

    .line 396
    iget-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    add-long v4, v6, v0

    .line 398
    const-wide/16 v6, 0x10

    sub-long v6, v0, v6

    invoke-direct {p0, v6, v7}, Lcom/android/commands/monkey/MonkeySourceScript;->needSleep(J)V

    goto :goto_1c

    .line 392
    :cond_59
    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    goto :goto_41
.end method

.method private closeFile()V
    .registers 3

    .prologue
    .line 231
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    .line 237
    :try_start_3
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 238
    iget-object v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_e

    .line 242
    :goto_d
    return-void

    .line 239
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 240
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_d
.end method

.method private needSleep(J)V
    .registers 5
    .parameter "time"

    .prologue
    .line 309
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_7

    .line 316
    :goto_6
    return-void

    .line 313
    :cond_7
    :try_start_7
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_6

    .line 314
    :catch_b
    move-exception v0

    goto :goto_6
.end method

.method private processLine(Ljava/lang/String;)V
    .registers 36
    .parameter "s"

    .prologue
    .line 166
    const/16 v14, 0x28

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v30

    .line 167
    .local v30, index1:I
    const/16 v14, 0x29

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v31

    .line 169
    .local v31, index2:I
    if-ltz v30, :cond_16

    if-gez v31, :cond_17

    .line 228
    :cond_16
    :goto_16
    return-void

    .line 173
    :cond_17
    new-instance v33, Ljava/util/StringTokenizer;

    add-int/lit8 v14, v30, 0x1

    move-object/from16 v0, p1

    move v1, v14

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const-string v15, ","

    move-object/from16 v0, v33

    move-object v1, v14

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .local v33, st:Ljava/util/StringTokenizer;
    const-string v14, "DispatchKey"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_88

    .line 179
    :try_start_38
    invoke-virtual/range {v33 .. v33}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 180
    .local v4, downTime:J
    invoke-virtual/range {v33 .. v33}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 181
    .local v6, eventTime:J
    invoke-virtual/range {v33 .. v33}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 182
    .local v8, action:I
    invoke-virtual/range {v33 .. v33}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 183
    .local v9, code:I
    invoke-virtual/range {v33 .. v33}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 184
    .local v10, repeat:I
    invoke-virtual/range {v33 .. v33}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 185
    .local v11, metaState:I
    invoke-virtual/range {v33 .. v33}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 186
    .local v12, device:I
    invoke-virtual/range {v33 .. v33}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 188
    .local v13, scancode:I
    new-instance v3, Lcom/android/commands/monkey/MonkeyKeyEvent;

    invoke-direct/range {v3 .. v13}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(JJIIIIII)V

    .line 190
    .local v3, e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v14, v0

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_85
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_85} :catch_86

    goto :goto_16

    .line 192
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    .end local v4           #downTime:J
    .end local v6           #eventTime:J
    .end local v8           #action:I
    .end local v9           #code:I
    .end local v10           #repeat:I
    .end local v11           #metaState:I
    .end local v12           #device:I
    .end local v13           #scancode:I
    :catch_86
    move-exception v14

    goto :goto_16

    .line 195
    :cond_88
    const-string v14, "DispatchPointer"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-gez v14, :cond_9e

    const-string v14, "DispatchTrackball"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_128

    .line 199
    :cond_9e
    :try_start_9e
    invoke-virtual/range {v33 .. v33}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 200
    .restart local v4       #downTime:J
    invoke-virtual/range {v33 .. v33}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 201
    .restart local v6       #eventTime:J
    invoke-virtual/range {v33 .. v33}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 202
    .restart local v8       #action:I
    invoke-virtual/range {v33 .. v33}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    .line 203
    .local v21, x:F
    invoke-virtual/range {v33 .. v33}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v22

    .line 204
    .local v22, y:F
    invoke-virtual/range {v33 .. v33}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v23

    .line 205
    .local v23, pressure:F
    invoke-virtual/range {v33 .. v33}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    .line 206
    .local v24, size:F
    invoke-virtual/range {v33 .. v33}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 207
    .restart local v11       #metaState:I
    invoke-virtual/range {v33 .. v33}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v26

    .line 208
    .local v26, xPrecision:F
    invoke-virtual/range {v33 .. v33}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v27

    .line 209
    .local v27, yPrecision:F
    invoke-virtual/range {v33 .. v33}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 210
    .restart local v12       #device:I
    invoke-virtual/range {v33 .. v33}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 212
    .local v29, edgeFlags:I
    const/4 v15, 0x2

    .line 213
    .local v15, type:I
    const-string v14, "Pointer"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_10b

    .line 214
    const/4 v15, 0x1

    .line 216
    :cond_10b
    new-instance v3, Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-object v14, v3

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move/from16 v20, v8

    move/from16 v25, v11

    move/from16 v28, v12

    invoke-direct/range {v14 .. v29}, Lcom/android/commands/monkey/MonkeyMotionEvent;-><init>(IJJIFFFFIFFII)V

    .line 219
    .local v3, e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v14, v0

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_123
    .catch Ljava/lang/NumberFormatException; {:try_start_9e .. :try_end_123} :catch_125

    goto/16 :goto_16

    .line 220
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v4           #downTime:J
    .end local v6           #eventTime:J
    .end local v8           #action:I
    .end local v11           #metaState:I
    .end local v12           #device:I
    .end local v15           #type:I
    .end local v21           #x:F
    .end local v22           #y:F
    .end local v23           #pressure:F
    .end local v24           #size:F
    .end local v26           #xPrecision:F
    .end local v27           #yPrecision:F
    .end local v29           #edgeFlags:I
    :catch_125
    move-exception v14

    goto/16 :goto_16

    .line 223
    :cond_128
    const-string v14, "DispatchFlip"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_16

    .line 224
    invoke-virtual/range {v33 .. v33}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v32

    .line 225
    .local v32, keyboardOpen:Z
    new-instance v3, Lcom/android/commands/monkey/MonkeyFlipEvent;

    move-object v0, v3

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/commands/monkey/MonkeyFlipEvent;-><init>(Z)V

    .line 226
    .local v3, e:Lcom/android/commands/monkey/MonkeyFlipEvent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object v14, v0

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_16
.end method

.method private readNextBatch()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 260
    const/4 v3, 0x0

    .line 261
    .local v3, sLine:Ljava/lang/String;
    const/4 v1, 0x0

    .line 267
    .local v1, readCount:I
    iget-boolean v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    if-nez v4, :cond_18

    .line 268
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readScriptHeader()Z

    move-result v4

    if-nez v4, :cond_12

    .line 269
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->closeFile()V

    move v4, v5

    .line 301
    :goto_11
    return v4

    .line 272
    :cond_12
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->resetValue()V

    .line 280
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->addHomeKeyEvent()V

    :cond_18
    move v2, v1

    .line 285
    .end local v1           #readCount:I
    .local v2, readCount:I
    :goto_19
    add-int/lit8 v1, v2, 0x1

    .end local v2           #readCount:I
    .restart local v1       #readCount:I
    const/16 v4, 0x64

    if-ge v2, v4, :cond_39

    :try_start_1f
    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferReader:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 286
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 287
    invoke-direct {p0, v3}, Lcom/android/commands/monkey/MonkeySourceScript;->processLine(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2e} :catch_30

    move v2, v1

    .end local v1           #readCount:I
    .restart local v2       #readCount:I
    goto :goto_19

    .line 289
    .end local v2           #readCount:I
    .restart local v1       #readCount:I
    :catch_30
    move-exception v4

    move-object v0, v4

    .line 290
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    move v4, v5

    .line 291
    goto :goto_11

    .line 294
    .end local v0           #e:Ljava/io/IOException;
    :cond_39
    if-nez v3, :cond_3e

    .line 299
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->closeFile()V

    .line 301
    :cond_3e
    const/4 v4, 0x1

    goto :goto_11
.end method

.method private readScriptHeader()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "speed="

    const-string v2, "count="

    .line 113
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I

    .line 114
    iput-boolean v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    .line 120
    :try_start_b
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptFileName:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    .line 121
    new-instance v2, Ljava/io/DataInputStream;

    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    .line 122
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferReader:Ljava/io/BufferedReader;

    .line 125
    :cond_2b
    :goto_2b
    iget-object v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, sLine:Ljava/lang/String;
    if-eqz v1, :cond_6d

    .line 126
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 127
    const-string v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2b

    .line 129
    const-string v2, "count="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_44} :catch_66
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_44} :catch_96

    move-result v2

    if-ltz v2, :cond_6f

    .line 131
    :try_start_47
    const-string v2, "count="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_47 .. :try_end_5d} :catch_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_47 .. :try_end_5d} :catch_66
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_5d} :catch_96

    goto :goto_2b

    .line 133
    :catch_5e
    move-exception v2

    move-object v0, v2

    .line 134
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_60
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_65
    .catch Ljava/io/FileNotFoundException; {:try_start_60 .. :try_end_65} :catch_66
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_65} :catch_96

    goto :goto_2b

    .line 153
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #sLine:Ljava/lang/String;
    :catch_66
    move-exception v2

    move-object v0, v2

    .line 154
    .local v0, e:Ljava/io/FileNotFoundException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_6d
    :goto_6d
    move v2, v5

    .line 162
    :goto_6e
    return v2

    .line 136
    .restart local v1       #sLine:Ljava/lang/String;
    :cond_6f
    :try_start_6f
    const-string v2, "speed="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/io/FileNotFoundException; {:try_start_6f .. :try_end_74} :catch_66
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_74} :catch_96

    move-result v2

    if-ltz v2, :cond_9e

    .line 138
    :try_start_77
    const-string v2, "speed="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D
    :try_end_8d
    .catch Ljava/lang/NumberFormatException; {:try_start_77 .. :try_end_8d} :catch_8e
    .catch Ljava/io/FileNotFoundException; {:try_start_77 .. :try_end_8d} :catch_66
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_8d} :catch_96

    goto :goto_2b

    .line 141
    :catch_8e
    move-exception v2

    move-object v0, v2

    .line 142
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_90
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_95
    .catch Ljava/io/FileNotFoundException; {:try_start_90 .. :try_end_95} :catch_66
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_95} :catch_96

    goto :goto_2b

    .line 155
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #sLine:Ljava/lang/String;
    :catch_96
    move-exception v2

    move-object v0, v2

    .line 156
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_6d

    .line 144
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #sLine:Ljava/lang/String;
    :cond_9e
    :try_start_9e
    const-string v2, "start data >>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2b

    .line 146
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z
    :try_end_a9
    .catch Ljava/io/FileNotFoundException; {:try_start_9e .. :try_end_a9} :catch_66
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a9} :catch_96

    move v2, v6

    .line 150
    goto :goto_6e
.end method

.method private resetValue()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    const-wide/16 v0, 0x0

    .line 104
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    .line 105
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    .line 106
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    .line 107
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    .line 108
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    .line 109
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    .line 110
    return-void
.end method


# virtual methods
.method public getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;
    .registers 7

    .prologue
    .line 414
    const-wide/16 v2, -0x1

    .line 416
    .local v2, recordedEventTime:J
    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 417
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readNextBatch()Z

    .line 419
    :cond_d
    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/commands/monkey/MonkeyEvent;

    .line 420
    .local v1, e:Lcom/android/commands/monkey/MonkeyEvent;
    iget-object v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v4}, Lcom/android/commands/monkey/MonkeyEventQueue;->removeFirst()Ljava/lang/Object;

    .line 422
    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    move-result v4

    if-nez v4, :cond_28

    .line 423
    move-object v0, v1

    check-cast v0, Lcom/android/commands/monkey/MonkeyKeyEvent;

    move-object v4, v0

    invoke-direct {p0, v4}, Lcom/android/commands/monkey/MonkeySourceScript;->adjustKeyEventTime(Lcom/android/commands/monkey/MonkeyKeyEvent;)V

    .line 428
    :cond_27
    :goto_27
    return-object v1

    .line 424
    :cond_28
    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_36

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_27

    .line 426
    :cond_36
    move-object v0, v1

    check-cast v0, Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-object v4, v0

    invoke-direct {p0, v4}, Lcom/android/commands/monkey/MonkeySourceScript;->adjustMotionEventTime(Lcom/android/commands/monkey/MonkeyMotionEvent;)V

    goto :goto_27
.end method

.method public getOneRoundEventCount()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public setVerbose(I)V
    .registers 2
    .parameter "verbose"

    .prologue
    .line 331
    iput p1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    .line 332
    return-void
.end method

.method public validate()Z
    .registers 6

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readNextBatch()Z

    move-result v0

    .line 323
    .local v0, b:Z
    iget v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    if-lez v1, :cond_2e

    .line 324
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Replaying "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " events with speed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 327
    :cond_2e
    return v0
.end method
