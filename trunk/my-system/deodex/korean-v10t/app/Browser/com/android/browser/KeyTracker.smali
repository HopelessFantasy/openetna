.class Lcom/android/browser/KeyTracker;
.super Ljava/lang/Object;
.source "KeyTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/KeyTracker$OnKeyTracker;,
        Lcom/android/browser/KeyTracker$State;,
        Lcom/android/browser/KeyTracker$Stage;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LONG_PRESS_DURATION_MS:I = 0x0

.field private static final NOT_A_KEYCODE:I = -0x1e240


# instance fields
.field private mEvent:Landroid/view/KeyEvent;

.field private mKeyCode:I

.field private mStartMS:J

.field private mState:Lcom/android/browser/KeyTracker$State;

.field private mTracker:Lcom/android/browser/KeyTracker$OnKeyTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 103
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/android/browser/KeyTracker;->LONG_PRESS_DURATION_MS:I

    return-void
.end method

.method public constructor <init>(Lcom/android/browser/KeyTracker$OnKeyTracker;)V
    .registers 3
    .parameter "tracker"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const v0, -0x1e240

    iput v0, p0, Lcom/android/browser/KeyTracker;->mKeyCode:I

    .line 51
    iput-object p1, p0, Lcom/android/browser/KeyTracker;->mTracker:Lcom/android/browser/KeyTracker$OnKeyTracker;

    .line 52
    return-void
.end method

.method private callTracker(Lcom/android/browser/KeyTracker$Stage;J)V
    .registers 9
    .parameter "stage"
    .parameter "now"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/browser/KeyTracker;->mTracker:Lcom/android/browser/KeyTracker$OnKeyTracker;

    iget v1, p0, Lcom/android/browser/KeyTracker;->mKeyCode:I

    iget-object v2, p0, Lcom/android/browser/KeyTracker;->mEvent:Landroid/view/KeyEvent;

    iget-wide v3, p0, Lcom/android/browser/KeyTracker;->mStartMS:J

    sub-long v3, p2, v3

    long-to-int v3, v3

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/android/browser/KeyTracker$OnKeyTracker;->onKeyTracker(ILandroid/view/KeyEvent;Lcom/android/browser/KeyTracker$Stage;I)Lcom/android/browser/KeyTracker$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/KeyTracker;->mState:Lcom/android/browser/KeyTracker$State;

    .line 90
    return-void
.end method

.method private dump()V
    .registers 7

    .prologue
    .line 93
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/KeyTracker;->mKeyCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/browser/KeyTracker;->mStartMS:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/KeyTracker;->mState:Lcom/android/browser/KeyTracker$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    return-void
.end method


# virtual methods
.method public doKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    .local v0, now:J
    const/4 v2, 0x0

    .line 59
    .local v2, stage:Lcom/android/browser/KeyTracker$Stage;
    iget v3, p0, Lcom/android/browser/KeyTracker;->mKeyCode:I

    if-ne v3, p1, :cond_f

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_24

    .line 60
    :cond_f
    iput p1, p0, Lcom/android/browser/KeyTracker;->mKeyCode:I

    .line 61
    iput-wide v0, p0, Lcom/android/browser/KeyTracker;->mStartMS:J

    .line 62
    sget-object v2, Lcom/android/browser/KeyTracker$Stage;->DOWN:Lcom/android/browser/KeyTracker$Stage;

    .line 68
    :cond_15
    :goto_15
    if-eqz v2, :cond_1c

    .line 69
    iput-object p2, p0, Lcom/android/browser/KeyTracker;->mEvent:Landroid/view/KeyEvent;

    .line 70
    invoke-direct {p0, v2, v0, v1}, Lcom/android/browser/KeyTracker;->callTracker(Lcom/android/browser/KeyTracker$Stage;J)V

    .line 73
    :cond_1c
    iget-object v3, p0, Lcom/android/browser/KeyTracker;->mState:Lcom/android/browser/KeyTracker$State;

    sget-object v4, Lcom/android/browser/KeyTracker$State;->NOT_TRACKING:Lcom/android/browser/KeyTracker$State;

    if-eq v3, v4, :cond_3d

    const/4 v3, 0x1

    :goto_23
    return v3

    .line 64
    :cond_24
    iget-object v3, p0, Lcom/android/browser/KeyTracker;->mState:Lcom/android/browser/KeyTracker$State;

    sget-object v4, Lcom/android/browser/KeyTracker$State;->KEEP_TRACKING:Lcom/android/browser/KeyTracker$State;

    if-ne v3, v4, :cond_15

    .line 65
    iget-wide v3, p0, Lcom/android/browser/KeyTracker;->mStartMS:J

    sub-long v3, v0, v3

    sget v5, Lcom/android/browser/KeyTracker;->LONG_PRESS_DURATION_MS:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_39

    sget-object v3, Lcom/android/browser/KeyTracker$Stage;->LONG_REPEAT:Lcom/android/browser/KeyTracker$Stage;

    move-object v2, v3

    :goto_38
    goto :goto_15

    :cond_39
    sget-object v3, Lcom/android/browser/KeyTracker$Stage;->SHORT_REPEAT:Lcom/android/browser/KeyTracker$Stage;

    move-object v2, v3

    goto :goto_38

    .line 73
    :cond_3d
    const/4 v3, 0x0

    goto :goto_23
.end method

.method public doKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 79
    .local v0, handled:Z
    iget-object v1, p0, Lcom/android/browser/KeyTracker;->mState:Lcom/android/browser/KeyTracker$State;

    sget-object v2, Lcom/android/browser/KeyTracker$State;->KEEP_TRACKING:Lcom/android/browser/KeyTracker$State;

    if-ne v1, v2, :cond_1e

    iget v1, p0, Lcom/android/browser/KeyTracker;->mKeyCode:I

    if-ne v1, p1, :cond_1e

    .line 80
    iput-object p2, p0, Lcom/android/browser/KeyTracker;->mEvent:Landroid/view/KeyEvent;

    .line 81
    sget-object v1, Lcom/android/browser/KeyTracker$Stage;->UP:Lcom/android/browser/KeyTracker$Stage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/browser/KeyTracker;->callTracker(Lcom/android/browser/KeyTracker$Stage;J)V

    .line 82
    iget-object v1, p0, Lcom/android/browser/KeyTracker;->mState:Lcom/android/browser/KeyTracker$State;

    sget-object v2, Lcom/android/browser/KeyTracker$State;->NOT_TRACKING:Lcom/android/browser/KeyTracker$State;

    if-eq v1, v2, :cond_24

    const/4 v1, 0x1

    move v0, v1

    .line 84
    :cond_1e
    :goto_1e
    const v1, -0x1e240

    iput v1, p0, Lcom/android/browser/KeyTracker;->mKeyCode:I

    .line 85
    return v0

    .line 82
    :cond_24
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1e
.end method
