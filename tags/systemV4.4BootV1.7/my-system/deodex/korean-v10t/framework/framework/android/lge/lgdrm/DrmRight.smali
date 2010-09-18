.class public final Landroid/lge/lgdrm/DrmRight;
.super Ljava/lang/Object;
.source "DrmRight.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmRight"


# instance fields
.field private accumulated:Ljava/lang/String;

.field private count:Ljava/lang/String;

.field private dateTime:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private index:I

.field private individual:Ljava/lang/String;

.field private interval:Ljava/lang/String;

.field private metering:Z

.field private mid:Ljava/lang/String;

.field private permission:I

.field private previewContent:I

.field private system:Ljava/lang/String;

.field private timedCount:Ljava/lang/String;

.field private unlimited:Z

.field private useLeft:Ljava/lang/String;

.field private validFor:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    return-void
.end method

.method protected constructor <init>(Landroid/lge/lgdrm/DrmContent;)V
    .registers 3
    .parameter "content"

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iget-object v0, p1, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iput-object v0, p0, Landroid/lge/lgdrm/DrmRight;->filename:Ljava/lang/String;

    .line 202
    iget v0, p1, Landroid/lge/lgdrm/DrmContent;->index:I

    iput v0, p0, Landroid/lge/lgdrm/DrmRight;->index:I

    .line 203
    iget v0, p1, Landroid/lge/lgdrm/DrmContent;->previewContent:I

    iput v0, p0, Landroid/lge/lgdrm/DrmRight;->previewContent:I

    .line 204
    iget v0, p1, Landroid/lge/lgdrm/DrmContent;->permisson:I

    iput v0, p0, Landroid/lge/lgdrm/DrmRight;->permission:I

    .line 205
    return-void
.end method

.method public static getKeyByCID(Ljava/lang/String;[B[B)I
    .registers 5
    .parameter "cid"
    .parameter "encKey"
    .parameter "authSeed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x10

    .line 229
    invoke-static {}, Landroid/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_10

    .line 231
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_10
    if-eqz p1, :cond_14

    if-nez p2, :cond_1c

    .line 236
    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "one of the key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1c
    array-length v0, p1

    if-ge v0, v1, :cond_27

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encKey length is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_27
    array-length v0, p2

    if-ge v0, v1, :cond_32

    .line 244
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authSeed length is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_32
    invoke-static {p0, p1, p2}, Landroid/lge/lgdrm/DrmRight;->nativeGetKeyByCID(Ljava/lang/String;[B[B)I

    move-result v0

    return v0
.end method

.method public static getRegistrationCode()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 278
    invoke-static {}, Landroid/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_e

    .line 280
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_e
    invoke-static {}, Landroid/lge/lgdrm/DrmRight;->nativeGetRegistrationCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native nativeCheckMetering(Ljava/lang/String;)Z
.end method

.method private static native nativeGetKeyByCID(Ljava/lang/String;[B[B)I
.end method

.method private static native nativeGetRegistrationCode()Ljava/lang/String;
.end method

.method private native nativeGetRightInfo(Ljava/lang/String;III)I
.end method

.method private native nativeManageMetering(Ljava/lang/String;Z)I
.end method

.method private static native nativeSetRandomSample()V
.end method

.method public static setRandomSample()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-static {}, Landroid/lge/lgdrm/DrmManager;->nativeAuthCaller()Z

    move-result v0

    if-nez v0, :cond_e

    .line 261
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Need proper permission to access drm"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_e
    invoke-static {}, Landroid/lge/lgdrm/DrmRight;->nativeSetRandomSample()V

    .line 265
    return-void
.end method

.method private setRightInfo(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "unlimited"
    .parameter "metering"
    .parameter "useLeft"
    .parameter "validFor"
    .parameter "count"
    .parameter "dateTime"
    .parameter "interval"
    .parameter "timedCount"
    .parameter "accumulated"
    .parameter "individual"
    .parameter "system"
    .parameter "mid"

    .prologue
    .line 564
    iput-boolean p1, p0, Landroid/lge/lgdrm/DrmRight;->unlimited:Z

    .line 565
    iput-object p3, p0, Landroid/lge/lgdrm/DrmRight;->useLeft:Ljava/lang/String;

    .line 566
    iput-object p4, p0, Landroid/lge/lgdrm/DrmRight;->validFor:Ljava/lang/String;

    .line 567
    iput-object p5, p0, Landroid/lge/lgdrm/DrmRight;->count:Ljava/lang/String;

    .line 568
    iput-object p6, p0, Landroid/lge/lgdrm/DrmRight;->dateTime:Ljava/lang/String;

    .line 569
    iput-object p7, p0, Landroid/lge/lgdrm/DrmRight;->interval:Ljava/lang/String;

    .line 570
    iput-object p9, p0, Landroid/lge/lgdrm/DrmRight;->accumulated:Ljava/lang/String;

    .line 571
    iput-object p10, p0, Landroid/lge/lgdrm/DrmRight;->individual:Ljava/lang/String;

    .line 572
    iput-object p11, p0, Landroid/lge/lgdrm/DrmRight;->system:Ljava/lang/String;

    .line 573
    iput-boolean p2, p0, Landroid/lge/lgdrm/DrmRight;->metering:Z

    .line 574
    iput-object p12, p0, Landroid/lge/lgdrm/DrmRight;->mid:Ljava/lang/String;

    .line 575
    return-void
.end method


# virtual methods
.method public disableMetering()I
    .registers 3

    .prologue
    .line 523
    iget-object v0, p0, Landroid/lge/lgdrm/DrmRight;->mid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/lge/lgdrm/DrmRight;->nativeManageMetering(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public enableMetering()I
    .registers 3

    .prologue
    .line 512
    iget-object v0, p0, Landroid/lge/lgdrm/DrmRight;->mid:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/lge/lgdrm/DrmRight;->nativeManageMetering(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public getConstraint(I)Ljava/lang/String;
    .registers 4
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 473
    iget-boolean v0, p0, Landroid/lge/lgdrm/DrmRight;->unlimited:Z

    if-eqz v0, :cond_6

    .line 475
    const/4 v0, 0x0

    .line 486
    :goto_5
    return-object v0

    .line 478
    :cond_6
    packed-switch p1, :pswitch_data_26

    .line 488
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :pswitch_11
    iget-object v0, p0, Landroid/lge/lgdrm/DrmRight;->count:Ljava/lang/String;

    goto :goto_5

    .line 481
    :pswitch_14
    iget-object v0, p0, Landroid/lge/lgdrm/DrmRight;->dateTime:Ljava/lang/String;

    goto :goto_5

    .line 482
    :pswitch_17
    iget-object v0, p0, Landroid/lge/lgdrm/DrmRight;->interval:Ljava/lang/String;

    goto :goto_5

    .line 483
    :pswitch_1a
    iget-object v0, p0, Landroid/lge/lgdrm/DrmRight;->timedCount:Ljava/lang/String;

    goto :goto_5

    .line 484
    :pswitch_1d
    iget-object v0, p0, Landroid/lge/lgdrm/DrmRight;->accumulated:Ljava/lang/String;

    goto :goto_5

    .line 485
    :pswitch_20
    iget-object v0, p0, Landroid/lge/lgdrm/DrmRight;->individual:Ljava/lang/String;

    goto :goto_5

    .line 486
    :pswitch_23
    iget-object v0, p0, Landroid/lge/lgdrm/DrmRight;->system:Ljava/lang/String;

    goto :goto_5

    .line 478
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
    .end packed-switch
.end method

.method public getConstraintList()[I
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 384
    const/4 v0, 0x0

    .line 388
    .local v0, indx:I
    iget-boolean v3, p0, Landroid/lge/lgdrm/DrmRight;->unlimited:Z

    if-eqz v3, :cond_9

    move-object v3, v4

    .line 448
    :goto_8
    return-object v3

    .line 393
    :cond_9
    const/16 v3, 0x8

    new-array v2, v3, [I

    .line 394
    .local v2, tmp:[I
    if-nez v2, :cond_11

    move-object v3, v4

    .line 396
    goto :goto_8

    .line 399
    :cond_11
    iget-object v3, p0, Landroid/lge/lgdrm/DrmRight;->count:Ljava/lang/String;

    if-eqz v3, :cond_1a

    .line 401
    const/4 v3, 0x1

    aput v3, v2, v0

    .line 402
    add-int/lit8 v0, v0, 0x1

    .line 404
    :cond_1a
    iget-object v3, p0, Landroid/lge/lgdrm/DrmRight;->dateTime:Ljava/lang/String;

    if-eqz v3, :cond_23

    .line 406
    const/4 v3, 0x2

    aput v3, v2, v0

    .line 407
    add-int/lit8 v0, v0, 0x1

    .line 409
    :cond_23
    iget-object v3, p0, Landroid/lge/lgdrm/DrmRight;->interval:Ljava/lang/String;

    if-eqz v3, :cond_2c

    .line 411
    const/4 v3, 0x3

    aput v3, v2, v0

    .line 412
    add-int/lit8 v0, v0, 0x1

    .line 414
    :cond_2c
    iget-object v3, p0, Landroid/lge/lgdrm/DrmRight;->timedCount:Ljava/lang/String;

    if-eqz v3, :cond_35

    .line 416
    const/4 v3, 0x4

    aput v3, v2, v0

    .line 417
    add-int/lit8 v0, v0, 0x1

    .line 419
    :cond_35
    iget-object v3, p0, Landroid/lge/lgdrm/DrmRight;->accumulated:Ljava/lang/String;

    if-eqz v3, :cond_3e

    .line 421
    const/4 v3, 0x5

    aput v3, v2, v0

    .line 422
    add-int/lit8 v0, v0, 0x1

    .line 424
    :cond_3e
    iget-object v3, p0, Landroid/lge/lgdrm/DrmRight;->individual:Ljava/lang/String;

    if-eqz v3, :cond_47

    .line 426
    const/4 v3, 0x6

    aput v3, v2, v0

    .line 427
    add-int/lit8 v0, v0, 0x1

    .line 429
    :cond_47
    iget-object v3, p0, Landroid/lge/lgdrm/DrmRight;->system:Ljava/lang/String;

    if-eqz v3, :cond_50

    .line 431
    const/4 v3, 0x7

    aput v3, v2, v0

    .line 432
    add-int/lit8 v0, v0, 0x1

    .line 435
    :cond_50
    if-nez v0, :cond_54

    move-object v3, v4

    .line 437
    goto :goto_8

    .line 440
    :cond_54
    new-array v1, v0, [I

    .line 441
    .local v1, list:[I
    if-nez v1, :cond_5a

    move-object v3, v4

    .line 443
    goto :goto_8

    .line 446
    :cond_5a
    invoke-static {v2, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v1

    .line 448
    goto :goto_8
.end method

.method public getPermission()I
    .registers 2

    .prologue
    .line 339
    iget v0, p0, Landroid/lge/lgdrm/DrmRight;->permission:I

    return v0
.end method

.method public getSummaryInfo(I)Ljava/lang/String;
    .registers 4
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 356
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 358
    iget-object v0, p0, Landroid/lge/lgdrm/DrmRight;->validFor:Ljava/lang/String;

    .line 363
    :goto_5
    return-object v0

    .line 361
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 363
    iget-object v0, p0, Landroid/lge/lgdrm/DrmRight;->useLeft:Ljava/lang/String;

    goto :goto_5

    .line 366
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected isMatched(Landroid/lge/lgdrm/DrmContent;)Z
    .registers 5
    .parameter "content"

    .prologue
    const/4 v2, 0x0

    .line 546
    iget-object v0, p0, Landroid/lge/lgdrm/DrmRight;->filename:Ljava/lang/String;

    iget-object v1, p1, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    .line 554
    :goto_c
    return v0

    .line 550
    :cond_d
    iget v0, p0, Landroid/lge/lgdrm/DrmRight;->index:I

    iget v1, p1, Landroid/lge/lgdrm/DrmContent;->index:I

    if-eq v0, v1, :cond_15

    move v0, v2

    .line 552
    goto :goto_c

    .line 554
    :cond_15
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public isMeteringEnabled()Z
    .registers 2

    .prologue
    .line 533
    iget-object v0, p0, Landroid/lge/lgdrm/DrmRight;->mid:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/lge/lgdrm/DrmRight;->nativeCheckMetering(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMeteringRight()Z
    .registers 2

    .prologue
    .line 499
    iget-boolean v0, p0, Landroid/lge/lgdrm/DrmRight;->metering:Z

    return v0
.end method

.method public isUnlimited()Z
    .registers 2

    .prologue
    .line 322
    iget-boolean v0, p0, Landroid/lge/lgdrm/DrmRight;->unlimited:Z

    return v0
.end method

.method public isValidRight()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 294
    iget-object v1, p0, Landroid/lge/lgdrm/DrmRight;->filename:Ljava/lang/String;

    iget v2, p0, Landroid/lge/lgdrm/DrmRight;->index:I

    iget v3, p0, Landroid/lge/lgdrm/DrmRight;->previewContent:I

    iget v4, p0, Landroid/lge/lgdrm/DrmRight;->permission:I

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/lge/lgdrm/DrmRight;->nativeGetRightInfo(Ljava/lang/String;III)I

    move-result v0

    .line 296
    .local v0, retVal:I
    if-eqz v0, :cond_26

    .line 299
    iput-boolean v6, p0, Landroid/lge/lgdrm/DrmRight;->unlimited:Z

    .line 300
    iput-boolean v6, p0, Landroid/lge/lgdrm/DrmRight;->metering:Z

    .line 301
    iput-object v5, p0, Landroid/lge/lgdrm/DrmRight;->count:Ljava/lang/String;

    .line 302
    iput-object v5, p0, Landroid/lge/lgdrm/DrmRight;->dateTime:Ljava/lang/String;

    .line 303
    iput-object v5, p0, Landroid/lge/lgdrm/DrmRight;->interval:Ljava/lang/String;

    .line 304
    iput-object v5, p0, Landroid/lge/lgdrm/DrmRight;->timedCount:Ljava/lang/String;

    .line 305
    iput-object v5, p0, Landroid/lge/lgdrm/DrmRight;->accumulated:Ljava/lang/String;

    .line 306
    iput-object v5, p0, Landroid/lge/lgdrm/DrmRight;->individual:Ljava/lang/String;

    .line 307
    iput-object v5, p0, Landroid/lge/lgdrm/DrmRight;->system:Ljava/lang/String;

    .line 308
    iput-object v5, p0, Landroid/lge/lgdrm/DrmRight;->mid:Ljava/lang/String;

    move v1, v6

    .line 312
    :goto_25
    return v1

    :cond_26
    const/4 v1, 0x1

    goto :goto_25
.end method
