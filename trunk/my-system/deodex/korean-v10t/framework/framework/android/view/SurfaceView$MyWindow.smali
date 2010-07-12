.class Landroid/view/SurfaceView$MyWindow;
.super Landroid/view/IWindow$Stub;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyWindow"
.end annotation


# instance fields
.field mCurHeight:I

.field mCurWidth:I

.field private final mSurfaceView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/SurfaceView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;)V
    .registers 3
    .parameter "surfaceView"

    .prologue
    const/4 v0, -0x1

    .line 440
    invoke-direct {p0}, Landroid/view/IWindow$Stub;-><init>()V

    .line 518
    iput v0, p0, Landroid/view/SurfaceView$MyWindow;->mCurWidth:I

    .line 519
    iput v0, p0, Landroid/view/SurfaceView$MyWindow;->mCurHeight:I

    .line 441
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/SurfaceView$MyWindow;->mSurfaceView:Ljava/lang/ref/WeakReference;

    .line 442
    return-void
.end method


# virtual methods
.method public dispatchAppVisibility(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 501
    return-void
.end method

.method public dispatchGetNewSurface()V
    .registers 5

    .prologue
    .line 504
    iget-object v2, p0, Landroid/view/SurfaceView$MyWindow;->mSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    .line 505
    .local v1, surfaceView:Landroid/view/SurfaceView;
    if-eqz v1, :cond_16

    .line 506
    iget-object v2, v1, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 507
    .local v0, msg:Landroid/os/Message;
    iget-object v2, v1, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 509
    .end local v0           #msg:Landroid/os/Message;
    :cond_16
    return-void
.end method

.method public dispatchKey(Landroid/view/KeyEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 467
    iget-object v1, p0, Landroid/view/SurfaceView$MyWindow;->mSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 468
    .local v0, surfaceView:Landroid/view/SurfaceView;
    if-eqz v0, :cond_19

    .line 470
    iget-object v1, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    if-eqz v1, :cond_19

    iget-object v1, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_19

    .line 472
    :try_start_12
    iget-object v1, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v2, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->finishKey(Landroid/view/IWindow;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 477
    :cond_19
    :goto_19
    return-void

    .line 473
    :catch_1a
    move-exception v1

    goto :goto_19
.end method

.method public dispatchPointer(Landroid/view/MotionEvent;J)V
    .registers 7
    .parameter "event"
    .parameter "eventTime"

    .prologue
    .line 480
    const-string v0, "SurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected pointer event in surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-void
.end method

.method public dispatchTrackball(Landroid/view/MotionEvent;J)V
    .registers 7
    .parameter "event"
    .parameter "eventTime"

    .prologue
    .line 490
    const-string v0, "SurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected trackball event in surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return-void
.end method

.method public executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .parameter "command"
    .parameter "parameters"
    .parameter "out"

    .prologue
    .line 516
    return-void
.end method

.method public resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 9
    .parameter "w"
    .parameter "h"
    .parameter "coveredInsets"
    .parameter "visibleInsets"
    .parameter "reportDraw"

    .prologue
    .line 446
    iget-object v1, p0, Landroid/view/SurfaceView$MyWindow;->mSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 447
    .local v0, surfaceView:Landroid/view/SurfaceView;
    if-eqz v0, :cond_21

    .line 451
    monitor-enter p0

    .line 452
    :try_start_b
    iget v1, p0, Landroid/view/SurfaceView$MyWindow;->mCurWidth:I

    if-ne v1, p1, :cond_13

    iget v1, p0, Landroid/view/SurfaceView$MyWindow;->mCurHeight:I

    if-eq v1, p2, :cond_17

    .line 453
    :cond_13
    iput p1, p0, Landroid/view/SurfaceView$MyWindow;->mCurWidth:I

    .line 454
    iput p2, p0, Landroid/view/SurfaceView$MyWindow;->mCurHeight:I
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_22

    .line 456
    :cond_17
    if-eqz p5, :cond_20

    .line 458
    :try_start_19
    iget-object v1, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v2, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_22
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_20} :catch_25

    .line 462
    :cond_20
    :goto_20
    :try_start_20
    monitor-exit p0

    .line 464
    :cond_21
    return-void

    .line 462
    :catchall_22
    move-exception v1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_22

    throw v1

    .line 459
    :catch_25
    move-exception v1

    goto :goto_20
.end method

.method public windowFocusChanged(ZZ)V
    .registers 6
    .parameter "hasFocus"
    .parameter "touchEnabled"

    .prologue
    .line 512
    const-string v0, "SurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected focus in surface: focus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", touchEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return-void
.end method
