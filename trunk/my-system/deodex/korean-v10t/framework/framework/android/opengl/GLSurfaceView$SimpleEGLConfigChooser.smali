.class Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;
.super Landroid/opengl/GLSurfaceView$ComponentSizeChooser;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleEGLConfigChooser"
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .registers 10
    .parameter "withDepthBuffer"

    .prologue
    const/4 v7, 0x5

    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 709
    if-eqz p1, :cond_17

    const/16 v0, 0x10

    move v5, v0

    :goto_8
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/opengl/GLSurfaceView$ComponentSizeChooser;-><init>(IIIIII)V

    .line 712
    iput v7, p0, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;->mRedSize:I

    .line 713
    const/4 v0, 0x6

    iput v0, p0, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;->mGreenSize:I

    .line 714
    iput v7, p0, Landroid/opengl/GLSurfaceView$SimpleEGLConfigChooser;->mBlueSize:I

    .line 715
    return-void

    :cond_17
    move v5, v4

    .line 709
    goto :goto_8
.end method
