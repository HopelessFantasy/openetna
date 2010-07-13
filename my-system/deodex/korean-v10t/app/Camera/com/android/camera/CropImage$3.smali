.class Lcom/android/camera/CropImage$3;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CropImage;


# direct methods
.method constructor <init>(Lcom/android/camera/CropImage;)V
    .registers 2
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 25
    .parameter "v"

    .prologue
    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/android/camera/CropImage;->access$002(Lcom/android/camera/CropImage;Z)Z

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-nez v17, :cond_107

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/CropImage;->mCrop:Lcom/android/camera/HighlightView;

    move-object/from16 v17, v0

    if-nez v17, :cond_28

    .line 633
    :goto_27
    return-void

    .line 458
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/CropImage;->mCrop:Lcom/android/camera/HighlightView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v13

    .line 460
    .local v13, r:Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v16

    .line 461
    .local v16, width:I
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 464
    .local v9, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/camera/CropImage;->access$300(Lcom/android/camera/CropImage;)Z

    move-result v18

    if-eqz v18, :cond_1d3

    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_54
    move/from16 v0, v16

    move v1, v9

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/camera/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    .line 468
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 469
    .local v7, c1:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Rect;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v16

    move v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v19, 0x0

    move-object v0, v7

    move-object/from16 v1, v17

    move-object v2, v13

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/CropImage;->access$300(Lcom/android/camera/CropImage;)Z

    move-result v17

    if-eqz v17, :cond_107

    .line 476
    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 477
    .local v6, c:Landroid/graphics/Canvas;
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    .line 478
    .local v12, p:Landroid/graphics/Path;
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    move v0, v9

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    sget-object v20, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v0, v12

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 479
    sget-object v17, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, v6

    move-object v1, v12

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    move v2, v9

    move-object v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/CropImage;->access$400(Lcom/android/camera/CropImage;IILandroid/graphics/Canvas;)V

    .line 486
    .end local v6           #c:Landroid/graphics/Canvas;
    .end local v7           #c1:Landroid/graphics/Canvas;
    .end local v9           #height:I
    .end local v12           #p:Landroid/graphics/Path;
    .end local v13           #r:Landroid/graphics/Rect;
    .end local v16           #width:I
    :cond_107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/CropImage;->access$500(Lcom/android/camera/CropImage;)I

    move-result v17

    if-eqz v17, :cond_16a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/CropImage;->access$600(Lcom/android/camera/CropImage;)I

    move-result v17

    if-eqz v17, :cond_16a

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/CropImage;->access$700(Lcom/android/camera/CropImage;)Z

    move-result v17

    if-eqz v17, :cond_1d7

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Matrix;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/camera/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/camera/CropImage;->access$500(Lcom/android/camera/CropImage;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/camera/CropImage;->access$600(Lcom/android/camera/CropImage;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/camera/CropImage;->access$800(Lcom/android/camera/CropImage;)Z

    move-result v22

    invoke-static/range {v18 .. v22}, Lcom/android/camera/ImageLoader;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/camera/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    .line 516
    :cond_16a
    :goto_16a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 517
    .local v11, myExtras:Landroid/os/Bundle;
    if-eqz v11, :cond_26d

    const-string v17, "data"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    if-nez v17, :cond_190

    const-string v17, "return-data"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_26d

    .line 518
    :cond_190
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 519
    .local v8, extras:Landroid/os/Bundle;
    const-string v17, "data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/camera/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    move-object v0, v8

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    const-string v20, "inline-data"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/CropImage;->finish()V

    goto/16 :goto_27

    .line 464
    .end local v8           #extras:Landroid/os/Bundle;
    .end local v11           #myExtras:Landroid/os/Bundle;
    .restart local v9       #height:I
    .restart local v13       #r:Landroid/graphics/Rect;
    .restart local v16       #width:I
    :cond_1d3
    sget-object v18, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_54

    .line 501
    .end local v9           #height:I
    .end local v13           #r:Landroid/graphics/Rect;
    .end local v16           #width:I
    :cond_1d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/CropImage;->access$500(Lcom/android/camera/CropImage;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/camera/CropImage;->access$600(Lcom/android/camera/CropImage;)I

    move-result v18

    sget-object v19, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v17 .. v19}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 502
    .local v5, b:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 505
    .restart local v7       #c1:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/CropImage;->mCrop:Lcom/android/camera/HighlightView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v13

    .line 506
    .restart local v13       #r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/CropImage;->access$500(Lcom/android/camera/CropImage;)I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sub-int v10, v17, v18

    .line 507
    .local v10, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/CropImage;->access$600(Lcom/android/camera/CropImage;)I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    sub-int v15, v17, v18

    .line 508
    .local v15, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    new-instance v18, Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v19

    add-int v19, v19, v10

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v20

    add-int v20, v20, v15

    move-object/from16 v0, v18

    move v1, v10

    move v2, v15

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v19, 0x0

    move-object v0, v7

    move-object/from16 v1, v17

    move-object v2, v13

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v17, v0

    move-object v0, v5

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/camera/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    goto/16 :goto_16a

    .line 524
    .end local v5           #b:Landroid/graphics/Bitmap;
    .end local v7           #c1:Landroid/graphics/Canvas;
    .end local v10           #left:I
    .end local v13           #r:Landroid/graphics/Rect;
    .end local v15           #top:I
    .restart local v11       #myExtras:Landroid/os/Bundle;
    :cond_26d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/CropImage;->isFinishing()Z

    move-result v17

    if-nez v17, :cond_2a3

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f090012

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    const/16 v22, 0x1

    invoke-static/range {v18 .. v22}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/CropImage;->access$902(Lcom/android/camera/CropImage;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 530
    :cond_2a3
    new-instance v13, Lcom/android/camera/CropImage$3$1;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/CropImage$3$1;-><init>(Lcom/android/camera/CropImage$3;)V

    .line 630
    .local v13, r:Ljava/lang/Runnable;
    new-instance v14, Ljava/lang/Thread;

    invoke-direct {v14, v13}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 631
    .local v14, t:Ljava/lang/Thread;
    invoke-virtual {v14}, Ljava/lang/Thread;->start()V

    goto/16 :goto_27
.end method
