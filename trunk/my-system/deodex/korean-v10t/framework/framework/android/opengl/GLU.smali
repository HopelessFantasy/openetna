.class public Landroid/opengl/GLU;
.super Ljava/lang/Object;
.source "GLU.java"


# static fields
.field private static final sScratch:[F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 292
    const/16 v0, 0x20

    new-array v0, v0, [F

    sput-object v0, Landroid/opengl/GLU;->sScratch:[F

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gluErrorString(I)Ljava/lang/String;
    .registers 2
    .parameter "error"

    .prologue
    .line 36
    sparse-switch p0, :sswitch_data_1a

    .line 52
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 38
    :sswitch_5
    const-string v0, "no error"

    goto :goto_4

    .line 40
    :sswitch_8
    const-string v0, "invalid enum"

    goto :goto_4

    .line 42
    :sswitch_b
    const-string v0, "invalid value"

    goto :goto_4

    .line 44
    :sswitch_e
    const-string v0, "invalid operation"

    goto :goto_4

    .line 46
    :sswitch_11
    const-string v0, "stack overflow"

    goto :goto_4

    .line 48
    :sswitch_14
    const-string v0, "stack underflow"

    goto :goto_4

    .line 50
    :sswitch_17
    const-string v0, "out of memory"

    goto :goto_4

    .line 36
    :sswitch_data_1a
    .sparse-switch
        0x0 -> :sswitch_5
        0x500 -> :sswitch_8
        0x501 -> :sswitch_b
        0x502 -> :sswitch_e
        0x503 -> :sswitch_11
        0x504 -> :sswitch_14
        0x505 -> :sswitch_17
    .end sparse-switch
.end method

.method public static gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V
    .registers 15
    .parameter "gl"
    .parameter "eyeX"
    .parameter "eyeY"
    .parameter "eyeZ"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "centerZ"
    .parameter "upX"
    .parameter "upY"
    .parameter "upZ"

    .prologue
    .line 78
    sub-float/2addr p4, p1

    .line 79
    .local p4, fx:F
    sub-float/2addr p5, p2

    .line 80
    .local p5, fy:F
    sub-float/2addr p6, p3

    .line 83
    .local p6, fz:F
    const/high16 v0, 0x3f80

    invoke-static {p4, p5, p6}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v1

    div-float/2addr v0, v1

    .line 84
    .local v0, rlf:F
    mul-float/2addr p4, v0

    .line 85
    mul-float/2addr p5, v0

    .line 86
    mul-float/2addr p6, v0

    .line 89
    mul-float v0, p5, p9

    mul-float v1, p6, p8

    sub-float/2addr v0, v1

    .line 90
    .local v0, sx:F
    mul-float v1, p6, p7

    mul-float/2addr p9, p4

    sub-float p9, v1, p9

    .line 91
    .local p9, sy:F
    mul-float/2addr p8, p4

    mul-float/2addr p7, p5

    sub-float v1, p8, p7

    .line 94
    .local v1, sz:F
    const/high16 p7, 0x3f80

    invoke-static {v0, p9, v1}, Landroid/opengl/Matrix;->length(FFF)F

    .end local p7
    .end local p8
    move-result p8

    div-float/2addr p7, p8

    .line 95
    .local p7, rls:F
    mul-float p8, v0, p7

    .line 96
    .end local v0           #sx:F
    .local p8, sx:F
    mul-float/2addr p9, p7

    .line 97
    mul-float v0, v1, p7

    .line 100
    .end local v1           #sz:F
    .local v0, sz:F
    mul-float p7, p9, p6

    mul-float v1, v0, p5

    sub-float v1, p7, v1

    .line 101
    .local v1, ux:F
    mul-float p7, v0, p4

    mul-float v2, p8, p6

    sub-float v2, p7, v2

    .line 102
    .local v2, uy:F
    mul-float p7, p8, p5

    mul-float v3, p9, p4

    sub-float v3, p7, v3

    .line 104
    .local v3, uz:F
    sget-object p7, Landroid/opengl/GLU;->sScratch:[F

    .line 105
    .local p7, scratch:[F
    monitor-enter p7

    .line 106
    const/4 v4, 0x0

    :try_start_3d
    aput p8, p7, v4

    .line 107
    const/4 p8, 0x1

    aput v1, p7, p8

    .line 108
    .end local p8           #sx:F
    const/4 p8, 0x2

    neg-float p4, p4

    aput p4, p7, p8

    .line 109
    .end local p4           #fx:F
    const/4 p4, 0x3

    const/4 p8, 0x0

    aput p8, p7, p4

    .line 111
    const/4 p4, 0x4

    aput p9, p7, p4

    .line 112
    const/4 p4, 0x5

    aput v2, p7, p4

    .line 113
    const/4 p4, 0x6

    neg-float p5, p5

    aput p5, p7, p4

    .line 114
    .end local p5           #fy:F
    const/4 p4, 0x7

    const/4 p5, 0x0

    aput p5, p7, p4

    .line 116
    const/16 p4, 0x8

    aput v0, p7, p4

    .line 117
    const/16 p4, 0x9

    aput v3, p7, p4

    .line 118
    const/16 p4, 0xa

    neg-float p5, p6

    aput p5, p7, p4

    .line 119
    const/16 p4, 0xb

    const/4 p5, 0x0

    aput p5, p7, p4

    .line 121
    const/16 p4, 0xc

    const/4 p5, 0x0

    aput p5, p7, p4

    .line 122
    const/16 p4, 0xd

    const/4 p5, 0x0

    aput p5, p7, p4

    .line 123
    const/16 p4, 0xe

    const/4 p5, 0x0

    aput p5, p7, p4

    .line 124
    const/16 p4, 0xf

    const/high16 p5, 0x3f80

    aput p5, p7, p4

    .line 126
    const/4 p4, 0x0

    invoke-interface {p0, p7, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 127
    monitor-exit p7
    :try_end_84
    .catchall {:try_start_3d .. :try_end_84} :catchall_8b

    .line 128
    neg-float p1, p1

    neg-float p2, p2

    neg-float p3, p3

    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 129
    .end local p1
    .end local p2
    .end local p3
    return-void

    .line 127
    .end local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :catchall_8b
    move-exception p0

    :try_start_8c
    monitor-exit p7
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8b

    throw p0
.end method

.method public static gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .registers 12
    .parameter "gl"
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "top"

    .prologue
    .line 142
    const/high16 v5, -0x4080

    const/high16 v6, 0x3f80

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 143
    return-void
.end method

.method public static gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .registers 14
    .parameter "gl"
    .parameter "fovy"
    .parameter "aspect"
    .parameter "zNear"
    .parameter "zFar"

    .prologue
    .line 161
    float-to-double v5, p1

    const-wide v7, 0x3f81df46a2529d39L

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    double-to-float v0, v5

    mul-float v4, p3, v0

    .line 162
    .local v4, top:F
    neg-float v3, v4

    .line 163
    .local v3, bottom:F
    mul-float v1, v3, p2

    .line 164
    .local v1, left:F
    mul-float v2, v4, p2

    .local v2, right:F
    move-object v0, p0

    move v5, p3

    move v6, p4

    .line 165
    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 166
    return-void
.end method

.method public static gluProject(FFF[FI[FI[II[FI)I
    .registers 17
    .parameter "objX"
    .parameter "objY"
    .parameter "objZ"
    .parameter "model"
    .parameter "modelOffset"
    .parameter "project"
    .parameter "projectOffset"
    .parameter "view"
    .parameter "viewOffset"
    .parameter "win"
    .parameter "winOffset"

    .prologue
    .line 198
    sget-object v0, Landroid/opengl/GLU;->sScratch:[F

    .line 199
    .local v0, scratch:[F
    monitor-enter v0

    .line 200
    const/4 v1, 0x0

    .line 201
    .local v1, M_OFFSET:I
    const/16 v1, 0x10

    .line 202
    .local v1, V_OFFSET:I
    const/16 v1, 0x14

    .line 203
    .local v1, V2_OFFSET:I
    const/4 v1, 0x0

    move-object v2, p5

    move v3, p6

    move-object v4, p3

    move v5, p4

    :try_start_d
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 206
    .end local v1           #V2_OFFSET:I
    const/16 p3, 0x10

    aput p0, v0, p3

    .line 207
    .end local p3
    const/16 p0, 0x11

    aput p1, v0, p0

    .line 208
    .end local p0
    const/16 p0, 0x12

    aput p2, v0, p0

    .line 209
    const/16 p0, 0x13

    const/high16 p1, 0x3f80

    aput p1, v0, p0

    .line 211
    .end local p1
    const/16 v1, 0x14

    const/4 v3, 0x0

    const/16 v5, 0x10

    move-object v2, v0

    move-object v4, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 214
    const/16 p0, 0x17

    aget p0, v0, p0

    .line 215
    .local p0, w:F
    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-nez p1, :cond_38

    .line 216
    const/4 p0, 0x0

    monitor-exit v0

    .line 231
    .end local p0           #w:F
    .end local p2
    .end local p4
    .end local p5
    :goto_37
    return p0

    .line 219
    .restart local p0       #w:F
    .restart local p2
    .restart local p4
    .restart local p5
    :cond_38
    const/high16 p1, 0x3f80

    div-float p0, p1, p0

    .line 221
    .local p0, rw:F
    aget p1, p7, p8

    int-to-float p1, p1

    add-int/lit8 p2, p8, 0x2

    aget p2, p7, p2

    .end local p2
    int-to-float p2, p2

    const/16 p3, 0x14

    aget p3, v0, p3

    mul-float/2addr p3, p0

    const/high16 p4, 0x3f80

    add-float/2addr p3, p4

    mul-float/2addr p2, p3

    const/high16 p3, 0x3f00

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    aput p1, p9, p10

    .line 225
    .end local p4
    add-int/lit8 p1, p10, 0x1

    add-int/lit8 p2, p8, 0x1

    aget p2, p7, p2

    int-to-float p2, p2

    add-int/lit8 p3, p8, 0x3

    aget p3, p7, p3

    int-to-float p3, p3

    const/16 p4, 0x15

    aget p4, v0, p4

    mul-float/2addr p4, p0

    const/high16 p5, 0x3f80

    add-float/2addr p4, p5

    mul-float/2addr p3, p4

    const/high16 p4, 0x3f00

    mul-float/2addr p3, p4

    add-float/2addr p2, p3

    aput p2, p9, p1

    .line 228
    .end local p5
    add-int/lit8 p1, p10, 0x2

    const/16 p2, 0x16

    aget p2, v0, p2

    mul-float/2addr p0, p2

    const/high16 p2, 0x3f80

    add-float/2addr p0, p2

    const/high16 p2, 0x3f00

    mul-float/2addr p0, p2

    aput p0, p9, p1

    .line 229
    .end local p0           #rw:F
    monitor-exit v0

    .line 231
    const/4 p0, 0x1

    goto :goto_37

    .line 229
    :catchall_80
    move-exception p0

    monitor-exit v0
    :try_end_82
    .catchall {:try_start_d .. :try_end_82} :catchall_80

    throw p0
.end method

.method public static gluUnProject(FFF[FI[FI[II[FI)I
    .registers 23
    .parameter "winX"
    .parameter "winY"
    .parameter "winZ"
    .parameter "model"
    .parameter "modelOffset"
    .parameter "project"
    .parameter "projectOffset"
    .parameter "view"
    .parameter "viewOffset"
    .parameter "obj"
    .parameter "objOffset"

    .prologue
    .line 264
    sget-object v6, Landroid/opengl/GLU;->sScratch:[F

    .line 265
    .local v6, scratch:[F
    monitor-enter v6

    .line 266
    const/4 v7, 0x0

    .line 267
    .local v7, PM_OFFSET:I
    const/16 v7, 0x10

    .line 268
    .local v7, INVPM_OFFSET:I
    const/4 v7, 0x0

    .line 269
    .local v7, V_OFFSET:I
    const/4 v7, 0x0

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object v10, p3

    move/from16 v11, p4

    :try_start_f
    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 272
    .end local v7           #V_OFFSET:I
    const/16 p3, 0x10

    const/16 p4, 0x0

    move-object v0, v6

    move v1, p3

    move-object v2, v6

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .end local p3
    .end local p4
    move-result p3

    if-nez p3, :cond_24

    .line 273
    const/4 p0, 0x0

    monitor-exit v6

    .line 289
    .end local p0
    .end local p1
    .end local p2
    .end local p5
    :goto_23
    return p0

    .line 276
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p5
    :cond_24
    const/4 p3, 0x0

    const/high16 p4, 0x4000

    add-int/lit8 p5, p8, 0x0

    aget p5, p7, p5

    .end local p5
    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 p5, v0

    sub-float p0, p0, p5

    mul-float p0, p0, p4

    add-int/lit8 p4, p8, 0x2

    aget p4, p7, p4

    .end local p0
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 p4, v0

    div-float p0, p0, p4

    const/high16 p4, 0x3f80

    sub-float p0, p0, p4

    aput p0, v6, p3

    .line 279
    const/4 p0, 0x1

    const/high16 p3, 0x4000

    add-int/lit8 p4, p8, 0x1

    aget p4, p7, p4

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 p4, v0

    sub-float p1, p1, p4

    mul-float/2addr p1, p3

    add-int/lit8 p3, p8, 0x3

    aget p3, p7, p3

    .end local p1
    int-to-float p3, p3

    div-float/2addr p1, p3

    const/high16 p3, 0x3f80

    sub-float/2addr p1, p3

    aput p1, v6, p0

    .line 282
    const/4 p0, 0x2

    const/high16 p1, 0x4000

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f80

    sub-float/2addr p1, p2

    aput p1, v6, p0

    .line 283
    .end local p2
    const/4 p0, 0x3

    const/high16 p1, 0x3f80

    aput p1, v6, p0

    .line 285
    const/16 v7, 0x10

    const/4 v9, 0x0

    move-object v8, v6

    move-object/from16 v0, p9

    move/from16 v1, p10

    move-object v2, v6

    move v3, v7

    move-object v4, v8

    move v5, v9

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 287
    monitor-exit v6

    .line 289
    const/4 p0, 0x1

    goto :goto_23

    .line 287
    :catchall_7f
    move-exception p0

    monitor-exit v6
    :try_end_81
    .catchall {:try_start_f .. :try_end_81} :catchall_7f

    throw p0
.end method
