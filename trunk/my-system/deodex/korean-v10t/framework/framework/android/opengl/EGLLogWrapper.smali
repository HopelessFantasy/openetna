.class Landroid/opengl/EGLLogWrapper;
.super Ljava/lang/Object;
.source "EGLLogWrapper.java"

# interfaces
.implements Ljavax/microedition/khronos/egl/EGL11;


# instance fields
.field private mArgCount:I

.field mCheckError:Z

.field private mEgl10:Ljavax/microedition/khronos/egl/EGL10;

.field mLog:Ljava/io/Writer;

.field mLogArgumentNames:Z


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/egl/EGL;ILjava/io/Writer;)V
    .registers 7
    .parameter "egl"
    .parameter "configFlags"
    .parameter "log"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    check-cast p1, Ljavax/microedition/khronos/egl/EGL10;

    .end local p1
    iput-object p1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    .line 24
    iput-object p3, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    .line 25
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_1a

    move v0, v2

    :goto_10
    iput-boolean v0, p0, Landroid/opengl/EGLLogWrapper;->mLogArgumentNames:Z

    .line 27
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1c

    move v0, v2

    :goto_17
    iput-boolean v0, p0, Landroid/opengl/EGLLogWrapper;->mCheckError:Z

    .line 29
    return-void

    :cond_1a
    move v0, v1

    .line 25
    goto :goto_10

    :cond_1c
    move v0, v1

    .line 27
    goto :goto_17
.end method

.method private arg(Ljava/lang/String;I)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 395
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method private arg(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter "name"
    .parameter "object"

    .prologue
    .line 399
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method private arg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 372
    iget v0, p0, Landroid/opengl/EGLLogWrapper;->mArgCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/opengl/EGLLogWrapper;->mArgCount:I

    if-lez v0, :cond_d

    .line 373
    const-string v0, ", "

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 375
    :cond_d
    iget-boolean v0, p0, Landroid/opengl/EGLLogWrapper;->mLogArgumentNames:Z

    if-eqz v0, :cond_27

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 378
    :cond_27
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V
    .registers 4
    .parameter "name"
    .parameter "object"

    .prologue
    .line 413
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne p2, v0, :cond_a

    .line 414
    const-string v0, "EGL10.EGL_NO_CONTEXT"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    :goto_9
    return-void

    .line 416
    :cond_a
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V
    .registers 4
    .parameter "name"
    .parameter "object"

    .prologue
    .line 403
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    if-ne p2, v0, :cond_a

    .line 404
    const-string v0, "EGL10.EGL_DEFAULT_DISPLAY"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :goto_9
    return-void

    .line 405
    :cond_a
    sget-object v0, Landroid/opengl/EGLLogWrapper;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne p2, v0, :cond_14

    .line 406
    const-string v0, "EGL10.EGL_NO_DISPLAY"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 408
    :cond_14
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .registers 4
    .parameter "name"
    .parameter "object"

    .prologue
    .line 421
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne p2, v0, :cond_a

    .line 422
    const-string v0, "EGL10.EGL_NO_SURFACE"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :goto_9
    return-void

    .line 424
    :cond_a
    invoke-direct {p0, p2}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private arg(Ljava/lang/String;[I)V
    .registers 5
    .parameter "name"
    .parameter "arr"

    .prologue
    .line 454
    if-nez p2, :cond_8

    .line 455
    const-string v0, "null"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :goto_7
    return-void

    .line 457
    :cond_8
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Landroid/opengl/EGLLogWrapper;->toString(I[II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method private arg(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .parameter "name"
    .parameter "arr"

    .prologue
    .line 462
    if-nez p2, :cond_8

    .line 463
    const-string v0, "null"

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :goto_7
    return-void

    .line 465
    :cond_8
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Landroid/opengl/EGLLogWrapper;->toString(I[Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method private begin(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 368
    const/4 v0, 0x0

    iput v0, p0, Landroid/opengl/EGLLogWrapper;->mArgCount:I

    .line 369
    return-void
.end method

.method private checkError()V
    .registers 5

    .prologue
    .line 345
    iget-object v2, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .local v0, eglError:I
    const/16 v2, 0x3000

    if-eq v0, v2, :cond_2e

    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eglError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/opengl/EGLLogWrapper;->getErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, errorMessage:Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->logLine(Ljava/lang/String;)V

    .line 348
    iget-boolean v2, p0, Landroid/opengl/EGLLogWrapper;->mCheckError:Z

    if-eqz v2, :cond_2e

    .line 349
    new-instance v2, Landroid/opengl/GLException;

    invoke-direct {v2, v0, v1}, Landroid/opengl/GLException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 352
    .end local v1           #errorMessage:Ljava/lang/String;
    :cond_2e
    return-void
.end method

.method private end()V
    .registers 2

    .prologue
    .line 382
    const-string v0, ");\n"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 383
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->flush()V

    .line 384
    return-void
.end method

.method private flush()V
    .registers 3

    .prologue
    .line 388
    :try_start_0
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 392
    :goto_5
    return-void

    .line 389
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 390
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    goto :goto_5
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .registers 2
    .parameter "error"

    .prologue
    .line 510
    packed-switch p0, :pswitch_data_36

    .line 542
    invoke-static {p0}, Landroid/opengl/EGLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 512
    :pswitch_8
    const-string v0, "EGL_SUCCESS"

    goto :goto_7

    .line 514
    :pswitch_b
    const-string v0, "EGL_NOT_INITIALIZED"

    goto :goto_7

    .line 516
    :pswitch_e
    const-string v0, "EGL_BAD_ACCESS"

    goto :goto_7

    .line 518
    :pswitch_11
    const-string v0, "EGL_BAD_ALLOC"

    goto :goto_7

    .line 520
    :pswitch_14
    const-string v0, "EGL_BAD_ATTRIBUTE"

    goto :goto_7

    .line 522
    :pswitch_17
    const-string v0, "EGL_BAD_CONFIG"

    goto :goto_7

    .line 524
    :pswitch_1a
    const-string v0, "EGL_BAD_CONTEXT"

    goto :goto_7

    .line 526
    :pswitch_1d
    const-string v0, "EGL_BAD_CURRENT_SURFACE"

    goto :goto_7

    .line 528
    :pswitch_20
    const-string v0, "EGL_BAD_DISPLAY"

    goto :goto_7

    .line 530
    :pswitch_23
    const-string v0, "EGL_BAD_MATCH"

    goto :goto_7

    .line 532
    :pswitch_26
    const-string v0, "EGL_BAD_NATIVE_PIXMAP"

    goto :goto_7

    .line 534
    :pswitch_29
    const-string v0, "EGL_BAD_NATIVE_WINDOW"

    goto :goto_7

    .line 536
    :pswitch_2c
    const-string v0, "EGL_BAD_PARAMETER"

    goto :goto_7

    .line 538
    :pswitch_2f
    const-string v0, "EGL_BAD_SURFACE"

    goto :goto_7

    .line 540
    :pswitch_32
    const-string v0, "EGL_CONTEXT_LOST"

    goto :goto_7

    .line 510
    nop

    :pswitch_data_36
    .packed-switch 0x3000
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
    .end packed-switch
.end method

.method private static getHex(I)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 360
    :try_start_0
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 364
    :goto_5
    return-void

    .line 361
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private logLine(Ljava/lang/String;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method private returns(I)V
    .registers 3
    .parameter "result"

    .prologue
    .line 434
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method private returns(Ljava/lang/Object;)V
    .registers 3
    .parameter "result"

    .prologue
    .line 442
    invoke-direct {p0, p1}, Landroid/opengl/EGLLogWrapper;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method private returns(Ljava/lang/String;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " returns "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->log(Ljava/lang/String;)V

    .line 430
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->flush()V

    .line 431
    return-void
.end method

.method private returns(Z)V
    .registers 3
    .parameter "result"

    .prologue
    .line 438
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method private toString(I[II)Ljava/lang/String;
    .registers 10
    .parameter "n"
    .parameter "arr"
    .parameter "offset"

    .prologue
    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    .local v1, buf:Ljava/lang/StringBuilder;
    const-string v4, "{\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    array-length v0, p2

    .line 473
    .local v0, arrLen:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    if-ge v2, p1, :cond_43

    .line 474
    add-int v3, p3, v2

    .line 475
    .local v3, index:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    if-ltz v3, :cond_30

    if-lt v3, v0, :cond_3d

    .line 477
    :cond_30
    const-string v4, "out of bounds"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    :goto_35
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 473
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 479
    :cond_3d
    aget v4, p2, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 483
    .end local v3           #index:I
    :cond_43
    const-string v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private toString(I[Ljava/lang/Object;I)Ljava/lang/String;
    .registers 10
    .parameter "n"
    .parameter "arr"
    .parameter "offset"

    .prologue
    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    .local v1, buf:Ljava/lang/StringBuilder;
    const-string v4, "{\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    array-length v0, p2

    .line 491
    .local v0, arrLen:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_c
    if-ge v2, p1, :cond_43

    .line 492
    add-int v3, p3, v2

    .line 493
    .local v3, index:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    if-ltz v3, :cond_30

    if-lt v3, v0, :cond_3d

    .line 495
    :cond_30
    const-string v4, "out of bounds"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    :goto_35
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 491
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 497
    :cond_3d
    aget-object v4, p2, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 501
    .end local v3           #index:I
    :cond_43
    const-string v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "obj"

    .prologue
    .line 446
    if-nez p1, :cond_5

    .line 447
    const-string v0, "null"

    .line 449
    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method public eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .registers 13
    .parameter "display"
    .parameter "attrib_list"
    .parameter "configs"
    .parameter "config_size"
    .parameter "num_config"

    .prologue
    .line 33
    const-string v0, "eglChooseConfig"

    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 34
    const-string v0, "display"

    invoke-direct {p0, v0, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 35
    const-string v0, "attrib_list"

    invoke-direct {p0, v0, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 36
    const-string v0, "config_size"

    invoke-direct {p0, v0, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 37
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 39
    iget-object v0, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v6

    .line 41
    .local v6, result:Z
    const-string v0, "configs"

    invoke-direct {p0, v0, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    const-string v0, "num_config"

    invoke-direct {p0, v0, p5}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 43
    invoke-direct {p0, v6}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 44
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 45
    return v6
.end method

.method public eglCopyBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljava/lang/Object;)Z
    .registers 6
    .parameter "display"
    .parameter "surface"
    .parameter "native_pixmap"

    .prologue
    .line 50
    const-string v1, "eglCopyBuffers"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 51
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 52
    const-string v1, "surface"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 53
    const-string v1, "native_pixmap"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 56
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCopyBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljava/lang/Object;)Z

    move-result v0

    .line 57
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 58
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 59
    return v0
.end method

.method public eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;
    .registers 7
    .parameter "display"
    .parameter "config"
    .parameter "share_context"
    .parameter "attrib_list"

    .prologue
    .line 64
    const-string v1, "eglCreateContext"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 65
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 66
    const-string v1, "config"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    const-string v1, "share_context"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 68
    const-string v1, "attrib_list"

    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 69
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 71
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 73
    .local v0, result:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 74
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 75
    return-object v0
.end method

.method public eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .registers 6
    .parameter "display"
    .parameter "config"
    .parameter "attrib_list"

    .prologue
    .line 80
    const-string v1, "eglCreatePbufferSurface"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 81
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 82
    const-string v1, "config"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    const-string v1, "attrib_list"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 84
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 86
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    .line 88
    .local v0, result:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 89
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 90
    return-object v0
.end method

.method public eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .registers 7
    .parameter "display"
    .parameter "config"
    .parameter "native_pixmap"
    .parameter "attrib_list"

    .prologue
    .line 95
    const-string v1, "eglCreatePixmapSurface"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 96
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 97
    const-string v1, "config"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    const-string v1, "native_pixmap"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    const-string v1, "attrib_list"

    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 100
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 102
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    .line 104
    .local v0, result:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 105
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 106
    return-object v0
.end method

.method public eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;
    .registers 7
    .parameter "display"
    .parameter "config"
    .parameter "native_window"
    .parameter "attrib_list"

    .prologue
    .line 111
    const-string v1, "eglCreateWindowSurface"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 112
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 113
    const-string v1, "config"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    const-string v1, "native_window"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    const-string v1, "attrib_list"

    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 116
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 118
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    .line 120
    .local v0, result:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 121
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 122
    return-object v0
.end method

.method public eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z
    .registers 5
    .parameter "display"
    .parameter "context"

    .prologue
    .line 126
    const-string v1, "eglDestroyContext"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 127
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 128
    const-string v1, "context"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 129
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 131
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    .line 132
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 133
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 134
    return v0
.end method

.method public eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    .registers 5
    .parameter "display"
    .parameter "surface"

    .prologue
    .line 138
    const-string v1, "eglDestroySurface"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 139
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 140
    const-string v1, "surface"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 141
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 143
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    .line 144
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 145
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 146
    return v0
.end method

.method public eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .registers 7
    .parameter "display"
    .parameter "config"
    .parameter "attribute"
    .parameter "value"

    .prologue
    .line 151
    const-string v1, "eglGetConfigAttrib"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 152
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 153
    const-string v1, "config"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    const-string v1, "attribute"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 155
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 156
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    .line 158
    .local v0, result:Z
    const-string v1, "value"

    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 159
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 160
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 161
    const/4 v1, 0x0

    return v1
.end method

.method public eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z
    .registers 7
    .parameter "display"
    .parameter "configs"
    .parameter "config_size"
    .parameter "num_config"

    .prologue
    .line 166
    const-string v1, "eglGetConfigs"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 167
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 168
    const-string v1, "config_size"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 169
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 171
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    .line 173
    .local v0, result:Z
    const-string v1, "configs"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    const-string v1, "num_config"

    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 175
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 176
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 177
    return v0
.end method

.method public eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;
    .registers 3

    .prologue
    .line 181
    const-string v1, "eglGetCurrentContext"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 184
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 185
    .local v0, result:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 187
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 188
    return-object v0
.end method

.method public eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;
    .registers 3

    .prologue
    .line 192
    const-string v1, "eglGetCurrentDisplay"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 195
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    .line 196
    .local v0, result:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 198
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 199
    return-object v0
.end method

.method public eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;
    .registers 4
    .parameter "readdraw"

    .prologue
    .line 203
    const-string v1, "eglGetCurrentSurface"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 204
    const-string v1, "readdraw"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 205
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 207
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    .line 208
    .local v0, result:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 210
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 211
    return-object v0
.end method

.method public eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .registers 4
    .parameter "native_display"

    .prologue
    .line 215
    const-string v1, "eglGetDisplay"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 216
    const-string v1, "native_display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 219
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    .line 220
    .local v0, result:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/Object;)V

    .line 222
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 223
    return-object v0
.end method

.method public eglGetError()I
    .registers 3

    .prologue
    .line 227
    const-string v1, "eglGetError"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 228
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 230
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 231
    .local v0, result:I
    invoke-static {v0}, Landroid/opengl/EGLLogWrapper;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 233
    return v0
.end method

.method public eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z
    .registers 5
    .parameter "display"
    .parameter "major_minor"

    .prologue
    .line 237
    const-string v1, "eglInitialize"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 238
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 239
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 240
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    .line 241
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 242
    const-string v1, "major_minor"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;[I)V

    .line 243
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 244
    return v0
.end method

.method public eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z
    .registers 7
    .parameter "display"
    .parameter "draw"
    .parameter "read"
    .parameter "context"

    .prologue
    .line 249
    const-string v1, "eglMakeCurrent"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 250
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 251
    const-string v1, "draw"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 252
    const-string v1, "read"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 253
    const-string v1, "context"

    invoke-direct {p0, v1, p4}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 254
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 255
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    .line 256
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 257
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 258
    return v0
.end method

.method public eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z
    .registers 7
    .parameter "display"
    .parameter "context"
    .parameter "attribute"
    .parameter "value"

    .prologue
    .line 263
    const-string v1, "eglQueryContext"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 264
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 265
    const-string v1, "context"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 266
    const-string v1, "attribute"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 267
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 268
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglQueryContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;I[I)Z

    move-result v0

    .line 270
    .local v0, result:Z
    const/4 v1, 0x0

    aget v1, p4, v1

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->returns(I)V

    .line 271
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 272
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 273
    return v0
.end method

.method public eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;
    .registers 5
    .parameter "display"
    .parameter "name"

    .prologue
    .line 277
    const-string v1, "eglQueryString"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 278
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 279
    const-string v1, "name"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 280
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 281
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, result:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Ljava/lang/String;)V

    .line 283
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 284
    return-object v0
.end method

.method public eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z
    .registers 7
    .parameter "display"
    .parameter "surface"
    .parameter "attribute"
    .parameter "value"

    .prologue
    .line 289
    const-string v1, "eglQuerySurface"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 290
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 291
    const-string v1, "surface"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 292
    const-string v1, "attribute"

    invoke-direct {p0, v1, p3}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 293
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 294
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    move-result v0

    .line 296
    .local v0, result:Z
    const/4 v1, 0x0

    aget v1, p4, v1

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->returns(I)V

    .line 297
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 298
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 299
    return v0
.end method

.method public eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z
    .registers 5
    .parameter "display"
    .parameter "surface"

    .prologue
    .line 303
    const-string v1, "eglInitialize"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 304
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 305
    const-string v1, "surface"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 306
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 307
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    .line 308
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 309
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 310
    return v0
.end method

.method public eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z
    .registers 4
    .parameter "display"

    .prologue
    .line 314
    const-string v1, "eglTerminate"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 315
    const-string v1, "display"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 316
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 317
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    move-result v0

    .line 318
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 319
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 320
    return v0
.end method

.method public eglWaitGL()Z
    .registers 3

    .prologue
    .line 324
    const-string v1, "eglWaitGL"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 325
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 326
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitGL()Z

    move-result v0

    .line 327
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 328
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 329
    return v0
.end method

.method public eglWaitNative(ILjava/lang/Object;)Z
    .registers 5
    .parameter "engine"
    .parameter "bindTarget"

    .prologue
    .line 333
    const-string v1, "eglWaitNative"

    invoke-direct {p0, v1}, Landroid/opengl/EGLLogWrapper;->begin(Ljava/lang/String;)V

    .line 334
    const-string v1, "engine"

    invoke-direct {p0, v1, p1}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;I)V

    .line 335
    const-string v1, "bindTarget"

    invoke-direct {p0, v1, p2}, Landroid/opengl/EGLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->end()V

    .line 337
    iget-object v1, p0, Landroid/opengl/EGLLogWrapper;->mEgl10:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitNative(ILjava/lang/Object;)Z

    move-result v0

    .line 338
    .local v0, result:Z
    invoke-direct {p0, v0}, Landroid/opengl/EGLLogWrapper;->returns(Z)V

    .line 339
    invoke-direct {p0}, Landroid/opengl/EGLLogWrapper;->checkError()V

    .line 340
    return v0
.end method
