.class Landroid/opengl/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GLThread"
.end annotation


# instance fields
.field private mDone:Z

.field private mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderMode:I

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private mRequestRender:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field final synthetic this$0:Landroid/opengl/GLSurfaceView;


# direct methods
.method constructor <init>(Landroid/opengl/GLSurfaceView;Landroid/opengl/GLSurfaceView$Renderer;)V
    .registers 6
    .parameter
    .parameter "renderer"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 863
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    .line 864
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 865
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mDone:Z

    .line 866
    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 867
    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 868
    iput-boolean v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 869
    iput v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 870
    iput-object p2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 871
    const-string v0, "GLThread"

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 872
    return-void
.end method

.method private getEvent()Ljava/lang/Runnable;
    .registers 3

    .prologue
    .line 1097
    monitor-enter p0

    .line 1098
    :try_start_1
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 1099
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    monitor-exit p0

    .line 1103
    :goto_13
    return-object v0

    .line 1102
    :cond_14
    monitor-exit p0

    .line 1103
    const/4 v0, 0x0

    goto :goto_13

    .line 1102
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_17

    throw v0
.end method

.method private guardedRun()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 899
    new-instance v8, Landroid/opengl/GLSurfaceView$EglHelper;

    iget-object v9, p0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    invoke-direct {v8, v9}, Landroid/opengl/GLSurfaceView$EglHelper;-><init>(Landroid/opengl/GLSurfaceView;)V

    iput-object v8, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    .line 900
    iget-object v8, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v8}, Landroid/opengl/GLSurfaceView$EglHelper;->start()V

    .line 902
    const/4 v1, 0x0

    .line 903
    .local v1, gl:Ljavax/microedition/khronos/opengles/GL10;
    const/4 v6, 0x1

    .line 904
    .local v6, tellRendererSurfaceCreated:Z
    const/4 v5, 0x1

    .line 910
    .local v5, tellRendererSurfaceChanged:Z
    :cond_11
    :goto_11
    iget-boolean v8, p0, Landroid/opengl/GLSurfaceView$GLThread;->mDone:Z

    if-nez v8, :cond_55

    .line 917
    const/4 v3, 0x0

    .line 918
    .local v3, needStart:Z
    monitor-enter p0

    .line 920
    :goto_17
    :try_start_17
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getEvent()Ljava/lang/Runnable;

    move-result-object v4

    .local v4, r:Ljava/lang/Runnable;
    if-eqz v4, :cond_24

    .line 921
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_17

    .line 951
    .end local v4           #r:Ljava/lang/Runnable;
    :catchall_21
    move-exception v8

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_21

    throw v8

    .line 923
    .restart local v4       #r:Ljava/lang/Runnable;
    :cond_24
    :try_start_24
    iget-boolean v8, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v8, :cond_33

    .line 924
    iget-object v8, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v8}, Landroid/opengl/GLSurfaceView$EglHelper;->destroySurface()V

    .line 925
    iget-object v8, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v8}, Landroid/opengl/GLSurfaceView$EglHelper;->finish()V

    .line 926
    const/4 v3, 0x1

    .line 928
    :cond_33
    :goto_33
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->needToWait()Z

    move-result v8

    if-eqz v8, :cond_50

    .line 929
    iget-boolean v8, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-nez v8, :cond_4c

    .line 930
    iget-boolean v8, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v8, :cond_4c

    .line 931
    iget-object v8, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v8}, Landroid/opengl/GLSurfaceView$EglHelper;->destroySurface()V

    .line 932
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 933
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 936
    :cond_4c
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_33

    .line 938
    :cond_50
    iget-boolean v8, p0, Landroid/opengl/GLSurfaceView$GLThread;->mDone:Z

    if-eqz v8, :cond_60

    .line 939
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_24 .. :try_end_55} :catchall_21

    .line 984
    .end local v3           #needStart:Z
    .end local v4           #r:Ljava/lang/Runnable;
    :cond_55
    iget-object v8, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v8}, Landroid/opengl/GLSurfaceView$EglHelper;->destroySurface()V

    .line 985
    iget-object v8, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v8}, Landroid/opengl/GLSurfaceView$EglHelper;->finish()V

    .line 986
    return-void

    .line 941
    .restart local v3       #needStart:Z
    .restart local v4       #r:Ljava/lang/Runnable;
    :cond_60
    :try_start_60
    iget-object v8, p0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    invoke-static {v8}, Landroid/opengl/GLSurfaceView;->access$400(Landroid/opengl/GLSurfaceView;)Z

    move-result v0

    .line 942
    .local v0, changed:Z
    iget v7, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 943
    .local v7, w:I
    iget v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 944
    .local v2, h:I
    iget-object v8, p0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/opengl/GLSurfaceView;->access$402(Landroid/opengl/GLSurfaceView;Z)Z

    .line 945
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 946
    iget-boolean v8, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v8, :cond_82

    iget-boolean v8, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v8, :cond_82

    .line 947
    const/4 v0, 0x1

    .line 948
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 949
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 951
    :cond_82
    monitor-exit p0
    :try_end_83
    .catchall {:try_start_60 .. :try_end_83} :catchall_21

    .line 952
    if-eqz v3, :cond_8c

    .line 953
    iget-object v8, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v8}, Landroid/opengl/GLSurfaceView$EglHelper;->start()V

    .line 954
    const/4 v6, 0x1

    .line 955
    const/4 v0, 0x1

    .line 957
    :cond_8c
    if-eqz v0, :cond_9d

    .line 958
    iget-object v8, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    iget-object v9, p0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v9}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/opengl/GLSurfaceView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .end local v1           #gl:Ljavax/microedition/khronos/opengles/GL10;
    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    .line 959
    .restart local v1       #gl:Ljavax/microedition/khronos/opengles/GL10;
    const/4 v5, 0x1

    .line 961
    :cond_9d
    if-eqz v6, :cond_a9

    .line 962
    iget-object v8, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v9, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    iget-object v9, v9, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v8, v1, v9}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 963
    const/4 v6, 0x0

    .line 965
    :cond_a9
    if-eqz v5, :cond_b1

    .line 966
    iget-object v8, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-interface {v8, v1, v7, v2}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 967
    const/4 v5, 0x0

    .line 969
    :cond_b1
    if-lez v7, :cond_11

    if-lez v2, :cond_11

    .line 971
    iget-object v8, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-interface {v8, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 977
    iget-object v8, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v8}, Landroid/opengl/GLSurfaceView$EglHelper;->swap()Z

    goto/16 :goto_11
.end method

.method private needToWait()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 989
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mDone:Z

    if-eqz v0, :cond_8

    move v0, v2

    .line 1001
    :goto_7
    return v0

    .line 993
    :cond_8
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-nez v0, :cond_12

    :cond_10
    move v0, v1

    .line 994
    goto :goto_7

    .line 997
    :cond_12
    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    if-lez v0, :cond_24

    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    if-lez v0, :cond_24

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v0, :cond_22

    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne v0, v1, :cond_24

    :cond_22
    move v0, v2

    .line 998
    goto :goto_7

    :cond_24
    move v0, v1

    .line 1001
    goto :goto_7
.end method


# virtual methods
.method public getRenderMode()I
    .registers 2

    .prologue
    .line 1017
    monitor-enter p0

    .line 1018
    :try_start_1
    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit p0

    return v0

    .line 1019
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 1051
    monitor-enter p0

    .line 1052
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    .line 1053
    monitor-exit p0

    .line 1054
    return-void

    .line 1053
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 1057
    monitor-enter p0

    .line 1058
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    .line 1059
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1060
    monitor-exit p0

    .line 1061
    return-void

    .line 1060
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public onWindowResize(II)V
    .registers 5
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1064
    monitor-enter p0

    .line 1065
    :try_start_1
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1066
    iput p2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1067
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->this$0:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLSurfaceView;->access$402(Landroid/opengl/GLSurfaceView;Z)Z

    .line 1068
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1069
    monitor-exit p0

    .line 1070
    return-void

    .line 1069
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 1091
    monitor-enter p0

    .line 1092
    :try_start_1
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    monitor-exit p0

    .line 1094
    return-void

    .line 1093
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public requestExitAndWait()V
    .registers 3

    .prologue
    .line 1075
    monitor-enter p0

    .line 1076
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mDone:Z

    .line 1077
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1078
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_c

    .line 1080
    :try_start_8
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->join()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_f

    .line 1084
    :goto_b
    return-void

    .line 1078
    :catchall_c
    move-exception v1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v1

    .line 1081
    :catch_f
    move-exception v0

    .line 1082
    .local v0, ex:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_b
.end method

.method public requestRender()V
    .registers 2

    .prologue
    .line 1023
    monitor-enter p0

    .line 1024
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1025
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1026
    monitor-exit p0

    .line 1027
    return-void

    .line 1026
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public run()V
    .registers 4

    .prologue
    .line 886
    :try_start_0
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$300()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_19
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_7} :catch_12

    .line 890
    :try_start_7
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_19
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_22

    .line 894
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$300()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    :goto_e
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 896
    return-void

    .line 887
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 894
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$300()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    goto :goto_e

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_19
    move-exception v1

    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$300()Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    throw v1

    .line 891
    :catch_22
    move-exception v1

    .line 894
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$300()Ljava/util/concurrent/Semaphore;

    move-result-object v1

    goto :goto_e
.end method

.method public setRenderMode(I)V
    .registers 4
    .parameter "renderMode"

    .prologue
    const/4 v0, 0x1

    .line 1005
    if-ltz p1, :cond_5

    if-le p1, v0, :cond_d

    .line 1006
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1008
    :cond_d
    monitor-enter p0

    .line 1009
    :try_start_e
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1010
    if-ne p1, v0, :cond_15

    .line 1011
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1013
    :cond_15
    monitor-exit p0

    .line 1014
    return-void

    .line 1013
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_17

    throw v0
.end method

.method public surfaceCreated()V
    .registers 2

    .prologue
    .line 1030
    monitor-enter p0

    .line 1031
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1032
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1033
    monitor-exit p0

    .line 1034
    return-void

    .line 1033
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public surfaceDestroyed()V
    .registers 3

    .prologue
    .line 1037
    monitor-enter p0

    .line 1038
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1039
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1040
    :goto_7
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_18

    if-nez v1, :cond_1b

    .line 1042
    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_18
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_7

    .line 1043
    :catch_f
    move-exception v0

    .line 1044
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_7

    .line 1047
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_18
    move-exception v1

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_18

    throw v1

    :cond_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_18

    .line 1048
    return-void
.end method
