.class public final Landroid/lge/lgdrm/DrmContent;
.super Ljava/lang/Object;
.source "DrmContent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmCnt"


# instance fields
.field protected agentType:I

.field private cid:Ljava/lang/String;

.field private contentSize:J

.field protected contentType:I

.field private contentURL:Ljava/lang/String;

.field private extension:Ljava/lang/String;

.field protected filename:Ljava/lang/String;

.field protected index:I

.field private mediaType:I

.field private metadata:Landroid/lge/lgdrm/DrmContentMetaData;

.field private mimeType:Ljava/lang/String;

.field protected permisson:I

.field protected previewContent:I

.field private riURL:Ljava/lang/String;

.field protected rightState:I

.field private ttid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, -0x4

    iput v0, p0, Landroid/lge/lgdrm/DrmContent;->rightState:I

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Landroid/lge/lgdrm/DrmContent;->permisson:I

    .line 132
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/lge/lgdrm/DrmContent;->contentSize:J

    .line 137
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;II)V
    .registers 6
    .parameter "filename"
    .parameter "index"
    .parameter "contentType"

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, -0x4

    iput v0, p0, Landroid/lge/lgdrm/DrmContent;->rightState:I

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Landroid/lge/lgdrm/DrmContent;->permisson:I

    .line 132
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/lge/lgdrm/DrmContent;->contentSize:J

    .line 141
    iput-object p1, p0, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    .line 142
    iput p2, p0, Landroid/lge/lgdrm/DrmContent;->index:I

    .line 143
    iput p3, p0, Landroid/lge/lgdrm/DrmContent;->contentType:I

    .line 145
    if-nez p3, :cond_16

    .line 174
    :cond_15
    :goto_15
    return-void

    .line 150
    :cond_16
    const/16 v0, 0x10

    if-le p3, v0, :cond_22

    const/16 v0, 0x1000

    if-ge p3, v0, :cond_22

    .line 152
    const/4 v0, 0x1

    iput v0, p0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_15

    .line 154
    :cond_22
    const/16 v0, 0x3000

    if-ne p3, v0, :cond_2a

    .line 156
    const/4 v0, 0x2

    iput v0, p0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_15

    .line 158
    :cond_2a
    const v0, 0x8001

    if-ne p3, v0, :cond_33

    .line 160
    const/4 v0, 0x3

    iput v0, p0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_15

    .line 162
    :cond_33
    const/high16 v0, 0x1

    and-int/2addr v0, p3

    if-eqz v0, :cond_3c

    .line 164
    const/4 v0, 0x5

    iput v0, p0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_15

    .line 166
    :cond_3c
    const/high16 v0, 0x8

    if-ne p3, v0, :cond_44

    .line 168
    const/4 v0, 0x6

    iput v0, p0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_15

    .line 170
    :cond_44
    const/high16 v0, 0x10

    and-int/2addr v0, p3

    if-nez v0, :cond_4d

    const/high16 v0, 0x80

    if-ne p3, v0, :cond_15

    .line 172
    :cond_4d
    const/4 v0, 0x7

    iput v0, p0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_15
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .parameter "filename"
    .parameter "index"
    .parameter "contentType"
    .parameter "mimeType"
    .parameter "extension"
    .parameter "mediaType"

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, -0x4

    iput v0, p0, Landroid/lge/lgdrm/DrmContent;->rightState:I

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Landroid/lge/lgdrm/DrmContent;->permisson:I

    .line 132
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/lge/lgdrm/DrmContent;->contentSize:J

    .line 193
    iput-object p1, p0, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    .line 194
    iput p3, p0, Landroid/lge/lgdrm/DrmContent;->contentType:I

    .line 195
    iput-object p4, p0, Landroid/lge/lgdrm/DrmContent;->mimeType:Ljava/lang/String;

    .line 196
    iput-object p5, p0, Landroid/lge/lgdrm/DrmContent;->extension:Ljava/lang/String;

    .line 197
    iput p6, p0, Landroid/lge/lgdrm/DrmContent;->mediaType:I

    .line 199
    const/16 v0, 0x10

    if-le p3, v0, :cond_23

    const/16 v0, 0x1000

    if-ge p3, v0, :cond_23

    .line 201
    const/4 v0, 0x1

    iput v0, p0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    .line 223
    :cond_22
    :goto_22
    return-void

    .line 203
    :cond_23
    const/16 v0, 0x3000

    if-ne p3, v0, :cond_2b

    .line 205
    const/4 v0, 0x2

    iput v0, p0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_22

    .line 207
    :cond_2b
    const v0, 0x8001

    if-ne p3, v0, :cond_34

    .line 209
    const/4 v0, 0x3

    iput v0, p0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_22

    .line 211
    :cond_34
    const/high16 v0, 0x1

    and-int/2addr v0, p3

    if-eqz v0, :cond_3d

    .line 213
    const/4 v0, 0x5

    iput v0, p0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_22

    .line 215
    :cond_3d
    const/high16 v0, 0x8

    if-ne p3, v0, :cond_45

    .line 217
    const/4 v0, 0x6

    iput v0, p0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_22

    .line 219
    :cond_45
    const/high16 v0, 0x10

    and-int/2addr v0, p3

    if-nez v0, :cond_4e

    const/high16 v0, 0x80

    if-ne p3, v0, :cond_22

    .line 221
    :cond_4e
    const/4 v0, 0x7

    iput v0, p0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_22
.end method

.method public static getContentInfo(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "filename"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;,
            Landroid/lge/lgdrm/DrmException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 412
    if-nez p0, :cond_b

    .line 414
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter filename is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_b
    const/4 v0, 0x1

    if-lt p1, v0, :cond_11

    const/4 v0, 0x6

    if-le p1, v0, :cond_19

    .line 418
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_19
    invoke-static {p0}, Landroid/lge/lgdrm/DrmContent;->nativeIsDRM(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_27

    .line 423
    new-instance v0, Landroid/lge/lgdrm/DrmException;

    const-string v1, "Not DRM protected content"

    invoke-direct {v0, v1}, Landroid/lge/lgdrm/DrmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_27
    invoke-static {p1, p0, v1, v1}, Landroid/lge/lgdrm/DrmContent;->nativeGetContentInfo(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContentType(Ljava/lang/String;)I
    .registers 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Landroid/lge/lgdrm/DrmException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 284
    if-nez p0, :cond_b

    .line 286
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter filename is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_b
    invoke-static {p0}, Landroid/lge/lgdrm/DrmContent;->nativeIsDRM(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    .line 291
    new-instance v0, Landroid/lge/lgdrm/DrmException;

    const-string v1, "Not DRM protected content"

    invoke-direct {v0, v1}, Landroid/lge/lgdrm/DrmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_19
    invoke-static {p0, v1, v1}, Landroid/lge/lgdrm/DrmContent;->nativeGetContentType(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private native nativeCheckPreviewContent(Ljava/lang/String;I)Z
.end method

.method private static native nativeGetContentInfo(ILjava/lang/String;II)Ljava/lang/String;
.end method

.method private native nativeGetContentSize(Ljava/lang/String;II)J
.end method

.method private static native nativeGetContentType(Ljava/lang/String;II)I
.end method

.method private native nativeGetMetaData(Landroid/lge/lgdrm/DrmContentMetaData;Ljava/lang/String;II)I
.end method

.method private static native nativeIsDRM(Ljava/lang/String;)I
.end method

.method private setBasicInfo(IILjava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter "index"
    .parameter "contentType"
    .parameter "mimeType"
    .parameter "extension"
    .parameter "mediaType"

    .prologue
    .line 649
    iput p2, p0, Landroid/lge/lgdrm/DrmContent;->contentType:I

    .line 650
    iput-object p3, p0, Landroid/lge/lgdrm/DrmContent;->mimeType:Ljava/lang/String;

    .line 651
    iput-object p4, p0, Landroid/lge/lgdrm/DrmContent;->extension:Ljava/lang/String;

    .line 652
    iput p5, p0, Landroid/lge/lgdrm/DrmContent;->mediaType:I

    .line 654
    const/16 v0, 0x10

    if-le p2, v0, :cond_14

    const/16 v0, 0x1000

    if-ge p2, v0, :cond_14

    .line 656
    const/4 v0, 0x1

    iput v0, p0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    .line 678
    :cond_13
    :goto_13
    return-void

    .line 658
    :cond_14
    const/16 v0, 0x3000

    if-ne p2, v0, :cond_1c

    .line 660
    const/4 v0, 0x2

    iput v0, p0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_13

    .line 662
    :cond_1c
    const v0, 0x8001

    if-ne p2, v0, :cond_25

    .line 664
    const/4 v0, 0x3

    iput v0, p0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_13

    .line 666
    :cond_25
    const/high16 v0, 0x1

    and-int/2addr v0, p2

    if-eqz v0, :cond_2e

    .line 668
    const/4 v0, 0x5

    iput v0, p0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_13

    .line 670
    :cond_2e
    const/high16 v0, 0x8

    if-ne p2, v0, :cond_36

    .line 672
    const/4 v0, 0x6

    iput v0, p0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_13

    .line 674
    :cond_36
    const/high16 v0, 0x10

    and-int/2addr v0, p2

    if-nez v0, :cond_3f

    const/high16 v0, 0x80

    if-ne p2, v0, :cond_13

    .line 676
    :cond_3f
    const/4 v0, 0x7

    iput v0, p0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    goto :goto_13
.end method

.method private setBasicInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .parameter "mimeType"
    .parameter "extension"
    .parameter "mediaType"

    .prologue
    .line 691
    iput-object p1, p0, Landroid/lge/lgdrm/DrmContent;->mimeType:Ljava/lang/String;

    .line 692
    iput-object p2, p0, Landroid/lge/lgdrm/DrmContent;->extension:Ljava/lang/String;

    .line 693
    iput p3, p0, Landroid/lge/lgdrm/DrmContent;->mediaType:I

    .line 694
    return-void
.end method


# virtual methods
.method public checkPreviewContent()Z
    .registers 3

    .prologue
    .line 453
    iget v0, p0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 455
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v1, p0, Landroid/lge/lgdrm/DrmContent;->index:I

    invoke-direct {p0, v0, v1}, Landroid/lge/lgdrm/DrmContent;->nativeCheckPreviewContent(Ljava/lang/String;I)Z

    move-result v0

    .line 458
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getContentInfo(I)Ljava/lang/String;
    .registers 7
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 315
    if-lt p1, v1, :cond_8

    if-le p1, v4, :cond_10

    .line 317
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_10
    if-ne p1, v1, :cond_15

    .line 322
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContent;->mimeType:Ljava/lang/String;

    .line 385
    :goto_14
    return-object v0

    .line 324
    :cond_15
    if-ne p1, v2, :cond_1a

    .line 326
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContent;->extension:Ljava/lang/String;

    goto :goto_14

    .line 330
    :cond_1a
    iget v0, p0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    if-eq v0, v1, :cond_24

    iget v0, p0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    if-eq v0, v2, :cond_24

    move-object v0, v3

    .line 332
    goto :goto_14

    .line 335
    :cond_24
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3d

    .line 337
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContent;->cid:Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 339
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContent;->cid:Ljava/lang/String;

    goto :goto_14

    .line 342
    :cond_2e
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v1, p0, Landroid/lge/lgdrm/DrmContent;->index:I

    iget v2, p0, Landroid/lge/lgdrm/DrmContent;->previewContent:I

    invoke-static {p1, v0, v1, v2}, Landroid/lge/lgdrm/DrmContent;->nativeGetContentInfo(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/lge/lgdrm/DrmContent;->cid:Ljava/lang/String;

    .line 343
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContent;->cid:Ljava/lang/String;

    goto :goto_14

    .line 346
    :cond_3d
    const/4 v0, 0x4

    if-ne p1, v0, :cond_56

    .line 348
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContent;->riURL:Ljava/lang/String;

    if-eqz v0, :cond_47

    .line 350
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContent;->riURL:Ljava/lang/String;

    goto :goto_14

    .line 353
    :cond_47
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v1, p0, Landroid/lge/lgdrm/DrmContent;->index:I

    iget v2, p0, Landroid/lge/lgdrm/DrmContent;->previewContent:I

    invoke-static {p1, v0, v1, v2}, Landroid/lge/lgdrm/DrmContent;->nativeGetContentInfo(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/lge/lgdrm/DrmContent;->riURL:Ljava/lang/String;

    .line 354
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContent;->riURL:Ljava/lang/String;

    goto :goto_14

    .line 358
    :cond_56
    iget v0, p0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    if-eq v0, v2, :cond_5c

    move-object v0, v3

    .line 360
    goto :goto_14

    .line 363
    :cond_5c
    const/4 v0, 0x5

    if-ne p1, v0, :cond_75

    .line 365
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContent;->contentURL:Ljava/lang/String;

    if-eqz v0, :cond_66

    .line 367
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContent;->contentURL:Ljava/lang/String;

    goto :goto_14

    .line 370
    :cond_66
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v1, p0, Landroid/lge/lgdrm/DrmContent;->index:I

    iget v2, p0, Landroid/lge/lgdrm/DrmContent;->previewContent:I

    invoke-static {p1, v0, v1, v2}, Landroid/lge/lgdrm/DrmContent;->nativeGetContentInfo(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/lge/lgdrm/DrmContent;->contentURL:Ljava/lang/String;

    .line 371
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContent;->contentURL:Ljava/lang/String;

    goto :goto_14

    .line 374
    :cond_75
    if-ne p1, v4, :cond_8d

    .line 376
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContent;->ttid:Ljava/lang/String;

    if-eqz v0, :cond_7e

    .line 378
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContent;->ttid:Ljava/lang/String;

    goto :goto_14

    .line 381
    :cond_7e
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v1, p0, Landroid/lge/lgdrm/DrmContent;->index:I

    iget v2, p0, Landroid/lge/lgdrm/DrmContent;->previewContent:I

    invoke-static {p1, v0, v1, v2}, Landroid/lge/lgdrm/DrmContent;->nativeGetContentInfo(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/lge/lgdrm/DrmContent;->ttid:Ljava/lang/String;

    .line 382
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContent;->ttid:Ljava/lang/String;

    goto :goto_14

    :cond_8d
    move-object v0, v3

    .line 385
    goto :goto_14
.end method

.method public getContentSize()J
    .registers 5

    .prologue
    .line 437
    iget-wide v0, p0, Landroid/lge/lgdrm/DrmContent;->contentSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 439
    iget-wide v0, p0, Landroid/lge/lgdrm/DrmContent;->contentSize:J

    .line 443
    :goto_a
    return-wide v0

    .line 442
    :cond_b
    iget-object v0, p0, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v1, p0, Landroid/lge/lgdrm/DrmContent;->index:I

    iget v2, p0, Landroid/lge/lgdrm/DrmContent;->previewContent:I

    invoke-direct {p0, v0, v1, v2}, Landroid/lge/lgdrm/DrmContent;->nativeGetContentSize(Ljava/lang/String;II)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/lge/lgdrm/DrmContent;->contentSize:J

    .line 443
    iget-wide v0, p0, Landroid/lge/lgdrm/DrmContent;->contentSize:J

    goto :goto_a
.end method

.method public getContentType()I
    .registers 2

    .prologue
    .line 261
    iget v0, p0, Landroid/lge/lgdrm/DrmContent;->mediaType:I

    return v0
.end method

.method public getDrmContentType()I
    .registers 2

    .prologue
    .line 245
    iget v0, p0, Landroid/lge/lgdrm/DrmContent;->contentType:I

    return v0
.end method

.method public getMetaData()Landroid/lge/lgdrm/DrmContentMetaData;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 511
    iget v1, p0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d

    iget v1, p0, Landroid/lge/lgdrm/DrmContent;->agentType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_d

    move-object v1, v4

    .line 540
    :goto_c
    return-object v1

    .line 517
    :cond_d
    iget-object v1, p0, Landroid/lge/lgdrm/DrmContent;->metadata:Landroid/lge/lgdrm/DrmContentMetaData;

    if-eqz v1, :cond_14

    .line 520
    iget-object v1, p0, Landroid/lge/lgdrm/DrmContent;->metadata:Landroid/lge/lgdrm/DrmContentMetaData;

    goto :goto_c

    .line 523
    :cond_14
    new-instance v0, Landroid/lge/lgdrm/DrmContentMetaData;

    invoke-direct {v0}, Landroid/lge/lgdrm/DrmContentMetaData;-><init>()V

    .line 524
    .local v0, meta:Landroid/lge/lgdrm/DrmContentMetaData;
    if-nez v0, :cond_1d

    move-object v1, v4

    .line 526
    goto :goto_c

    .line 529
    :cond_1d
    iget-object v1, p0, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget v2, p0, Landroid/lge/lgdrm/DrmContent;->index:I

    iget v3, p0, Landroid/lge/lgdrm/DrmContent;->previewContent:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/lge/lgdrm/DrmContent;->nativeGetMetaData(Landroid/lge/lgdrm/DrmContentMetaData;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_2b

    move-object v1, v4

    .line 531
    goto :goto_c

    .line 534
    :cond_2b
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Landroid/lge/lgdrm/DrmContent;->isActionSupported(I)Z

    move-result v1

    if-nez v1, :cond_35

    .line 537
    iput-object v0, p0, Landroid/lge/lgdrm/DrmContent;->metadata:Landroid/lge/lgdrm/DrmContentMetaData;

    :cond_35
    move-object v1, v0

    .line 540
    goto :goto_c
.end method

.method public isActionSupported(I)Z
    .registers 4
    .parameter "action"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 491
    const/16 v0, 0xf

    if-eq p1, v0, :cond_c

    .line 493
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid action"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method protected isIdentical(Landroid/lge/lgdrm/DrmContent;)Z
    .registers 5
    .parameter "content"

    .prologue
    const/4 v2, 0x0

    .line 617
    if-nez p1, :cond_5

    move v0, v2

    .line 631
    :goto_4
    return v0

    .line 621
    :cond_5
    iget-object v0, p1, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget-object v1, p0, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_11

    move v0, v2

    .line 623
    goto :goto_4

    .line 627
    :cond_11
    iget v0, p1, Landroid/lge/lgdrm/DrmContent;->index:I

    iget v1, p0, Landroid/lge/lgdrm/DrmContent;->index:I

    if-eq v0, v1, :cond_19

    move v0, v2

    .line 629
    goto :goto_4

    .line 631
    :cond_19
    const/4 v0, 0x1

    goto :goto_4
.end method

.method protected isSibling(Landroid/lge/lgdrm/DrmContent;)Z
    .registers 5
    .parameter "content"

    .prologue
    const/4 v2, 0x0

    .line 595
    if-nez p1, :cond_5

    move v0, v2

    .line 605
    :goto_4
    return v0

    .line 601
    :cond_5
    iget-object v0, p1, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    iget-object v1, p0, Landroid/lge/lgdrm/DrmContent;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_11

    move v0, v2

    .line 603
    goto :goto_4

    .line 605
    :cond_11
    const/4 v0, 0x1

    goto :goto_4
.end method

.method public resetMetaData()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 583
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Meta dat editing is not permitted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public selectPreviewContent(Z)V
    .registers 3
    .parameter "reset"

    .prologue
    .line 468
    if-eqz p1, :cond_6

    .line 470
    const/4 v0, 0x0

    iput v0, p0, Landroid/lge/lgdrm/DrmContent;->previewContent:I

    .line 476
    :goto_5
    return-void

    .line 474
    :cond_6
    const/4 v0, 0x1

    iput v0, p0, Landroid/lge/lgdrm/DrmContent;->previewContent:I

    goto :goto_5
.end method

.method public setMetaData(Landroid/lge/lgdrm/DrmContentMetaData;)I
    .registers 4
    .parameter "metaData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 561
    if-nez p1, :cond_a

    .line 563
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Parameter metaData is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Meta dat editing is not permitted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
