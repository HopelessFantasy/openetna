.class public Lcom/android/commands/monkey/MonkeyMotionEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyMotionEvent.java"


# instance fields
.field private mAction:I

.field private mDeviceId:I

.field private mDownTime:J

.field private mEdgeFlags:I

.field private mEventTime:J

.field private mIntermediateNote:Z

.field private mMetaState:I

.field private mPressure:F

.field private mSize:F

.field private mX:F

.field private mXPrecision:F

.field private mY:F

.field private mYPrecision:F


# direct methods
.method public constructor <init>(IJIFFI)V
    .registers 12
    .parameter "type"
    .parameter "downAt"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "metaState"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    const/high16 v0, -0x4080

    .line 49
    invoke-direct {p0, p1}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 31
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    .line 32
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    .line 33
    iput v1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    .line 34
    iput v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mX:F

    .line 35
    iput v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mY:F

    .line 36
    iput v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPressure:F

    .line 37
    iput v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mSize:F

    .line 38
    iput v1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mMetaState:I

    .line 39
    iput v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mXPrecision:F

    .line 40
    iput v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mYPrecision:F

    .line 41
    iput v1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDeviceId:I

    .line 42
    iput v1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEdgeFlags:I

    .line 50
    iput-wide p2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    .line 51
    iput p4, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    .line 52
    iput p5, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mX:F

    .line 53
    iput p6, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mY:F

    .line 54
    iput p7, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mMetaState:I

    .line 55
    return-void
.end method

.method public constructor <init>(IJJIFFFFIFFII)V
    .registers 20
    .parameter "type"
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "metaState"
    .parameter "xPrecision"
    .parameter "yPrecision"
    .parameter "deviceId"
    .parameter "edgeFlags"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 31
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    .line 32
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    .line 33
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    .line 34
    const/high16 v2, -0x4080

    iput v2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mX:F

    .line 35
    const/high16 v2, -0x4080

    iput v2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mY:F

    .line 36
    const/high16 v2, -0x4080

    iput v2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPressure:F

    .line 37
    const/high16 v2, -0x4080

    iput v2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mSize:F

    .line 38
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mMetaState:I

    .line 39
    const/high16 v2, -0x4080

    iput v2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mXPrecision:F

    .line 40
    const/high16 v2, -0x4080

    iput v2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mYPrecision:F

    .line 41
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDeviceId:I

    .line 42
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEdgeFlags:I

    .line 61
    iput-wide p2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    .line 62
    iput-wide p4, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    .line 63
    iput p6, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    .line 64
    iput p7, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mX:F

    .line 65
    iput p8, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mY:F

    .line 66
    iput p9, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPressure:F

    .line 67
    iput p10, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mSize:F

    .line 68
    iput p11, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mMetaState:I

    .line 69
    move/from16 v0, p12

    move-object v1, p0

    iput v0, v1, Lcom/android/commands/monkey/MonkeyMotionEvent;->mXPrecision:F

    .line 70
    move/from16 v0, p13

    move-object v1, p0

    iput v0, v1, Lcom/android/commands/monkey/MonkeyMotionEvent;->mYPrecision:F

    .line 71
    move/from16 v0, p14

    move-object v1, p0

    iput v0, v1, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDeviceId:I

    .line 72
    move/from16 v0, p15

    move-object v1, p0

    iput v0, v1, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEdgeFlags:I

    .line 73
    return-void
.end method

.method private getEvent()Landroid/view/MotionEvent;
    .registers 15

    .prologue
    .line 116
    iget v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDeviceId:I

    if-gez v0, :cond_17

    .line 117
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    iget v5, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mX:F

    iget v6, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mY:F

    iget v7, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mMetaState:I

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 122
    :goto_16
    return-object v0

    :cond_17
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    iget v4, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    iget v5, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mX:F

    iget v6, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mY:F

    iget v7, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mPressure:F

    iget v8, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mSize:F

    iget v9, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mMetaState:I

    iget v10, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mXPrecision:F

    iget v11, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mYPrecision:F

    iget v12, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDeviceId:I

    iget v13, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEdgeFlags:I

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    goto :goto_16
.end method


# virtual methods
.method public getAction()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    return v0
.end method

.method public getDownTime()J
    .registers 3

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    return-wide v0
.end method

.method public getEventTime()J
    .registers 3

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    return-wide v0
.end method

.method public getIntermediateNote()Z
    .registers 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mIntermediateNote:Z

    return v0
.end method

.method public getX()F
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mX:F

    return v0
.end method

.method public getY()F
    .registers 2

    .prologue
    .line 88
    iget v0, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mY:F

    return v0
.end method

.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .registers 13
    .parameter "iwm"
    .parameter "iam"
    .parameter "verbose"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 136
    if-lez p3, :cond_8

    iget-boolean v4, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mIntermediateNote:Z

    if-eqz v4, :cond_a

    :cond_8
    if-le p3, v7, :cond_40

    .line 137
    :cond_a
    iget v4, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    if-nez v4, :cond_5d

    .line 138
    const-string v2, "DOWN"

    .line 144
    .local v2, note:Ljava/lang/String;
    :goto_10
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ":Sending Pointer ACTION_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mX:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mY:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    .end local v2           #note:Ljava/lang/String;
    :cond_40
    :try_start_40
    invoke-virtual {p0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getEventType()I

    move-result v3

    .line 149
    .local v3, type:I
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getEvent()Landroid/view/MotionEvent;

    move-result-object v1

    .line 151
    .local v1, me:Landroid/view/MotionEvent;
    if-ne v3, v7, :cond_51

    const/4 v4, 0x0

    invoke-interface {p1, v1, v4}, Landroid/view/IWindowManager;->injectPointerEvent(Landroid/view/MotionEvent;Z)Z

    move-result v4

    if-eqz v4, :cond_5b

    :cond_51
    const/4 v4, 0x2

    if-ne v3, v4, :cond_6b

    const/4 v4, 0x0

    invoke-interface {p1, v1, v4}, Landroid/view/IWindowManager;->injectTrackballEvent(Landroid/view/MotionEvent;Z)Z
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_58} :catch_67

    move-result v4

    if-nez v4, :cond_6b

    :cond_5b
    move v4, v8

    .line 160
    .end local v1           #me:Landroid/view/MotionEvent;
    .end local v3           #type:I
    :goto_5c
    return v4

    .line 139
    :cond_5d
    iget v4, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mAction:I

    if-ne v4, v7, :cond_64

    .line 140
    const-string v2, "UP"

    .restart local v2       #note:Ljava/lang/String;
    goto :goto_10

    .line 142
    .end local v2           #note:Ljava/lang/String;
    :cond_64
    const-string v2, "MOVE"

    .restart local v2       #note:Ljava/lang/String;
    goto :goto_10

    .line 157
    .end local v2           #note:Ljava/lang/String;
    :catch_67
    move-exception v4

    move-object v0, v4

    .line 158
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v4, -0x1

    goto :goto_5c

    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v1       #me:Landroid/view/MotionEvent;
    .restart local v3       #type:I
    :cond_6b
    move v4, v7

    .line 160
    goto :goto_5c
.end method

.method public isThrottlable()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 129
    invoke-virtual {p0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public setDownTime(J)V
    .registers 3
    .parameter "downTime"

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mDownTime:J

    .line 105
    return-void
.end method

.method public setEventTime(J)V
    .registers 3
    .parameter "eventTime"

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mEventTime:J

    .line 109
    return-void
.end method

.method public setIntermediateNote(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/commands/monkey/MonkeyMotionEvent;->mIntermediateNote:Z

    .line 77
    return-void
.end method
