.class Landroid/opengl/GLErrorWrapper;
.super Landroid/opengl/GLWrapperBase;
.source "GLErrorWrapper.java"


# instance fields
.field mCheckError:Z

.field mCheckThread:Z

.field mOurThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL;I)V
    .registers 6
    .parameter "gl"
    .parameter "configFlags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/opengl/GLWrapperBase;-><init>(Ljavax/microedition/khronos/opengles/GL;)V

    .line 40
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_14

    move v0, v2

    :goto_a
    iput-boolean v0, p0, Landroid/opengl/GLErrorWrapper;->mCheckError:Z

    .line 41
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_16

    move v0, v2

    :goto_11
    iput-boolean v0, p0, Landroid/opengl/GLErrorWrapper;->mCheckThread:Z

    .line 42
    return-void

    :cond_14
    move v0, v1

    .line 40
    goto :goto_a

    :cond_16
    move v0, v1

    .line 41
    goto :goto_11
.end method

.method private checkError()V
    .registers 3

    .prologue
    .line 59
    iget-boolean v1, p0, Landroid/opengl/GLErrorWrapper;->mCheckError:Z

    if-eqz v1, :cond_12

    .line 61
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    .local v0, glError:I
    if-eqz v0, :cond_12

    .line 62
    new-instance v1, Landroid/opengl/GLException;

    invoke-direct {v1, v0}, Landroid/opengl/GLException;-><init>(I)V

    throw v1

    .line 65
    .end local v0           #glError:I
    :cond_12
    return-void
.end method

.method private checkThread()V
    .registers 5

    .prologue
    .line 45
    iget-boolean v1, p0, Landroid/opengl/GLErrorWrapper;->mCheckThread:Z

    if-eqz v1, :cond_e

    .line 46
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 47
    .local v0, currentThread:Ljava/lang/Thread;
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mOurThread:Ljava/lang/Thread;

    if-nez v1, :cond_f

    .line 48
    iput-object v0, p0, Landroid/opengl/GLErrorWrapper;->mOurThread:Ljava/lang/Thread;

    .line 56
    .end local v0           #currentThread:Ljava/lang/Thread;
    :cond_e
    return-void

    .line 50
    .restart local v0       #currentThread:Ljava/lang/Thread;
    :cond_f
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mOurThread:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 51
    new-instance v1, Landroid/opengl/GLException;

    const/16 v2, 0x7000

    const-string v3, "OpenGL method called from wrong thread."

    invoke-direct {v1, v2, v3}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public glActiveTexture(I)V
    .registers 3
    .parameter "texture"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 72
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 73
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 74
    return-void
.end method

.method public glAlphaFunc(IF)V
    .registers 4
    .parameter "func"
    .parameter "ref"

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 78
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    .line 79
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 80
    return-void
.end method

.method public glAlphaFuncx(II)V
    .registers 4
    .parameter "func"
    .parameter "ref"

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 84
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFuncx(II)V

    .line 85
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 86
    return-void
.end method

.method public glBindTexture(II)V
    .registers 4
    .parameter "target"
    .parameter "texture"

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 90
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 91
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 92
    return-void
.end method

.method public glBlendFunc(II)V
    .registers 4
    .parameter "sfactor"
    .parameter "dfactor"

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 96
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 97
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 98
    return-void
.end method

.method public glClear(I)V
    .registers 3
    .parameter "mask"

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 102
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 103
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 104
    return-void
.end method

.method public glClearColor(FFFF)V
    .registers 6
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 108
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 109
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 110
    return-void
.end method

.method public glClearColorx(IIII)V
    .registers 6
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 114
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColorx(IIII)V

    .line 115
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 116
    return-void
.end method

.method public glClearDepthf(F)V
    .registers 3
    .parameter "depth"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 120
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    .line 121
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 122
    return-void
.end method

.method public glClearDepthx(I)V
    .registers 3
    .parameter "depth"

    .prologue
    .line 125
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 126
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthx(I)V

    .line 127
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 128
    return-void
.end method

.method public glClearStencil(I)V
    .registers 3
    .parameter "s"

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 132
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearStencil(I)V

    .line 133
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 134
    return-void
.end method

.method public glClientActiveTexture(I)V
    .registers 3
    .parameter "texture"

    .prologue
    .line 137
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 138
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    .line 139
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 140
    return-void
.end method

.method public glClipPlanef(ILjava/nio/FloatBuffer;)V
    .registers 4
    .parameter "plane"
    .parameter "equation"

    .prologue
    .line 853
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 854
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(ILjava/nio/FloatBuffer;)V

    .line 855
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 856
    return-void
.end method

.method public glClipPlanef(I[FI)V
    .registers 5
    .parameter "plane"
    .parameter "equation"
    .parameter "offset"

    .prologue
    .line 847
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 848
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(I[FI)V

    .line 849
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 850
    return-void
.end method

.method public glClipPlanex(ILjava/nio/IntBuffer;)V
    .registers 4
    .parameter "plane"
    .parameter "equation"

    .prologue
    .line 865
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 866
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(ILjava/nio/IntBuffer;)V

    .line 867
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 868
    return-void
.end method

.method public glClipPlanex(I[II)V
    .registers 5
    .parameter "plane"
    .parameter "equation"
    .parameter "offset"

    .prologue
    .line 859
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 860
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(I[II)V

    .line 861
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 862
    return-void
.end method

.method public glColor4f(FFFF)V
    .registers 6
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 144
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 145
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 146
    return-void
.end method

.method public glColor4x(IIII)V
    .registers 6
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 149
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 150
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 151
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 152
    return-void
.end method

.method public glColorMask(ZZZZ)V
    .registers 6
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 156
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 157
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorMask(ZZZZ)V

    .line 158
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 159
    return-void
.end method

.method public glColorPointer(IIILjava/nio/Buffer;)V
    .registers 6
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 162
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 163
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 164
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 165
    return-void
.end method

.method public glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .registers 18
    .parameter "target"
    .parameter "level"
    .parameter "internalformat"
    .parameter "width"
    .parameter "height"
    .parameter "border"
    .parameter "imageSize"
    .parameter "data"

    .prologue
    .line 170
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 171
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 173
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 174
    return-void
.end method

.method public glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .registers 20
    .parameter "target"
    .parameter "level"
    .parameter "xoffset"
    .parameter "yoffset"
    .parameter "width"
    .parameter "height"
    .parameter "format"
    .parameter "imageSize"
    .parameter "data"

    .prologue
    .line 179
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 180
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 182
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 183
    return-void
.end method

.method public glCopyTexImage2D(IIIIIIII)V
    .registers 18
    .parameter "target"
    .parameter "level"
    .parameter "internalformat"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "border"

    .prologue
    .line 187
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 188
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexImage2D(IIIIIIII)V

    .line 190
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 191
    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .registers 18
    .parameter "target"
    .parameter "level"
    .parameter "xoffset"
    .parameter "yoffset"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 195
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 196
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexSubImage2D(IIIIIIII)V

    .line 198
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 199
    return-void
.end method

.method public glCullFace(I)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 202
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 203
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 204
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 205
    return-void
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .registers 4
    .parameter "n"
    .parameter "textures"

    .prologue
    .line 214
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 215
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 216
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 217
    return-void
.end method

.method public glDeleteTextures(I[II)V
    .registers 5
    .parameter "n"
    .parameter "textures"
    .parameter "offset"

    .prologue
    .line 208
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 209
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 210
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 211
    return-void
.end method

.method public glDepthFunc(I)V
    .registers 3
    .parameter "func"

    .prologue
    .line 220
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 221
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    .line 222
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 223
    return-void
.end method

.method public glDepthMask(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 226
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 227
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 228
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 229
    return-void
.end method

.method public glDepthRangef(FF)V
    .registers 4
    .parameter "near"
    .parameter "far"

    .prologue
    .line 232
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 233
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangef(FF)V

    .line 234
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 235
    return-void
.end method

.method public glDepthRangex(II)V
    .registers 4
    .parameter "near"
    .parameter "far"

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 239
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangex(II)V

    .line 240
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 241
    return-void
.end method

.method public glDisable(I)V
    .registers 3
    .parameter "cap"

    .prologue
    .line 244
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 245
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 246
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 247
    return-void
.end method

.method public glDisableClientState(I)V
    .registers 3
    .parameter "array"

    .prologue
    .line 250
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 251
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 252
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 253
    return-void
.end method

.method public glDrawArrays(III)V
    .registers 5
    .parameter "mode"
    .parameter "first"
    .parameter "count"

    .prologue
    .line 256
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 257
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 258
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 259
    return-void
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .registers 6
    .parameter "mode"
    .parameter "count"
    .parameter "type"
    .parameter "indices"

    .prologue
    .line 262
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 263
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 264
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 265
    return-void
.end method

.method public glDrawTexfOES(FFFFF)V
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 874
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 875
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    .line 876
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 877
    return-void
.end method

.method public glDrawTexfvOES(Ljava/nio/FloatBuffer;)V
    .registers 3
    .parameter "coords"

    .prologue
    .line 886
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 887
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES(Ljava/nio/FloatBuffer;)V

    .line 888
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 889
    return-void
.end method

.method public glDrawTexfvOES([FI)V
    .registers 4
    .parameter "coords"
    .parameter "offset"

    .prologue
    .line 880
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 881
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES([FI)V

    .line 882
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 883
    return-void
.end method

.method public glDrawTexiOES(IIIII)V
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 892
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 893
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 894
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 895
    return-void
.end method

.method public glDrawTexivOES(Ljava/nio/IntBuffer;)V
    .registers 3
    .parameter "coords"

    .prologue
    .line 904
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 905
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES(Ljava/nio/IntBuffer;)V

    .line 906
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 907
    return-void
.end method

.method public glDrawTexivOES([II)V
    .registers 4
    .parameter "coords"
    .parameter "offset"

    .prologue
    .line 898
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 899
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES([II)V

    .line 900
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 901
    return-void
.end method

.method public glDrawTexsOES(SSSSS)V
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 911
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 912
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsOES(SSSSS)V

    .line 913
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 914
    return-void
.end method

.method public glDrawTexsvOES(Ljava/nio/ShortBuffer;)V
    .registers 3
    .parameter "coords"

    .prologue
    .line 923
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 924
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES(Ljava/nio/ShortBuffer;)V

    .line 925
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 926
    return-void
.end method

.method public glDrawTexsvOES([SI)V
    .registers 4
    .parameter "coords"
    .parameter "offset"

    .prologue
    .line 917
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 918
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES([SI)V

    .line 919
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 920
    return-void
.end method

.method public glDrawTexxOES(IIIII)V
    .registers 12
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 929
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 930
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxOES(IIIII)V

    .line 931
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 932
    return-void
.end method

.method public glDrawTexxvOES(Ljava/nio/IntBuffer;)V
    .registers 3
    .parameter "coords"

    .prologue
    .line 941
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 942
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES(Ljava/nio/IntBuffer;)V

    .line 943
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 944
    return-void
.end method

.method public glDrawTexxvOES([II)V
    .registers 4
    .parameter "coords"
    .parameter "offset"

    .prologue
    .line 935
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 936
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES([II)V

    .line 937
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 938
    return-void
.end method

.method public glEnable(I)V
    .registers 3
    .parameter "cap"

    .prologue
    .line 268
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 269
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 270
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 271
    return-void
.end method

.method public glEnableClientState(I)V
    .registers 3
    .parameter "array"

    .prologue
    .line 274
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 275
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 276
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 277
    return-void
.end method

.method public glFinish()V
    .registers 2

    .prologue
    .line 280
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 281
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    .line 282
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 283
    return-void
.end method

.method public glFlush()V
    .registers 2

    .prologue
    .line 286
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 287
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    .line 288
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 289
    return-void
.end method

.method public glFogf(IF)V
    .registers 4
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 292
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 293
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    .line 294
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 295
    return-void
.end method

.method public glFogfv(ILjava/nio/FloatBuffer;)V
    .registers 4
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 304
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 305
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(ILjava/nio/FloatBuffer;)V

    .line 306
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 307
    return-void
.end method

.method public glFogfv(I[FI)V
    .registers 5
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 298
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 299
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(I[FI)V

    .line 300
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 301
    return-void
.end method

.method public glFogx(II)V
    .registers 4
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 310
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 311
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogx(II)V

    .line 312
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 313
    return-void
.end method

.method public glFogxv(ILjava/nio/IntBuffer;)V
    .registers 4
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 322
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 323
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(ILjava/nio/IntBuffer;)V

    .line 324
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 325
    return-void
.end method

.method public glFogxv(I[II)V
    .registers 5
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 316
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 317
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(I[II)V

    .line 318
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 319
    return-void
.end method

.method public glFrontFace(I)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 328
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 329
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 330
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 331
    return-void
.end method

.method public glFrustumf(FFFFFF)V
    .registers 14
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "top"
    .parameter "near"
    .parameter "far"

    .prologue
    .line 335
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 336
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 337
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 338
    return-void
.end method

.method public glFrustumx(IIIIII)V
    .registers 14
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "top"
    .parameter "near"
    .parameter "far"

    .prologue
    .line 342
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 343
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumx(IIIIII)V

    .line 344
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 345
    return-void
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .registers 4
    .parameter "n"
    .parameter "textures"

    .prologue
    .line 354
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 355
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 356
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 357
    return-void
.end method

.method public glGenTextures(I[II)V
    .registers 5
    .parameter "n"
    .parameter "textures"
    .parameter "offset"

    .prologue
    .line 348
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 349
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 350
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 351
    return-void
.end method

.method public glGetError()I
    .registers 3

    .prologue
    .line 360
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 361
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    .line 362
    .local v0, result:I
    return v0
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .registers 4
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 372
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 373
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 374
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 375
    return-void
.end method

.method public glGetIntegerv(I[II)V
    .registers 5
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 366
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 367
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 368
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 369
    return-void
.end method

.method public glGetString(I)Ljava/lang/String;
    .registers 4
    .parameter "name"

    .prologue
    .line 378
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 379
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, result:Ljava/lang/String;
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 381
    return-object v0
.end method

.method public glHint(II)V
    .registers 4
    .parameter "target"
    .parameter "mode"

    .prologue
    .line 385
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 386
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 387
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 388
    return-void
.end method

.method public glLightModelf(IF)V
    .registers 4
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 391
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 392
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelf(IF)V

    .line 393
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 394
    return-void
.end method

.method public glLightModelfv(ILjava/nio/FloatBuffer;)V
    .registers 4
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 403
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 404
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(ILjava/nio/FloatBuffer;)V

    .line 405
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 406
    return-void
.end method

.method public glLightModelfv(I[FI)V
    .registers 5
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 397
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 398
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(I[FI)V

    .line 399
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 400
    return-void
.end method

.method public glLightModelx(II)V
    .registers 4
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 409
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 410
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelx(II)V

    .line 411
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 412
    return-void
.end method

.method public glLightModelxv(ILjava/nio/IntBuffer;)V
    .registers 4
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 421
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 422
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(ILjava/nio/IntBuffer;)V

    .line 423
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 424
    return-void
.end method

.method public glLightModelxv(I[II)V
    .registers 5
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 415
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 416
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(I[II)V

    .line 417
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 418
    return-void
.end method

.method public glLightf(IIF)V
    .registers 5
    .parameter "light"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 427
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 428
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    .line 429
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 430
    return-void
.end method

.method public glLightfv(IILjava/nio/FloatBuffer;)V
    .registers 5
    .parameter "light"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 439
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 440
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(IILjava/nio/FloatBuffer;)V

    .line 441
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 442
    return-void
.end method

.method public glLightfv(II[FI)V
    .registers 6
    .parameter "light"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 433
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 434
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 435
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 436
    return-void
.end method

.method public glLightx(III)V
    .registers 5
    .parameter "light"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 445
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 446
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightx(III)V

    .line 447
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 448
    return-void
.end method

.method public glLightxv(IILjava/nio/IntBuffer;)V
    .registers 5
    .parameter "light"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 457
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 458
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(IILjava/nio/IntBuffer;)V

    .line 459
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 460
    return-void
.end method

.method public glLightxv(II[II)V
    .registers 6
    .parameter "light"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 451
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 452
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(II[II)V

    .line 453
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 454
    return-void
.end method

.method public glLineWidth(F)V
    .registers 3
    .parameter "width"

    .prologue
    .line 463
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 464
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 465
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 466
    return-void
.end method

.method public glLineWidthx(I)V
    .registers 3
    .parameter "width"

    .prologue
    .line 469
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 470
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    .line 471
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 472
    return-void
.end method

.method public glLoadIdentity()V
    .registers 2

    .prologue
    .line 475
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 476
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 477
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 478
    return-void
.end method

.method public glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .registers 3
    .parameter "m"

    .prologue
    .line 487
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 488
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 489
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 490
    return-void
.end method

.method public glLoadMatrixf([FI)V
    .registers 4
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 481
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 482
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    .line 483
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 484
    return-void
.end method

.method public glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .registers 3
    .parameter "m"

    .prologue
    .line 499
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 500
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx(Ljava/nio/IntBuffer;)V

    .line 501
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 502
    return-void
.end method

.method public glLoadMatrixx([II)V
    .registers 4
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 493
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 494
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx([II)V

    .line 495
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 496
    return-void
.end method

.method public glLogicOp(I)V
    .registers 3
    .parameter "opcode"

    .prologue
    .line 505
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 506
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLogicOp(I)V

    .line 507
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 508
    return-void
.end method

.method public glMaterialf(IIF)V
    .registers 5
    .parameter "face"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 511
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 512
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    .line 513
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 514
    return-void
.end method

.method public glMaterialfv(IILjava/nio/FloatBuffer;)V
    .registers 5
    .parameter "face"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 523
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 524
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(IILjava/nio/FloatBuffer;)V

    .line 525
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 526
    return-void
.end method

.method public glMaterialfv(II[FI)V
    .registers 6
    .parameter "face"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 517
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 518
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 519
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 520
    return-void
.end method

.method public glMaterialx(III)V
    .registers 5
    .parameter "face"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 529
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 530
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialx(III)V

    .line 531
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 532
    return-void
.end method

.method public glMaterialxv(IILjava/nio/IntBuffer;)V
    .registers 5
    .parameter "face"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 541
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 542
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(IILjava/nio/IntBuffer;)V

    .line 543
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 544
    return-void
.end method

.method public glMaterialxv(II[II)V
    .registers 6
    .parameter "face"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 535
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 536
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(II[II)V

    .line 537
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 538
    return-void
.end method

.method public glMatrixMode(I)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 547
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 548
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 549
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 550
    return-void
.end method

.method public glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .registers 3
    .parameter "m"

    .prologue
    .line 559
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 560
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    .line 561
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 562
    return-void
.end method

.method public glMultMatrixf([FI)V
    .registers 4
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 553
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 554
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 555
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 556
    return-void
.end method

.method public glMultMatrixx(Ljava/nio/IntBuffer;)V
    .registers 3
    .parameter "m"

    .prologue
    .line 571
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 572
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx(Ljava/nio/IntBuffer;)V

    .line 573
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 574
    return-void
.end method

.method public glMultMatrixx([II)V
    .registers 4
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 565
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 566
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx([II)V

    .line 567
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 568
    return-void
.end method

.method public glMultiTexCoord4f(IFFFF)V
    .registers 12
    .parameter "target"
    .parameter "s"
    .parameter "t"
    .parameter "r"
    .parameter "q"

    .prologue
    .line 578
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 579
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4f(IFFFF)V

    .line 580
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 581
    return-void
.end method

.method public glMultiTexCoord4x(IIIII)V
    .registers 12
    .parameter "target"
    .parameter "s"
    .parameter "t"
    .parameter "r"
    .parameter "q"

    .prologue
    .line 584
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 585
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4x(IIIII)V

    .line 586
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 587
    return-void
.end method

.method public glNormal3f(FFF)V
    .registers 5
    .parameter "nx"
    .parameter "ny"
    .parameter "nz"

    .prologue
    .line 590
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 591
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3f(FFF)V

    .line 592
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 593
    return-void
.end method

.method public glNormal3x(III)V
    .registers 5
    .parameter "nx"
    .parameter "ny"
    .parameter "nz"

    .prologue
    .line 596
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 597
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3x(III)V

    .line 598
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 599
    return-void
.end method

.method public glNormalPointer(IILjava/nio/Buffer;)V
    .registers 5
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 602
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 603
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 604
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 605
    return-void
.end method

.method public glOrthof(FFFFFF)V
    .registers 14
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "top"
    .parameter "near"
    .parameter "far"

    .prologue
    .line 609
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 610
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 611
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 612
    return-void
.end method

.method public glOrthox(IIIIII)V
    .registers 14
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "top"
    .parameter "near"
    .parameter "far"

    .prologue
    .line 616
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 617
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthox(IIIIII)V

    .line 618
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 619
    return-void
.end method

.method public glPixelStorei(II)V
    .registers 4
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 622
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 623
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPixelStorei(II)V

    .line 624
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 625
    return-void
.end method

.method public glPointSize(F)V
    .registers 3
    .parameter "size"

    .prologue
    .line 628
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 629
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 630
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 631
    return-void
.end method

.method public glPointSizex(I)V
    .registers 3
    .parameter "size"

    .prologue
    .line 634
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 635
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSizex(I)V

    .line 636
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 637
    return-void
.end method

.method public glPolygonOffset(FF)V
    .registers 4
    .parameter "factor"
    .parameter "units"

    .prologue
    .line 640
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 641
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffset(FF)V

    .line 642
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 643
    return-void
.end method

.method public glPolygonOffsetx(II)V
    .registers 4
    .parameter "factor"
    .parameter "units"

    .prologue
    .line 646
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 647
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffsetx(II)V

    .line 648
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 649
    return-void
.end method

.method public glPopMatrix()V
    .registers 2

    .prologue
    .line 652
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 653
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 654
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 655
    return-void
.end method

.method public glPushMatrix()V
    .registers 2

    .prologue
    .line 658
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 659
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 660
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 661
    return-void
.end method

.method public glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
    .registers 5
    .parameter "mantissa"
    .parameter "exponent"

    .prologue
    .line 956
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 957
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I

    move-result v0

    .line 958
    .local v0, valid:I
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 959
    return v0
.end method

.method public glQueryMatrixxOES([II[II)I
    .registers 7
    .parameter "mantissa"
    .parameter "mantissaOffset"
    .parameter "exponent"
    .parameter "exponentOffset"

    .prologue
    .line 948
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 949
    iget-object v1, p0, Landroid/opengl/GLErrorWrapper;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES([II[II)I

    move-result v0

    .line 951
    .local v0, valid:I
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 952
    return v0
.end method

.method public glReadPixels(IIIIIILjava/nio/Buffer;)V
    .registers 16
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "format"
    .parameter "type"
    .parameter "pixels"

    .prologue
    .line 665
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 666
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 667
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 668
    return-void
.end method

.method public glRotatef(FFFF)V
    .registers 6
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 671
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 672
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 673
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 674
    return-void
.end method

.method public glRotatex(IIII)V
    .registers 6
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 677
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 678
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatex(IIII)V

    .line 679
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 680
    return-void
.end method

.method public glSampleCoverage(FZ)V
    .registers 4
    .parameter "value"
    .parameter "invert"

    .prologue
    .line 683
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 684
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoverage(FZ)V

    .line 685
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 686
    return-void
.end method

.method public glSampleCoveragex(IZ)V
    .registers 4
    .parameter "value"
    .parameter "invert"

    .prologue
    .line 689
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 690
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoveragex(IZ)V

    .line 691
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 692
    return-void
.end method

.method public glScalef(FFF)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 695
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 696
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 697
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 698
    return-void
.end method

.method public glScalex(III)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 701
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 702
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    .line 703
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 704
    return-void
.end method

.method public glScissor(IIII)V
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 707
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 708
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    .line 709
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 710
    return-void
.end method

.method public glShadeModel(I)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 713
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 714
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 715
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 716
    return-void
.end method

.method public glStencilFunc(III)V
    .registers 5
    .parameter "func"
    .parameter "ref"
    .parameter "mask"

    .prologue
    .line 719
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 720
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    .line 721
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 722
    return-void
.end method

.method public glStencilMask(I)V
    .registers 3
    .parameter "mask"

    .prologue
    .line 725
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 726
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glStencilMask(I)V

    .line 727
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 728
    return-void
.end method

.method public glStencilOp(III)V
    .registers 5
    .parameter "fail"
    .parameter "zfail"
    .parameter "zpass"

    .prologue
    .line 731
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 732
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    .line 733
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 734
    return-void
.end method

.method public glTexCoordPointer(IIILjava/nio/Buffer;)V
    .registers 6
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 738
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 739
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 740
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 741
    return-void
.end method

.method public glTexEnvf(IIF)V
    .registers 5
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 744
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 745
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 746
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 747
    return-void
.end method

.method public glTexEnvfv(IILjava/nio/FloatBuffer;)V
    .registers 5
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 756
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 757
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(IILjava/nio/FloatBuffer;)V

    .line 758
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 759
    return-void
.end method

.method public glTexEnvfv(II[FI)V
    .registers 6
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 750
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 751
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(II[FI)V

    .line 752
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 753
    return-void
.end method

.method public glTexEnvx(III)V
    .registers 5
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 762
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 763
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 764
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 765
    return-void
.end method

.method public glTexEnvxv(IILjava/nio/IntBuffer;)V
    .registers 5
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 774
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 775
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(IILjava/nio/IntBuffer;)V

    .line 776
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 777
    return-void
.end method

.method public glTexEnvxv(II[II)V
    .registers 6
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 768
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 769
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(II[II)V

    .line 770
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 771
    return-void
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .registers 20
    .parameter "target"
    .parameter "level"
    .parameter "internalformat"
    .parameter "width"
    .parameter "height"
    .parameter "border"
    .parameter "format"
    .parameter "type"
    .parameter "pixels"

    .prologue
    .line 782
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 783
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 785
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 786
    return-void
.end method

.method public glTexParameterf(IIF)V
    .registers 5
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 789
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 790
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 791
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 792
    return-void
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .registers 5
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 807
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 808
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 809
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 810
    return-void
.end method

.method public glTexParameteriv(II[II)V
    .registers 6
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 801
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 802
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 803
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 804
    return-void
.end method

.method public glTexParameterx(III)V
    .registers 5
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 795
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 796
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 797
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 798
    return-void
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .registers 20
    .parameter "target"
    .parameter "level"
    .parameter "xoffset"
    .parameter "yoffset"
    .parameter "width"
    .parameter "height"
    .parameter "format"
    .parameter "type"
    .parameter "pixels"

    .prologue
    .line 815
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 816
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 818
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 819
    return-void
.end method

.method public glTranslatef(FFF)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 822
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 823
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 824
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 825
    return-void
.end method

.method public glTranslatex(III)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 828
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 829
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatex(III)V

    .line 830
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 831
    return-void
.end method

.method public glVertexPointer(IIILjava/nio/Buffer;)V
    .registers 6
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 835
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 836
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 837
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 838
    return-void
.end method

.method public glViewport(IIII)V
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 841
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkThread()V

    .line 842
    iget-object v0, p0, Landroid/opengl/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 843
    invoke-direct {p0}, Landroid/opengl/GLErrorWrapper;->checkError()V

    .line 844
    return-void
.end method
