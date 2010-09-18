.class Landroid/view/ViewRoot$W;
.super Landroid/view/IWindow$Stub;
.source "ViewRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "W"
.end annotation


# instance fields
.field private final mMainLooper:Landroid/os/Looper;

.field private final mViewRoot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewRoot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewRoot;Landroid/content/Context;)V
    .registers 4
    .parameter "viewRoot"
    .parameter "context"

    .prologue
    .line 2727
    invoke-direct {p0}, Landroid/view/IWindow$Stub;-><init>()V

    .line 2728
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/ViewRoot$W;->mViewRoot:Ljava/lang/ref/WeakReference;

    .line 2729
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRoot$W;->mMainLooper:Landroid/os/Looper;

    .line 2730
    return-void
.end method

.method private static checkCallingPermission(Ljava/lang/String;)I
    .registers 5
    .parameter "permission"

    .prologue
    .line 2791
    invoke-static {}, Landroid/os/Process;->supportsProcesses()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2792
    const/4 v1, 0x0

    .line 2799
    :goto_7
    return v1

    .line 2796
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-interface {v1, p0, v2, v3}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_7

    .line 2798
    :catch_19
    move-exception v1

    move-object v0, v1

    .line 2799
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_7
.end method


# virtual methods
.method public dispatchAppVisibility(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 2770
    iget-object v1, p0, Landroid/view/ViewRoot$W;->mViewRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRoot;

    .line 2771
    .local v0, viewRoot:Landroid/view/ViewRoot;
    if-eqz v0, :cond_d

    .line 2772
    invoke-virtual {v0, p1}, Landroid/view/ViewRoot;->dispatchAppVisibility(Z)V

    .line 2774
    :cond_d
    return-void
.end method

.method public dispatchGetNewSurface()V
    .registers 3

    .prologue
    .line 2777
    iget-object v1, p0, Landroid/view/ViewRoot$W;->mViewRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRoot;

    .line 2778
    .local v0, viewRoot:Landroid/view/ViewRoot;
    if-eqz v0, :cond_d

    .line 2779
    invoke-virtual {v0}, Landroid/view/ViewRoot;->dispatchGetNewSurface()V

    .line 2781
    :cond_d
    return-void
.end method

.method public dispatchKey(Landroid/view/KeyEvent;)V
    .registers 9
    .parameter "event"

    .prologue
    .line 2742
    iget-object v0, p0, Landroid/view/ViewRoot$W;->mViewRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewRoot;

    .line 2743
    .local v6, viewRoot:Landroid/view/ViewRoot;
    if-eqz v6, :cond_e

    .line 2744
    invoke-virtual {v6, p1}, Landroid/view/ViewRoot;->dispatchKey(Landroid/view/KeyEvent;)V

    .line 2749
    :goto_d
    return-void

    .line 2746
    :cond_e
    const-string v0, "ViewRoot.W"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but no ViewRoot available!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2747
    new-instance v0, Landroid/view/ViewRoot$EventCompletion;

    iget-object v1, p0, Landroid/view/ViewRoot$W;->mMainLooper:Landroid/os/Looper;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/ViewRoot$EventCompletion;-><init>(Landroid/os/Looper;Landroid/view/IWindow;Landroid/view/KeyEvent;ZLandroid/view/MotionEvent;)V

    goto :goto_d
.end method

.method public dispatchPointer(Landroid/view/MotionEvent;J)V
    .registers 11
    .parameter "event"
    .parameter "eventTime"

    .prologue
    .line 2752
    iget-object v0, p0, Landroid/view/ViewRoot$W;->mViewRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewRoot;

    .line 2753
    .local v6, viewRoot:Landroid/view/ViewRoot;
    if-eqz v6, :cond_e

    .line 2754
    invoke-virtual {v6, p1, p2, p3}, Landroid/view/ViewRoot;->dispatchPointer(Landroid/view/MotionEvent;J)V

    .line 2758
    :goto_d
    return-void

    .line 2756
    :cond_e
    new-instance v0, Landroid/view/ViewRoot$EventCompletion;

    iget-object v1, p0, Landroid/view/ViewRoot$W;->mMainLooper:Landroid/os/Looper;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/ViewRoot$EventCompletion;-><init>(Landroid/os/Looper;Landroid/view/IWindow;Landroid/view/KeyEvent;ZLandroid/view/MotionEvent;)V

    goto :goto_d
.end method

.method public dispatchTrackball(Landroid/view/MotionEvent;J)V
    .registers 11
    .parameter "event"
    .parameter "eventTime"

    .prologue
    .line 2761
    iget-object v0, p0, Landroid/view/ViewRoot$W;->mViewRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewRoot;

    .line 2762
    .local v6, viewRoot:Landroid/view/ViewRoot;
    if-eqz v6, :cond_e

    .line 2763
    invoke-virtual {v6, p1, p2, p3}, Landroid/view/ViewRoot;->dispatchTrackball(Landroid/view/MotionEvent;J)V

    .line 2767
    :goto_d
    return-void

    .line 2765
    :cond_e
    new-instance v0, Landroid/view/ViewRoot$EventCompletion;

    iget-object v1, p0, Landroid/view/ViewRoot$W;->mMainLooper:Landroid/os/Looper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/ViewRoot$EventCompletion;-><init>(Landroid/os/Looper;Landroid/view/IWindow;Landroid/view/KeyEvent;ZLandroid/view/MotionEvent;)V

    goto :goto_d
.end method

.method public executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 12
    .parameter "command"
    .parameter "parameters"
    .parameter "out"

    .prologue
    .line 2804
    iget-object v5, p0, Landroid/view/ViewRoot$W;->mViewRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewRoot;

    .line 2805
    .local v4, viewRoot:Landroid/view/ViewRoot;
    if-eqz v4, :cond_4f

    .line 2806
    iget-object v3, v4, Landroid/view/ViewRoot;->mView:Landroid/view/View;

    .line 2807
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_4f

    .line 2808
    const-string v5, "android.permission.DUMP"

    invoke-static {v5}, Landroid/view/ViewRoot$W;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_41

    .line 2810
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Insufficient permissions to invoke executeCommand() from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2815
    :cond_41
    const/4 v0, 0x0

    .line 2817
    .local v0, clientStream:Ljava/io/OutputStream;
    :try_start_42
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v1, p3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_60
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_47} :catch_50

    .line 2818
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .local v1, clientStream:Ljava/io/OutputStream;
    :try_start_47
    invoke-static {v3, p1, p2, v1}, Landroid/view/ViewDebug;->dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_6e
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_71

    .line 2822
    if-eqz v1, :cond_4f

    .line 2824
    :try_start_4c
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_6c

    .line 2832
    .end local v1           #clientStream:Ljava/io/OutputStream;
    .end local v3           #view:Landroid/view/View;
    :cond_4f
    :goto_4f
    return-void

    .line 2819
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    .restart local v3       #view:Landroid/view/View;
    :catch_50
    move-exception v5

    move-object v2, v5

    .line 2820
    .local v2, e:Ljava/io/IOException;
    :goto_52
    :try_start_52
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_60

    .line 2822
    if-eqz v0, :cond_4f

    .line 2824
    :try_start_57
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_4f

    .line 2825
    :catch_5b
    move-exception v2

    .line 2826
    .end local v0           #clientStream:Ljava/io/OutputStream;
    :goto_5c
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4f

    .line 2822
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    :catchall_60
    move-exception v5

    :goto_61
    if-eqz v0, :cond_66

    .line 2824
    :try_start_63
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    .line 2822
    :cond_66
    :goto_66
    throw v5

    .line 2825
    :catch_67
    move-exception v2

    .line 2826
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_66

    .line 2825
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #clientStream:Ljava/io/OutputStream;
    :catch_6c
    move-exception v2

    goto :goto_5c

    .line 2822
    :catchall_6e
    move-exception v5

    move-object v0, v1

    .end local v1           #clientStream:Ljava/io/OutputStream;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    goto :goto_61

    .line 2819
    .end local v0           #clientStream:Ljava/io/OutputStream;
    .restart local v1       #clientStream:Ljava/io/OutputStream;
    :catch_71
    move-exception v5

    move-object v2, v5

    move-object v0, v1

    .end local v1           #clientStream:Ljava/io/OutputStream;
    .restart local v0       #clientStream:Ljava/io/OutputStream;
    goto :goto_52
.end method

.method public resized(IILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 12
    .parameter "w"
    .parameter "h"
    .parameter "coveredInsets"
    .parameter "visibleInsets"
    .parameter "reportDraw"

    .prologue
    .line 2734
    iget-object v1, p0, Landroid/view/ViewRoot$W;->mViewRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRoot;

    .line 2735
    .local v0, viewRoot:Landroid/view/ViewRoot;
    if-eqz v0, :cond_12

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 2736
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewRoot;->dispatchResized(IILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 2739
    :cond_12
    return-void
.end method

.method public windowFocusChanged(ZZ)V
    .registers 5
    .parameter "hasFocus"
    .parameter "inTouchMode"

    .prologue
    .line 2784
    iget-object v1, p0, Landroid/view/ViewRoot$W;->mViewRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRoot;

    .line 2785
    .local v0, viewRoot:Landroid/view/ViewRoot;
    if-eqz v0, :cond_d

    .line 2786
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRoot;->windowFocusChanged(ZZ)V

    .line 2788
    :cond_d
    return-void
.end method
