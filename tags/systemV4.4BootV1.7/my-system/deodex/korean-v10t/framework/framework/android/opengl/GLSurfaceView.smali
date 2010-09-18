.class public Landroid/opengl/GLSurfaceView;
.super Landroid/view/SurfaceView;
.source "GLSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/opengl/GLSurfaceView$LogWriter;,
        Landroid/opengl/GLSurfaceView$GLThread;,
        Landroid/opengl/GLSurfaceView$EglHelper;,
        Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;,
        Landroid/opengl/GLSurfaceView$ComponentSizeChooser;,
        Landroid/opengl/GLSurfaceView$BaseConfigChooser;,
        Landroid/opengl/GLSurfaceView$EGLConfigChooser;,
        Landroid/opengl/GLSurfaceView$Renderer;,
        Landroid/opengl/GLSurfaceView$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I

.field private static final sEglSemaphore:Ljava/util/concurrent/Semaphore;


# instance fields
.field private mDebugFlags:I

.field private mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

.field private mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

.field private mGLWrapper:Landroid/opengl/GLSurfaceView$GLWrapper;

.field private mSizeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1151
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Landroid/opengl/GLSurfaceView;->sEglSemaphore:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1152
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView;->mSizeChanged:Z

    .line 190
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->init()V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1152
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView;->mSizeChanged:Z

    .line 199
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView;->init()V

    .line 200
    return-void
.end method

.method static synthetic access$000(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLConfigChooser;
    .registers 2
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$100(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$GLWrapper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 147
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLWrapper:Landroid/opengl/GLSurfaceView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$200(Landroid/opengl/GLSurfaceView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 147
    iget v0, p0, Landroid/opengl/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/Semaphore;
    .registers 1

    .prologue
    .line 147
    sget-object v0, Landroid/opengl/GLSurfaceView;->sEglSemaphore:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$400(Landroid/opengl/GLSurfaceView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 147
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView;->mSizeChanged:Z

    return v0
.end method

.method static synthetic access$402(Landroid/opengl/GLSurfaceView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    iput-boolean p1, p0, Landroid/opengl/GLSurfaceView;->mSizeChanged:Z

    return p1
.end method

.method private init()V
    .registers 3

    .prologue
    .line 205
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 206
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 207
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 208
    return-void
.end method


# virtual methods
.method public getDebugFlags()I
    .registers 2

    .prologue
    .line 245
    iget v0, p0, Landroid/opengl/GLSurfaceView;->mDebugFlags:I

    return v0
.end method

.method public getRenderMode()I
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 446
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 447
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->requestExitAndWait()V

    .line 448
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->onPause()V

    .line 416
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 426
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->onResume()V

    .line 427
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 436
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 437
    return-void
.end method

.method public requestRender()V
    .registers 2

    .prologue
    .line 380
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->requestRender()V

    .line 381
    return-void
.end method

.method public setDebugFlags(I)V
    .registers 2
    .parameter "debugFlags"

    .prologue
    .line 237
    iput p1, p0, Landroid/opengl/GLSurfaceView;->mDebugFlags:I

    .line 238
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .registers 14
    .parameter "redSize"
    .parameter "greenSize"
    .parameter "blueSize"
    .parameter "alphaSize"
    .parameter "depthSize"
    .parameter "stencilSize"

    .prologue
    .line 338
    new-instance v0, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;-><init>(IIIIII)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 340
    return-void
.end method

.method public setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V
    .registers 4
    .parameter "configChooser"

    .prologue
    .line 298
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_c

    .line 299
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_c
    iput-object p1, p0, Landroid/opengl/GLSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .line 303
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .registers 3
    .parameter "needDepth"

    .prologue
    .line 320
    new-instance v0, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p1}, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Z)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 321
    return-void
.end method

.method public setGLWrapper(Landroid/opengl/GLSurfaceView$GLWrapper;)V
    .registers 2
    .parameter "glWrapper"

    .prologue
    .line 224
    iput-object p1, p0, Landroid/opengl/GLSurfaceView;->mGLWrapper:Landroid/opengl/GLSurfaceView$GLWrapper;

    .line 225
    return-void
.end method

.method public setRenderMode(I)V
    .registers 3
    .parameter "renderMode"

    .prologue
    .line 358
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView$GLThread;->setRenderMode(I)V

    .line 359
    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .registers 4
    .parameter "renderer"

    .prologue
    .line 275
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_c

    .line 276
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_c
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    if-nez v0, :cond_18

    .line 280
    new-instance v0, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Z)V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mEGLConfigChooser:Landroid/opengl/GLSurfaceView$EGLConfigChooser;

    .line 282
    :cond_18
    new-instance v0, Landroid/opengl/GLSurfaceView$GLThread;

    invoke-direct {v0, p0, p1}, Landroid/opengl/GLSurfaceView$GLThread;-><init>(Landroid/opengl/GLSurfaceView;Landroid/opengl/GLSurfaceView$Renderer;)V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    .line 283
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->start()V

    .line 284
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 405
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0, p3, p4}, Landroid/opengl/GLSurfaceView$GLThread;->onWindowResize(II)V

    .line 406
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "holder"

    .prologue
    .line 388
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->surfaceCreated()V

    .line 389
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "holder"

    .prologue
    .line 397
    iget-object v0, p0, Landroid/opengl/GLSurfaceView;->mGLThread:Landroid/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$GLThread;->surfaceDestroyed()V

    .line 398
    return-void
.end method
