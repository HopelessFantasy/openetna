.class final Lcom/android/server/WindowManagerService$Session;
.super Landroid/view/IWindowSession$Stub;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Session"
.end annotation


# instance fields
.field final mClient:Lcom/android/internal/view/IInputMethodClient;

.field mClientDead:Z

.field final mInputContext:Lcom/android/internal/view/IInputContext;

.field mNumWindow:I

.field mPendingPointerMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

.field mPendingPointerWindow:Lcom/android/server/WindowManagerService$WindowState;

.field mPendingTrackballMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

.field mPendingTrackballWindow:Lcom/android/server/WindowManagerService$WindowState;

.field final mPid:I

.field final mStringName:Ljava/lang/String;

.field mSurfaceSession:Landroid/view/SurfaceSession;

.field final mUid:I

.field final synthetic this$0:Lcom/android/server/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/WindowManagerService;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)V
    .registers 12
    .parameter
    .parameter "client"
    .parameter "inputContext"

    .prologue
    const/4 v5, 0x0

    .line 5920
    iput-object p1, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    invoke-direct {p0}, Landroid/view/IWindowSession$Stub;-><init>()V

    .line 5903
    iput v5, p0, Lcom/android/server/WindowManagerService$Session;->mNumWindow:I

    .line 5904
    iput-boolean v5, p0, Lcom/android/server/WindowManagerService$Session;->mClientDead:Z

    .line 5921
    iput-object p2, p0, Lcom/android/server/WindowManagerService$Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    .line 5922
    iput-object p3, p0, Lcom/android/server/WindowManagerService$Session;->mInputContext:Lcom/android/internal/view/IInputContext;

    .line 5923
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iput v5, p0, Lcom/android/server/WindowManagerService$Session;->mUid:I

    .line 5924
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    iput v5, p0, Lcom/android/server/WindowManagerService$Session;->mPid:I

    .line 5925
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 5926
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v5, "Session{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5927
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5928
    const-string v5, " uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5929
    iget v5, p0, Lcom/android/server/WindowManagerService$Session;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5930
    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5931
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/WindowManagerService$Session;->mStringName:Ljava/lang/String;

    .line 5933
    iget-object v5, p1, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 5934
    :try_start_47
    iget-object v6, p1, Lcom/android/server/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-nez v6, :cond_5b

    iget-boolean v6, p1, Lcom/android/server/WindowManagerService;->mHaveInputMethods:Z

    if-eqz v6, :cond_5b

    .line 5935
    const-string v6, "input_method"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 5937
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v6

    iput-object v6, p1, Lcom/android/server/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    .line 5939
    .end local v0           #b:Landroid/os/IBinder;
    :cond_5b
    monitor-exit v5
    :try_end_5c
    .catchall {:try_start_47 .. :try_end_5c} :catchall_79

    .line 5940
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5944
    .local v2, ident:J
    :try_start_60
    iget-object v5, p1, Lcom/android/server/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v5, :cond_7c

    .line 5945
    iget-object v5, p1, Lcom/android/server/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    iget v6, p0, Lcom/android/server/WindowManagerService$Session;->mUid:I

    iget v7, p0, Lcom/android/server/WindowManagerService$Session;->mPid:I

    invoke-interface {v5, p2, p3, v6, v7}, Lcom/android/internal/view/IInputMethodManager;->addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    .line 5950
    :goto_6d
    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, p0, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_75
    .catchall {:try_start_60 .. :try_end_75} :catchall_8f
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_75} :catch_81

    .line 5960
    :cond_75
    :goto_75
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5962
    return-void

    .line 5939
    .end local v2           #ident:J
    :catchall_79
    move-exception v6

    :try_start_7a
    monitor-exit v5
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v6

    .line 5948
    .restart local v2       #ident:J
    :cond_7c
    const/4 v5, 0x0

    :try_start_7d
    invoke-interface {p2, v5}, Lcom/android/internal/view/IInputMethodClient;->setUsingInputMethod(Z)V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_8f
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_6d

    .line 5951
    :catch_81
    move-exception v5

    move-object v1, v5

    .line 5954
    .local v1, e:Landroid/os/RemoteException;
    :try_start_83
    iget-object v5, p1, Lcom/android/server/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v5, :cond_75

    .line 5955
    iget-object v5, p1, Lcom/android/server/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v5, p2}, Lcom/android/internal/view/IInputMethodManager;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_8c
    .catchall {:try_start_83 .. :try_end_8c} :catchall_8f
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_8c} :catch_8d

    goto :goto_75

    .line 5957
    :catch_8d
    move-exception v5

    goto :goto_75

    .line 5960
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_8f
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method


# virtual methods
.method public add(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;)I
    .registers 11
    .parameter "window"
    .parameter "attrs"
    .parameter "viewVisibility"
    .parameter "outContentInsets"

    .prologue
    .line 5998
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WindowManagerService;->addWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public binderDied()V
    .registers 4

    .prologue
    .line 5982
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v0, :cond_f

    .line 5983
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, Lcom/android/server/WindowManagerService$Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputMethodManager;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_29

    .line 5987
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 5989
    :try_start_14
    iget-object v1, p0, Lcom/android/server/WindowManagerService$Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 5991
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService$Session;->mClientDead:Z

    .line 5992
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$Session;->killSessionLocked()V

    .line 5993
    monitor-exit v0

    .line 5994
    return-void

    .line 5993
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_26

    throw v1

    .line 5985
    :catch_29
    move-exception v0

    goto :goto_f
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 6115
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNumWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$Session;->mNumWindow:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6116
    const-string v0, " mClientDead="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$Session;->mClientDead:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6117
    const-string v0, " mSurfaceSession="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6118
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->mPendingPointerWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->mPendingPointerMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    if-eqz v0, :cond_40

    .line 6119
    :cond_29
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6120
    const-string v0, "mPendingPointerWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->mPendingPointerWindow:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6121
    const-string v0, " mPendingPointerMove="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->mPendingPointerMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6123
    :cond_40
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballWindow:Lcom/android/server/WindowManagerService$WindowState;

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    if-eqz v0, :cond_5f

    .line 6124
    :cond_48
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6125
    const-string v0, "mPendingTrackballWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballWindow:Lcom/android/server/WindowManagerService$WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6126
    const-string v0, " mPendingTrackballMove="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->mPendingTrackballMove:Lcom/android/server/KeyInputQueue$QueuedEvent;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6128
    :cond_5f
    return-void
.end method

.method public finishDrawing(Landroid/view/IWindow;)V
    .registers 3
    .parameter "window"

    .prologue
    .line 6031
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/WindowManagerService;->finishDrawingWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)V

    .line 6032
    return-void
.end method

.method public finishKey(Landroid/view/IWindow;)V
    .registers 4
    .parameter "window"

    .prologue
    const/4 v1, 0x0

    .line 6037
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    invoke-virtual {v0, p0, p1, v1, v1}, Lcom/android/server/WindowManagerService$KeyWaiter;->finishedKey(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;ZI)Landroid/view/MotionEvent;

    .line 6039
    return-void
.end method

.method public getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .registers 4
    .parameter "window"
    .parameter "outDisplayFrame"

    .prologue
    .line 6025
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/WindowManagerService;->getWindowDisplayFrame(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V

    .line 6026
    return-void
.end method

.method public getInTouchMode()Z
    .registers 3

    .prologue
    .line 6062
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 6063
    :try_start_5
    iget-object v1, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    monitor-exit v0

    return v1

    .line 6064
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getPendingPointerMove(Landroid/view/IWindow;)Landroid/view/MotionEvent;
    .registers 5
    .parameter "window"

    .prologue
    .line 6044
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/android/server/WindowManagerService$KeyWaiter;->finishedKey(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;ZI)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public getPendingTrackballMove(Landroid/view/IWindow;)Landroid/view/MotionEvent;
    .registers 5
    .parameter "window"

    .prologue
    .line 6051
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mKeyWaiter:Lcom/android/server/WindowManagerService$KeyWaiter;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/android/server/WindowManagerService$KeyWaiter;->finishedKey(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;ZI)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method killSessionLocked()V
    .registers 5

    .prologue
    .line 6096
    iget v1, p0, Lcom/android/server/WindowManagerService$Session;->mNumWindow:I

    if-gtz v1, :cond_1b

    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$Session;->mClientDead:Z

    if-eqz v1, :cond_1b

    .line 6097
    iget-object v1, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 6098
    iget-object v1, p0, Lcom/android/server/WindowManagerService$Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-eqz v1, :cond_1b

    .line 6103
    :try_start_13
    iget-object v1, p0, Lcom/android/server/WindowManagerService$Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v1}, Landroid/view/SurfaceSession;->kill()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_1c

    .line 6109
    :goto_18
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/WindowManagerService$Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 6112
    :cond_1b
    return-void

    .line 6104
    :catch_1c
    move-exception v1

    move-object v0, v1

    .line 6105
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown when killing surface session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WindowManagerService$Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5968
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowSession$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 5969
    :catch_5
    move-exception v0

    .line 5971
    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 5972
    const-string v1, "WindowManager"

    const-string v2, "Window Session Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5974
    :cond_11
    throw v0
.end method

.method public performHapticFeedback(Landroid/view/IWindow;IZ)Z
    .registers 9
    .parameter "window"
    .parameter "effectId"
    .parameter "always"

    .prologue
    .line 6069
    iget-object v2, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 6070
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_21

    move-result-wide v0

    .line 6072
    .local v0, ident:J
    :try_start_9
    iget-object v3, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v4, p0, p1}, Lcom/android/server/WindowManagerService;->windowForClientLocked(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)Lcom/android/server/WindowManagerService$WindowState;

    move-result-object v4

    invoke-interface {v3, v4, p2, p3}, Landroid/view/WindowManagerPolicy;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_1c

    move-result v3

    .line 6075
    :try_start_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6072
    monitor-exit v2

    return v3

    .line 6075
    :catchall_1c
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 6077
    .end local v0           #ident:J
    :catchall_21
    move-exception v3

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_21

    throw v3
.end method

.method public relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/Surface;)I
    .registers 23
    .parameter "window"
    .parameter "attrs"
    .parameter "requestedWidth"
    .parameter "requestedHeight"
    .parameter "viewFlags"
    .parameter "insetsPending"
    .parameter "outFrame"
    .parameter "outContentInsets"
    .parameter "outVisibleInsets"
    .parameter "outSurface"

    .prologue
    .line 6009
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/WindowManagerService;->relayoutWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/Surface;)I

    move-result v0

    return v0
.end method

.method public remove(Landroid/view/IWindow;)V
    .registers 3
    .parameter "window"

    .prologue
    .line 6002
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/WindowManagerService;->removeWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;)V

    .line 6003
    return-void
.end method

.method public setInTouchMode(Z)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 6056
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 6057
    :try_start_5
    iget-object v1, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iput-boolean p1, v1, Lcom/android/server/WindowManagerService;->mInTouchMode:Z

    .line 6058
    monitor-exit v0

    .line 6059
    return-void

    .line 6058
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 11
    .parameter "window"
    .parameter "touchableInsets"
    .parameter "contentInsets"
    .parameter "visibleInsets"

    .prologue
    .line 6020
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WindowManagerService;->setInsetsWindow(Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 6022
    return-void
.end method

.method public setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 4
    .parameter "window"
    .parameter "region"

    .prologue
    .line 6015
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/WindowManagerService;->access$1400(Lcom/android/server/WindowManagerService;Lcom/android/server/WindowManagerService$Session;Landroid/view/IWindow;Landroid/graphics/Region;)V

    .line 6016
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 6132
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->mStringName:Ljava/lang/String;

    return-object v0
.end method

.method windowAddedLocked()V
    .registers 2

    .prologue
    .line 6081
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v0, :cond_12

    .line 6084
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/WindowManagerService$Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 6085
    iget-object v0, p0, Lcom/android/server/WindowManagerService$Session;->this$0:Lcom/android/server/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/WindowManagerService;->mSessions:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6087
    :cond_12
    iget v0, p0, Lcom/android/server/WindowManagerService$Session;->mNumWindow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/WindowManagerService$Session;->mNumWindow:I

    .line 6088
    return-void
.end method

.method windowRemovedLocked()V
    .registers 3

    .prologue
    .line 6091
    iget v0, p0, Lcom/android/server/WindowManagerService$Session;->mNumWindow:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/WindowManagerService$Session;->mNumWindow:I

    .line 6092
    invoke-virtual {p0}, Lcom/android/server/WindowManagerService$Session;->killSessionLocked()V

    .line 6093
    return-void
.end method
