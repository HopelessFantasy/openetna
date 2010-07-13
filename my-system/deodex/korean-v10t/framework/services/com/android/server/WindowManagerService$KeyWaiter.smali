.class final Lcom/android/server/WindowManagerService$KeyWaiter;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeyWaiter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;
    }
.end annotation


# static fields
.field public static final RETURN_NOTHING:I = 0x0

.field public static final RETURN_PENDING_POINTER:I = 0x1

.field public static final RETURN_PENDING_TRACKBALL:I = 0x2


# instance fields
.field final CONSUMED_EVENT_TOKEN:Ljava/lang/Object;

.field final SKIP_TARGET_TOKEN:Ljava/lang/Object;

.field private mDispatchState:Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;

.field private mEventDispatching:Z

.field private mFinished:Z

.field private mGotFirstWindow:Z

.field private mLastBinder:Landroid/os/IBinder;

.field private mLastWin:Lcom/android/server/WindowManagerService$WindowState;

.field mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

.field mOutsideTouchTargets:Lcom/android/server/WindowManagerService$WindowState;

.field private mTimeToSwitch:J

.field mWasFrozen:Z

.field final synthetic this$0:Lcom/android/server/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WindowManagerService;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 4775
    iput-object p1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4822
    iput-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mDispatchState:Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;

    .line 4832
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->SKIP_TARGET_TOKEN:Ljava/lang/Object;

    .line 4833
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->CONSUMED_EVENT_TOKEN:Ljava/lang/Object;

    .line 4835
    iput-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    .line 4836
    iput-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastBinder:Landroid/os/IBinder;

    .line 4837
    iput-boolean v3, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    .line 4838
    iput-boolean v2, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mGotFirstWindow:Z

    .line 4839
    iput-boolean v3, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mEventDispatching:Z

    .line 4840
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    .line 4841
    iput-boolean v2, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mWasFrozen:Z

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/WindowManagerService$KeyWaiter;)Lcom/android/server/WindowManagerService$WindowState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4775
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/WindowManagerService$KeyWaiter;)Landroid/os/IBinder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 4775
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/WindowManagerService$KeyWaiter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 4775
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/WindowManagerService$KeyWaiter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 4775
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mGotFirstWindow:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/WindowManagerService$KeyWaiter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 4775
    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mEventDispatching:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/WindowManagerService$KeyWaiter;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 4775
    iget-wide v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    return-wide v0
.end method

.method private final doFinishedKeyLocked(Z)V
    .registers 4
    .parameter "doRecycle"

    .prologue
    const/4 v1, 0x0

    .line 5490
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v0, :cond_13

    .line 5491
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->releasePendingPointerLocked(Lcom/android/server/WindowManagerService$Session;)V

    .line 5492
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->releasePendingTrackballLocked(Lcom/android/server/WindowManagerService$Session;)V

    .line 5495
    :cond_13
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {v0}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 5499
    :cond_27
    iput-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    .line 5500
    iput-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastBinder:Landroid/os/IBinder;

    .line 5502
    :cond_2b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    .line 5503
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 5504
    return-void
.end method


# virtual methods
.method appSwitchComing()V
    .registers 7

    .prologue
    .line 5477
    monitor-enter p0

    .line 5480
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long v0, v2, v4

    .line 5482
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_17

    iget-wide v2, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_19

    .line 5483
    :cond_17
    iput-wide v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    .line 5485
    :cond_19
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 5486
    monitor-exit p0

    .line 5487
    return-void

    .line 5486
    .end local v0           #now:J
    :catchall_1e
    move-exception v2

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method bindTargetWindowLocked(Lcom/android/server/WindowManagerService$WindowState;)V
    .registers 4
    .parameter "win"

    .prologue
    .line 5268
    monitor-enter p0

    .line 5269
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/WindowManagerService$KeyWaiter;->bindTargetWindowLockedLocked(Lcom/android/server/WindowManagerService$WindowState;ILcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 5270
    monitor-exit p0

    .line 5271
    return-void

    .line 5270
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method bindTargetWindowLocked(Lcom/android/server/WindowManagerService$WindowState;ILcom/android/server/KeyInputQueue$QueuedEvent;)V
    .registers 5
    .parameter "win"
    .parameter "pendingWhat"
    .parameter "pendingMotion"

    .prologue
    .line 5262
    monitor-enter p0

    .line 5263
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/WindowManagerService$KeyWaiter;->bindTargetWindowLockedLocked(Lcom/android/server/WindowManagerService$WindowState;ILcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 5264
    monitor-exit p0

    .line 5265
    return-void

    .line 5264
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method bindTargetWindowLockedLocked(Lcom/android/server/WindowManagerService$WindowState;ILcom/android/server/KeyInputQueue$QueuedEvent;)V
    .registers 6
    .parameter "win"
    .parameter "pendingWhat"
    .parameter "pendingMotion"

    .prologue
    .line 5275
    iput-object p1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    .line 5276
    iget-object v1, p1, Lcom/android/server/WindowManagerService$WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastBinder:Landroid/os/IBinder;

    .line 5277
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    .line 5278
    if-eqz p3, :cond_1b

    .line 5279
    iget-object v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    .line 5280
    .local v0, s:Lcom/android/server/WindowManagerService$Session;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1c

    .line 5281
    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->releasePendingPointerLocked(Lcom/android/server/WindowManagerService$Session;)V

    .line 5282
    iput-object p3, v0, Lcom/android/server/WindowManagerService$Session;->mPendingPointerMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 5283
    iput-object p1, v0, Lcom/android/server/WindowManagerService$Session;->mPendingPointerWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 5292
    .end local v0           #s:Lcom/android/server/WindowManagerService$Session;
    :cond_1b
    :goto_1b
    return-void

    .line 5286
    .restart local v0       #s:Lcom/android/server/WindowManagerService$Session;
    :cond_1c
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1b

    .line 5287
    invoke-virtual {p0, v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->releasePendingTrackballLocked(Lcom/android/server/WindowManagerService$Session;)V

    .line 5288
    iput-object p3, v0, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 5289
    iput-object p1, v0, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballWindow:Lcom/android/server/WindowManagerService$WindowState;

    goto :goto_1b
.end method

.method checkShouldDispatchKey(I)Z
    .registers 7
    .parameter "keycode"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    .line 5247
    monitor-enter p0

    .line 5248
    :try_start_4
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->isAppSwitchKeyTqTiLwLi(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5249
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    .line 5250
    monitor-exit p0

    move v0, v4

    .line 5256
    :goto_14
    return v0

    .line 5252
    :cond_15
    iget-wide v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2b

    iget-wide v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2b

    .line 5254
    const/4 v0, 0x0

    monitor-exit p0

    goto :goto_14

    .line 5257
    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_28

    throw v0

    .line 5256
    :cond_2b
    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_28

    move v0, v4

    goto :goto_14
.end method

.method findTargetWindow(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZII)Ljava/lang/Object;
    .registers 35
    .parameter "nextKey"
    .parameter "qev"
    .parameter "nextMotion"
    .parameter "isPointerEvent"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 5053
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mOutsideTouchTargets:Lcom/android/server/WindowManagerService$WindowState;

    .line 5055
    if-eqz p1, :cond_ca

    .line 5057
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 5058
    .local v6, keycode:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    .line 5059
    .local v9, repeatCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6d

    const/4 v4, 0x1

    move v8, v4

    .line 5060
    .local v8, down:Z
    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v4, v6}, Lcom/android/server/WindowManagerService$KeyWaiter;->checkShouldDispatchKey(I)Z

    move-result v13

    .line 5062
    .local v13, dispatch:Z
    if-nez v13, :cond_70

    .line 5063
    if-eqz p6, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.INJECT_EVENTS"

    move-object v0, v4

    move-object v1, v5

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_4c

    .line 5068
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    invoke-interface/range {v4 .. v9}, Landroid/view/WindowManagerPolicy;->interceptKeyTi(Landroid/view/WindowManagerPolicy$WindowState;IIZI)Z

    .line 5071
    :cond_4c
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event timeout during app switch: dropping "

    .end local v6           #keycode:I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->SKIP_TARGET_TOKEN:Ljava/lang/Object;

    move-object v4, v0

    .line 5243
    .end local v8           #down:Z
    .end local v9           #repeatCount:I
    .end local v13           #dispatch:Z
    :goto_6c
    return-object v4

    .line 5059
    .restart local v6       #keycode:I
    .restart local v9       #repeatCount:I
    :cond_6d
    const/4 v4, 0x0

    move v8, v4

    goto :goto_19

    .line 5078
    .restart local v8       #down:Z
    .restart local v13       #dispatch:Z
    :cond_70
    const/4 v5, 0x0

    .line 5079
    .local v5, focus:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 5080
    :try_start_79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/server/WindowManagerService;->access$800(Lcom/android/server/WindowManagerService;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v5

    .line 5081
    monitor-exit v4
    :try_end_83
    .catchall {:try_start_79 .. :try_end_83} :catchall_c5

    .line 5083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    const/4 v7, 0x5

    invoke-static {v4, v5, v7}, Lcom/android/server/WindowManagerService;->access$900(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;I)V

    .line 5085
    if-eqz p6, :cond_ae

    if-eqz v5, :cond_99

    iget-object v4, v5, Lcom/android/server/WindowManagerService$WindowState;->mSession:Lcom/android/server/WindowManagerService$Session;

    iget v4, v4, Lcom/android/server/WindowManagerService$Session;->mUid:I

    move/from16 v0, p6

    move v1, v4

    if-eq v0, v1, :cond_ae

    :cond_99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.INJECT_EVENTS"

    move-object v0, v4

    move-object v1, v7

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_c8

    .line 5091
    :cond_ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    invoke-interface/range {v4 .. v9}, Landroid/view/WindowManagerPolicy;->interceptKeyTi(Landroid/view/WindowManagerPolicy$WindowState;IIZI)Z

    move-result v4

    if-eqz v4, :cond_c8

    .line 5093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->CONSUMED_EVENT_TOKEN:Ljava/lang/Object;

    move-object v4, v0

    goto :goto_6c

    .line 5081
    .end local v6           #keycode:I
    :catchall_c5
    move-exception v6

    :try_start_c6
    monitor-exit v4
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c5

    throw v6

    .restart local v6       #keycode:I
    :cond_c8
    move-object v4, v5

    .line 5097
    goto :goto_6c

    .line 5099
    .end local v5           #focus:Lcom/android/server/WindowManagerService$WindowState;
    .end local v6           #keycode:I
    .end local v8           #down:Z
    .end local v9           #repeatCount:I
    .end local v13           #dispatch:Z
    :cond_ca
    if-nez p4, :cond_11e

    .line 5100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/server/WindowManagerService$KeyWaiter;->checkShouldDispatchKey(I)Z

    move-result v13

    .line 5101
    .restart local v13       #dispatch:Z
    if-nez v13, :cond_fc

    .line 5102
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event timeout during app switch: dropping trackball "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->SKIP_TARGET_TOKEN:Ljava/lang/Object;

    move-object v4, v0

    goto/16 :goto_6c

    .line 5107
    :cond_fc
    const/4 v5, 0x0

    .line 5108
    .restart local v5       #focus:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 5109
    :try_start_105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/server/WindowManagerService;->access$800(Lcom/android/server/WindowManagerService;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v5

    .line 5110
    monitor-exit v4
    :try_end_10f
    .catchall {:try_start_105 .. :try_end_10f} :catchall_11b

    .line 5112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    const/4 v6, 0x5

    invoke-static {v4, v5, v6}, Lcom/android/server/WindowManagerService;->access$900(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;I)V

    move-object v4, v5

    .line 5113
    goto/16 :goto_6c

    .line 5110
    :catchall_11b
    move-exception v6

    :try_start_11c
    monitor-exit v4
    :try_end_11d
    .catchall {:try_start_11c .. :try_end_11d} :catchall_11b

    throw v6

    .line 5116
    .end local v5           #focus:Lcom/android/server/WindowManagerService$WindowState;
    .end local v13           #dispatch:Z
    :cond_11e
    if-nez p3, :cond_127

    .line 5117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->SKIP_TARGET_TOKEN:Ljava/lang/Object;

    move-object v4, v0

    goto/16 :goto_6c

    .line 5120
    :cond_127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/WindowManagerService$KeyWaiter;->checkShouldDispatchKey(I)Z

    move-result v13

    .line 5122
    .restart local v13       #dispatch:Z
    if-nez v13, :cond_157

    .line 5123
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event timeout during app switch: dropping pointer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->SKIP_TARGET_TOKEN:Ljava/lang/Object;

    move-object v4, v0

    goto/16 :goto_6c

    .line 5129
    :cond_157
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    .line 5130
    .local v11, action:I
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    .line 5131
    .local v25, xf:F
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v27

    .line 5132
    .local v27, yf:F
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    .line 5134
    .local v14, eventTime:J
    if-eqz p2, :cond_1fa

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->flags:I

    move v4, v0

    const/high16 v5, 0x2000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1fa

    const/4 v4, 0x1

    move/from16 v18, v4

    .line 5137
    .local v18, screenWasOff:Z
    :goto_176
    const/16 v19, 0x0

    .line 5139
    .local v19, target:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 5140
    :try_start_180
    monitor-enter p0
    :try_end_181
    .catchall {:try_start_180 .. :try_end_181} :catchall_219

    .line 5141
    if-nez v11, :cond_292

    .line 5142
    :try_start_183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    if-eqz v5, :cond_1ad

    .line 5147
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pointer down received while already down in: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5149
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 5154
    :cond_1ad
    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v24, v0

    .line 5155
    .local v24, x:I
    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v26, v0

    .line 5157
    .local v26, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    .line 5158
    .local v23, windows:Ljava/util/ArrayList;
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 5159
    .local v10, N:I
    const/16 v21, 0x0

    .line 5160
    .local v21, topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    .line 5161
    .local v20, tmpRect:Landroid/graphics/Rect;
    const/4 v5, 0x1

    sub-int v17, v10, v5

    .local v17, i:I
    :goto_1d4
    if-ltz v17, :cond_280

    .line 5162
    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/WindowManagerService$WindowState;

    .line 5164
    .local v12, child:Lcom/android/server/WindowManagerService$WindowState;
    iget-object v5, v12, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v0, v5

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v16, v0

    .line 5165
    .local v16, flags:I
    const/high16 v5, 0x4000

    and-int v5, v5, v16

    if-eqz v5, :cond_1f1

    .line 5166
    if-nez v21, :cond_1f1

    .line 5167
    move-object/from16 v21, v12

    .line 5170
    :cond_1f1
    invoke-virtual {v12}, Lcom/android/server/WindowManagerService$WindowState;->isVisibleLw()Z

    move-result v5

    if-nez v5, :cond_1ff

    .line 5161
    :cond_1f7
    :goto_1f7
    add-int/lit8 v17, v17, -0x1

    goto :goto_1d4

    .line 5134
    .end local v10           #N:I
    .end local v12           #child:Lcom/android/server/WindowManagerService$WindowState;
    .end local v16           #flags:I
    .end local v17           #i:I
    .end local v18           #screenWasOff:Z
    .end local v19           #target:Lcom/android/server/WindowManagerService$WindowState;
    .end local v20           #tmpRect:Landroid/graphics/Rect;
    .end local v21           #topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v23           #windows:Ljava/util/ArrayList;
    .end local v24           #x:I
    .end local v26           #y:I
    :cond_1fa
    const/4 v4, 0x0

    move/from16 v18, v4

    goto/16 :goto_176

    .line 5174
    .restart local v10       #N:I
    .restart local v12       #child:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v16       #flags:I
    .restart local v17       #i:I
    .restart local v18       #screenWasOff:Z
    .restart local v19       #target:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v20       #tmpRect:Landroid/graphics/Rect;
    .restart local v21       #topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v23       #windows:Ljava/util/ArrayList;
    .restart local v24       #x:I
    .restart local v26       #y:I
    :cond_1ff
    and-int/lit8 v5, v16, 0x10

    if-eqz v5, :cond_21c

    .line 5176
    const/high16 v5, 0x4

    and-int v5, v5, v16

    if-eqz v5, :cond_1f7

    .line 5178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mOutsideTouchTargets:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    iput-object v5, v12, Lcom/android/server/WindowManagerService$WindowState;->mNextOutsideTouch:Lcom/android/server/WindowManagerService$WindowState;

    .line 5179
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mOutsideTouchTargets:Lcom/android/server/WindowManagerService$WindowState;

    goto :goto_1f7

    .line 5236
    .end local v10           #N:I
    .end local v12           #child:Lcom/android/server/WindowManagerService$WindowState;
    .end local v16           #flags:I
    .end local v17           #i:I
    .end local v20           #tmpRect:Landroid/graphics/Rect;
    .end local v21           #topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v23           #windows:Ljava/util/ArrayList;
    .end local v24           #x:I
    .end local v26           #y:I
    :catchall_216
    move-exception v5

    monitor-exit p0
    :try_end_218
    .catchall {:try_start_183 .. :try_end_218} :catchall_216

    :try_start_218
    throw v5

    .line 5237
    :catchall_219
    move-exception v5

    monitor-exit v4
    :try_end_21b
    .catchall {:try_start_218 .. :try_end_21b} :catchall_219

    throw v5

    .line 5183
    .restart local v10       #N:I
    .restart local v12       #child:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v16       #flags:I
    .restart local v17       #i:I
    .restart local v20       #tmpRect:Landroid/graphics/Rect;
    .restart local v21       #topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v23       #windows:Ljava/util/ArrayList;
    .restart local v24       #x:I
    .restart local v26       #y:I
    :cond_21c
    :try_start_21c
    iget-object v5, v12, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5184
    iget v5, v12, Lcom/android/server/WindowManagerService$WindowState;->mTouchableInsets:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2b8

    .line 5189
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    iget-object v6, v12, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 5190
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    iget-object v6, v12, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 5191
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    iget-object v6, v12, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 5192
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    iget-object v6, v12, Lcom/android/server/WindowManagerService$WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 5203
    :cond_265
    :goto_265
    and-int/lit8 v22, v16, 0x28

    .line 5206
    .local v22, touchFlags:I
    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_275

    if-nez v22, :cond_303

    .line 5208
    :cond_275
    if-eqz v18, :cond_27b

    and-int/lit8 v5, v16, 0x40

    if-eqz v5, :cond_2fb

    .line 5210
    :cond_27b
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 5230
    .end local v12           #child:Lcom/android/server/WindowManagerService$WindowState;
    .end local v16           #flags:I
    .end local v22           #touchFlags:I
    :cond_280
    :goto_280
    if-eqz v21, :cond_292

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_292

    .line 5231
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 5235
    .end local v10           #N:I
    .end local v17           #i:I
    .end local v20           #tmpRect:Landroid/graphics/Rect;
    .end local v21           #topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v23           #windows:Ljava/util/ArrayList;
    .end local v24           #x:I
    .end local v26           #y:I
    :cond_292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v19, v0

    .line 5236
    monitor-exit p0
    :try_end_299
    .catchall {:try_start_21c .. :try_end_299} :catchall_216

    .line 5237
    :try_start_299
    monitor-exit v4
    :try_end_29a
    .catchall {:try_start_299 .. :try_end_29a} :catchall_219

    .line 5239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/server/WindowManagerService;->access$1000(Lcom/android/server/WindowManagerService;Landroid/view/MotionEvent;)I

    move-result v5

    move-object v0, v4

    move-object/from16 v1, v19

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/WindowManagerService;->access$900(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$WindowState;I)V

    .line 5243
    if-eqz v19, :cond_317

    move-object/from16 v4, v19

    goto/16 :goto_6c

    .line 5193
    .restart local v10       #N:I
    .restart local v12       #child:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v16       #flags:I
    .restart local v17       #i:I
    .restart local v20       #tmpRect:Landroid/graphics/Rect;
    .restart local v21       #topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    .restart local v23       #windows:Ljava/util/ArrayList;
    .restart local v24       #x:I
    .restart local v26       #y:I
    :cond_2b8
    :try_start_2b8
    iget v5, v12, Lcom/android/server/WindowManagerService$WindowState;->mTouchableInsets:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_265

    .line 5198
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    iget-object v6, v12, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 5199
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    iget-object v6, v12, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 5200
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    iget-object v6, v12, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 5201
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    iget-object v6, v12, Lcom/android/server/WindowManagerService$WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_265

    .line 5213
    .restart local v22       #touchFlags:I
    :cond_2fb
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    goto/16 :goto_280

    .line 5218
    :cond_303
    const/high16 v5, 0x4

    and-int v5, v5, v16

    if-eqz v5, :cond_1f7

    .line 5220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mOutsideTouchTargets:Lcom/android/server/WindowManagerService$WindowState;

    move-object v5, v0

    iput-object v5, v12, Lcom/android/server/WindowManagerService$WindowState;->mNextOutsideTouch:Lcom/android/server/WindowManagerService$WindowState;

    .line 5221
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mOutsideTouchTargets:Lcom/android/server/WindowManagerService$WindowState;
    :try_end_315
    .catchall {:try_start_2b8 .. :try_end_315} :catchall_216

    goto/16 :goto_1f7

    .line 5243
    .end local v10           #N:I
    .end local v12           #child:Lcom/android/server/WindowManagerService$WindowState;
    .end local v16           #flags:I
    .end local v17           #i:I
    .end local v20           #tmpRect:Landroid/graphics/Rect;
    .end local v21           #topErrWindow:Lcom/android/server/WindowManagerService$WindowState;
    .end local v22           #touchFlags:I
    .end local v23           #windows:Ljava/util/ArrayList;
    .end local v24           #x:I
    .end local v26           #y:I
    :cond_317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->SKIP_TARGET_TOKEN:Ljava/lang/Object;

    move-object v4, v0

    goto/16 :goto_6c
.end method

.method finishedKey(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;ZI)Landroid/view/MotionEvent;
    .registers 12
    .parameter "session"
    .parameter "client"
    .parameter "force"
    .parameter "returnWhat"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5315
    if-nez p2, :cond_6

    move-object v3, v5

    .line 5365
    :goto_5
    return-object v3

    .line 5319
    :cond_6
    monitor-enter p0

    .line 5325
    const/4 v0, 0x0

    .line 5326
    .local v0, qev:Lcom/android/server/KeyInputQueue$QueuedEvent;
    const/4 v2, 0x0

    .line 5327
    .local v2, win:Lcom/android/server/WindowManagerService$WindowState;
    if-ne p4, v6, :cond_56

    .line 5328
    :try_start_b
    iget-object v0, p1, Lcom/android/server/WindowManagerService$Session;->mPendingPointerMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 5329
    iget-object v2, p1, Lcom/android/server/WindowManagerService$Session;->mPendingPointerWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 5330
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/server/WindowManagerService$Session;->mPendingPointerMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 5331
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/server/WindowManagerService$Session;->mPendingPointerWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 5339
    :cond_15
    :goto_15
    iget-object v3, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastBinder:Landroid/os/IBinder;

    invoke-interface {p2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_33

    .line 5343
    iget-object v3, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v3, :cond_67

    iget-object v3, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v3, v3, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    iget-boolean v3, v3, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    if-eqz v3, :cond_2f

    if-nez p3, :cond_2f

    iget-boolean v3, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mEventDispatching:Z

    if-nez v3, :cond_67

    .line 5345
    :cond_2f
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/WindowManagerService$KeyWaiter;->doFinishedKeyLocked(Z)V

    .line 5355
    :cond_33
    :goto_33
    if-eqz v0, :cond_6e

    .line 5356
    iget-object v1, v0, Lcom/android/server/KeyInputQueue$QueuedEvent;->event:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    .line 5359
    .local v1, res:Landroid/view/MotionEvent;
    iget-object v3, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    invoke-virtual {v3, v0}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 5360
    if-eqz v2, :cond_53

    if-ne p4, v6, :cond_53

    .line 5361
    iget-object v3, v2, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, v2, Lcom/android/server/WindowManagerService$WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5363
    :cond_53
    monitor-exit p0

    move-object v3, v1

    goto :goto_5

    .line 5332
    .end local v1           #res:Landroid/view/MotionEvent;
    :cond_56
    const/4 v3, 0x2

    if-ne p4, v3, :cond_15

    .line 5333
    iget-object v0, p1, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 5334
    iget-object v2, p1, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballWindow:Lcom/android/server/WindowManagerService$WindowState;

    .line 5335
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 5336
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballWindow:Lcom/android/server/WindowManagerService$WindowState;

    goto :goto_15

    .line 5366
    :catchall_64
    move-exception v3

    monitor-exit p0
    :try_end_66
    .catchall {:try_start_b .. :try_end_66} :catchall_64

    throw v3

    .line 5350
    :cond_67
    const/4 v3, 0x1

    :try_start_68
    iput-boolean v3, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    .line 5351
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_33

    .line 5365
    :cond_6e
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_64

    move-object v3, v5

    goto :goto_5
.end method

.method handleNewWindowLocked(Lcom/android/server/WindowManagerService$WindowState;)V
    .registers 4
    .parameter "newWindow"

    .prologue
    .line 5376
    invoke-virtual {p1}, Lcom/android/server/WindowManagerService$WindowState;->canReceiveKeys()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5426
    :goto_6
    return-void

    .line 5379
    :cond_7
    monitor-enter p0

    .line 5391
    :try_start_8
    iget-object v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    .line 5393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mGotFirstWindow:Z

    .line 5395
    iget-object v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2d

    .line 5398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    .line 5399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastBinder:Landroid/os/IBinder;

    .line 5400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 5401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    .line 5424
    :cond_25
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 5425
    monitor-exit p0

    goto :goto_6

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_2a

    throw v0

    .line 5402
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v0, :cond_25

    .line 5409
    iget v0, p1, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    iget-object v1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    iget v1, v1, Lcom/android/server/WindowManagerService$WindowState;->mLayer:I

    if-lt v0, v1, :cond_44

    .line 5412
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    .line 5413
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->doFinishedKeyLocked(Z)V

    .line 5419
    :cond_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_2d .. :try_end_45} :catchall_2a

    goto :goto_6
.end method

.method pauseDispatchingLocked(Lcom/android/server/WindowManagerService$WindowToken;)V
    .registers 3
    .parameter "token"

    .prologue
    .line 5429
    monitor-enter p0

    .line 5432
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p1, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    .line 5447
    monitor-exit p0

    .line 5448
    return-void

    .line 5447
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public recordDispatchState(Landroid/view/KeyEvent;Lcom/android/server/WindowManagerService$WindowState;)V
    .registers 4
    .parameter "theEvent"
    .parameter "theFocus"

    .prologue
    .line 4824
    new-instance v0, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;-><init>(Lcom/android/server/WindowManagerService$KeyWaiter;Landroid/view/KeyEvent;Lcom/android/server/WindowManagerService$WindowState;)V

    iput-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mDispatchState:Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;

    .line 4825
    return-void
.end method

.method releasePendingPointerLocked(Lcom/android/server/WindowManagerService$Session;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 5297
    iget-object v0, p1, Lcom/android/server/WindowManagerService$Session;->mPendingPointerMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    if-eqz v0, :cond_10

    .line 5298
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    iget-object v1, p1, Lcom/android/server/WindowManagerService$Session;->mPendingPointerMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 5299
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/WindowManagerService$Session;->mPendingPointerMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 5301
    :cond_10
    return-void
.end method

.method releasePendingTrackballLocked(Lcom/android/server/WindowManagerService$Session;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 5304
    iget-object v0, p1, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    if-eqz v0, :cond_10

    .line 5305
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mQueue:Lcom/android/server/WindowManagerService$KeyQ;

    iget-object v1, p1, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService$KeyQ;->recycleEvent(Lcom/android/server/KeyInputQueue$QueuedEvent;)V

    .line 5306
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    .line 5308
    :cond_10
    return-void
.end method

.method resumeDispatchingLocked(Lcom/android/server/WindowManagerService$WindowToken;)V
    .registers 3
    .parameter "token"

    .prologue
    .line 5451
    monitor-enter p0

    .line 5452
    :try_start_1
    iget-boolean v0, p1, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    if-eqz v0, :cond_1a

    .line 5459
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    .line 5460
    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    if-ne v0, p1, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    if-eqz v0, :cond_1c

    .line 5461
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/WindowManagerService$KeyWaiter;->doFinishedKeyLocked(Z)V

    .line 5466
    :cond_1a
    :goto_1a
    monitor-exit p0

    .line 5467
    return-void

    .line 5463
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1a

    .line 5466
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method

.method setEventDispatchingLocked(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 5470
    monitor-enter p0

    .line 5471
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/WindowManagerService$KeyWaiter;->mEventDispatching:Z

    .line 5472
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 5473
    monitor-exit p0

    .line 5474
    return-void

    .line 5473
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method tickle()V
    .registers 2

    .prologue
    .line 5370
    monitor-enter p0

    .line 5371
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 5372
    monitor-exit p0

    .line 5373
    return-void

    .line 5372
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method

.method waitForNextEventTarget(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZZII)Ljava/lang/Object;
    .registers 39
    .parameter "nextKey"
    .parameter "qev"
    .parameter "nextMotion"
    .parameter "isPointerEvent"
    .parameter "failIfTimeout"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 4858
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    .line 4859
    .local v19, startTime:J
    const-wide/16 v15, 0x2710

    .line 4860
    .local v15, keyDispatchingTimeout:J
    const-wide/16 v29, 0x0

    .line 4868
    .local v29, waitedFor:J
    :cond_8
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    .line 4869
    .local v26, targetWin:Lcom/android/server/WindowManagerService$WindowState;
    if-nez v26, :cond_33

    const/4 v4, 0x1

    move/from16 v25, v4

    .line 4873
    .local v25, targetIsNew:Z
    :goto_13
    if-eqz v25, :cond_4a

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p6

    move/from16 v10, p7

    .line 4874
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/WindowManagerService$KeyWaiter;->findTargetWindow(Landroid/view/KeyEvent;Lcom/android/server/KeyInputQueue$QueuedEvent;Landroid/view/MotionEvent;ZII)Ljava/lang/Object;

    move-result-object v23

    .line 4876
    .local v23, target:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->SKIP_TARGET_TOKEN:Ljava/lang/Object;

    move-object v4, v0

    move-object/from16 v0, v23

    move-object v1, v4

    if-ne v0, v1, :cond_37

    .line 4881
    const/4 v4, 0x0

    .line 5039
    .end local v23           #target:Ljava/lang/Object;
    :goto_32
    return-object v4

    .line 4869
    .end local v25           #targetIsNew:Z
    :cond_33
    const/4 v4, 0x0

    move/from16 v25, v4

    goto :goto_13

    .line 4883
    .restart local v23       #target:Ljava/lang/Object;
    .restart local v25       #targetIsNew:Z
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->CONSUMED_EVENT_TOKEN:Ljava/lang/Object;

    move-object v4, v0

    move-object/from16 v0, v23

    move-object v1, v4

    if-ne v0, v1, :cond_44

    move-object/from16 v4, v23

    .line 4886
    goto :goto_32

    .line 4888
    :cond_44
    move-object/from16 v0, v23

    check-cast v0, Lcom/android/server/WindowManagerService$WindowState;

    move-object/from16 v26, v0

    .line 4891
    .end local v23           #target:Ljava/lang/Object;
    :cond_4a
    const/16 v24, 0x0

    .line 4894
    .local v24, targetApp:Lcom/android/server/WindowManagerService$AppWindowToken;
    monitor-enter p0

    .line 4898
    if-nez v25, :cond_5b

    :try_start_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    move-object v4, v0

    if-nez v4, :cond_5b

    .line 4899
    monitor-exit p0

    goto :goto_8

    .line 4975
    :catchall_58
    move-exception v4

    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_4f .. :try_end_5a} :catchall_58

    throw v4

    .line 4904
    :cond_5b
    :try_start_5b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    move v4, v0

    if-eqz v4, :cond_92

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/android/server/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_92

    .line 4907
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mEventDispatching:Z

    move v4, v0

    if-nez v4, :cond_75

    .line 4911
    const/4 v4, 0x0

    monitor-exit p0

    goto :goto_32

    .line 4913
    :cond_75
    if-eqz v26, :cond_86

    .line 4917
    if-eqz v25, :cond_92

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    move-object v4, v0

    iget-boolean v4, v4, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    if-nez v4, :cond_92

    .line 4918
    monitor-exit p0

    move-object/from16 v4, v26

    goto :goto_32

    .line 4923
    :cond_86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    if-nez v4, :cond_92

    .line 4927
    const/4 v4, 0x0

    monitor-exit p0

    goto :goto_32

    .line 4942
    :cond_92
    if-eqz v26, :cond_be

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAppToken:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object v4, v0

    move-object/from16 v24, v4

    .line 4945
    :goto_9b
    move-wide v13, v15

    .line 4946
    .local v13, curTimeout:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_d5

    .line 4947
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 4948
    .local v17, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    move-wide v4, v0

    cmp-long v4, v4, v17

    if-gtz v4, :cond_c8

    .line 4952
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/server/WindowManagerService$KeyWaiter;->doFinishedKeyLocked(Z)V

    .line 4953
    monitor-exit p0

    goto/16 :goto_8

    .line 4942
    .end local v13           #curTimeout:J
    .end local v17           #now:J
    :cond_be
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->this$0:Lcom/android/server/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService;->mFocusedApp:Lcom/android/server/WindowManagerService$AppWindowToken;

    move-object/from16 v24, v4

    goto :goto_9b

    .line 4955
    .restart local v13       #curTimeout:J
    .restart local v17       #now:J
    :cond_c8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    move-wide v4, v0
    :try_end_cd
    .catchall {:try_start_5b .. :try_end_cd} :catchall_58

    sub-long v21, v4, v17

    .line 4956
    .local v21, switchTimeout:J
    cmp-long v4, v13, v21

    if-lez v4, :cond_d5

    .line 4957
    move-wide/from16 v13, v21

    .line 4966
    .end local v17           #now:J
    .end local v21           #switchTimeout:J
    :cond_d5
    :try_start_d5
    move-object/from16 v0, p0

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_db
    .catchall {:try_start_d5 .. :try_end_db} :catchall_58
    .catch Ljava/lang/InterruptedException; {:try_start_d5 .. :try_end_db} :catch_1fd

    .line 4975
    :goto_db
    :try_start_db
    monitor-exit p0
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_58

    .line 4980
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mWasFrozen:Z

    move v4, v0

    if-eqz v4, :cond_176

    .line 4981
    const-wide/16 v29, 0x0

    .line 4982
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mWasFrozen:Z

    .line 4987
    :goto_eb
    cmp-long v4, v29, v15

    if-ltz v4, :cond_8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mTimeToSwitch:J

    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_8

    .line 4988
    const/4 v12, 0x0

    .line 4989
    .local v12, at:Landroid/view/IApplicationToken;
    monitor-enter p0

    .line 4990
    :try_start_fc
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Key dispatching timed out sending to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v26, :cond_17e

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    :goto_114
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4994
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dispatch state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mDispatchState:Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4995
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current state:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/WindowManagerService$KeyWaiter$DispatchState;-><init>(Lcom/android/server/WindowManagerService$KeyWaiter;Landroid/view/KeyEvent;Lcom/android/server/WindowManagerService$WindowState;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4998
    if-eqz v26, :cond_181

    .line 4999
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/WindowManagerService$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v12

    .line 5003
    :cond_166
    :goto_166
    monitor-exit p0
    :try_end_167
    .catchall {:try_start_fc .. :try_end_167} :catchall_189

    .line 5005
    const/4 v11, 0x1

    .line 5006
    .local v11, abort:Z
    if-eqz v12, :cond_190

    .line 5008
    :try_start_16a
    invoke-interface {v12}, Landroid/view/IApplicationToken;->getKeyDispatchingTimeout()J
    :try_end_16d
    .catch Landroid/os/RemoteException; {:try_start_16a .. :try_end_16d} :catch_200

    move-result-wide v27

    .line 5009
    .local v27, timeout:J
    cmp-long v4, v27, v29

    if-lez v4, :cond_18c

    .line 5012
    sub-long v15, v27, v29

    goto/16 :goto_8

    .line 4984
    .end local v11           #abort:Z
    .end local v12           #at:Landroid/view/IApplicationToken;
    .end local v27           #timeout:J
    :cond_176
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v29, v4, v19

    goto/16 :goto_eb

    .line 4990
    .restart local v12       #at:Landroid/view/IApplicationToken;
    :cond_17e
    :try_start_17e
    const-string v6, "<null>"

    goto :goto_114

    .line 5000
    :cond_181
    if-eqz v24, :cond_166

    .line 5001
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/WindowManagerService$AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object v12, v0

    goto :goto_166

    .line 5003
    :catchall_189
    move-exception v4

    monitor-exit p0
    :try_end_18b
    .catchall {:try_start_17e .. :try_end_18b} :catchall_189

    throw v4

    .line 5015
    .restart local v11       #abort:Z
    .restart local v27       #timeout:J
    :cond_18c
    :try_start_18c
    invoke-interface {v12}, Landroid/view/IApplicationToken;->keyDispatchingTimedOut()Z
    :try_end_18f
    .catch Landroid/os/RemoteException; {:try_start_18c .. :try_end_18f} :catch_200

    move-result v11

    .line 5021
    .end local v27           #timeout:J
    :cond_190
    :goto_190
    monitor-enter p0

    .line 5022
    if-eqz v11, :cond_1ef

    :try_start_193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_19f

    if-nez v26, :cond_1ef

    .line 5023
    :cond_19f
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mFinished:Z

    .line 5024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    move-object v4, v0

    if-eqz v4, :cond_1c8

    .line 5028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    iget-boolean v4, v4, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    if-eqz v4, :cond_1c8

    .line 5029
    const-string v4, "WindowManager"

    const-string v5, "Un-pausing dispatching to this window"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/WindowManagerService$WindowState;->mToken:Lcom/android/server/WindowManagerService$WindowToken;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/WindowManagerService$WindowToken;->paused:Z

    .line 5033
    :cond_1c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_1d8

    .line 5034
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mMotionTarget:Lcom/android/server/WindowManagerService$WindowState;

    .line 5036
    :cond_1d8
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastWin:Lcom/android/server/WindowManagerService$WindowState;

    .line 5037
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WindowManagerService$KeyWaiter;->mLastBinder:Landroid/os/IBinder;

    .line 5038
    if-nez p5, :cond_1e8

    if-nez v26, :cond_1fa

    .line 5039
    :cond_1e8
    const/4 v4, 0x0

    monitor-exit p0

    goto/16 :goto_32

    .line 5045
    :catchall_1ec
    move-exception v4

    monitor-exit p0
    :try_end_1ee
    .catchall {:try_start_193 .. :try_end_1ee} :catchall_1ec

    throw v4

    .line 5042
    :cond_1ef
    :try_start_1ef
    const-string v4, "WindowManager"

    const-string v5, "Continuing to wait for key to be dispatched"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5043
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    .line 5045
    :cond_1fa
    monitor-exit p0
    :try_end_1fb
    .catchall {:try_start_1ef .. :try_end_1fb} :catchall_1ec

    goto/16 :goto_8

    .line 4973
    .end local v11           #abort:Z
    .end local v12           #at:Landroid/view/IApplicationToken;
    :catch_1fd
    move-exception v4

    goto/16 :goto_db

    .line 5017
    .restart local v11       #abort:Z
    .restart local v12       #at:Landroid/view/IApplicationToken;
    :catch_200
    move-exception v4

    goto :goto_190
.end method
