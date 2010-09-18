.class Lcom/android/camera/CropImage$3$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CropImage$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CropImage$3;


# direct methods
.method constructor <init>(Lcom/android/camera/CropImage$3;)V
    .registers 2
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/camera/CropImage$3$1;->this$1:Lcom/android/camera/CropImage$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 27

    .prologue
    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3$1;->this$1:Lcom/android/camera/CropImage$3;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    invoke-static {v4}, Lcom/android/camera/CropImage;->access$1000(Lcom/android/camera/CropImage;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_d9

    .line 533
    const/16 v22, 0x0

    .line 535
    .local v22, outputStream:Ljava/io/OutputStream;
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3$1;->this$1:Lcom/android/camera/CropImage$3;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    invoke-static {v4}, Lcom/android/camera/CropImage;->access$1000(Lcom/android/camera/CropImage;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v24

    .line 536
    .local v24, scheme:Ljava/lang/String;
    const-string v4, "file"

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b0

    .line 537
    new-instance v23, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3$1;->this$1:Lcom/android/camera/CropImage$3;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    invoke-static {v4}, Lcom/android/camera/CropImage;->access$1000(Lcom/android/camera/CropImage;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ":/"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .end local v22           #outputStream:Ljava/io/OutputStream;
    .local v23, outputStream:Ljava/io/OutputStream;
    move-object/from16 v22, v23

    .line 541
    .end local v23           #outputStream:Ljava/io/OutputStream;
    .restart local v22       #outputStream:Ljava/io/OutputStream;
    :goto_51
    if-eqz v22, :cond_71

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3$1;->this$1:Lcom/android/camera/CropImage$3;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    iget-object v4, v4, Lcom/android/camera/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3$1;->this$1:Lcom/android/camera/CropImage$3;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    invoke-static {v5}, Lcom/android/camera/CropImage;->access$1100(Lcom/android/camera/CropImage;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v5

    const/16 v6, 0x4b

    move-object v0, v4

    move-object v1, v5

    move v2, v6

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_71
    .catchall {:try_start_f .. :try_end_71} :catchall_d2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_71} :catch_c9

    .line 548
    :cond_71
    if-eqz v22, :cond_76

    .line 550
    :try_start_73
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_228

    .line 556
    .end local v24           #scheme:Ljava/lang/String;
    :cond_76
    :goto_76
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 557
    .local v19, extras:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3$1;->this$1:Lcom/android/camera/CropImage$3;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    const/4 v5, -0x1

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3$1;->this$1:Lcom/android/camera/CropImage$3;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    invoke-static {v7}, Lcom/android/camera/CropImage;->access$1000(Lcom/android/camera/CropImage;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 627
    .end local v22           #outputStream:Ljava/io/OutputStream;
    :goto_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3$1;->this$1:Lcom/android/camera/CropImage$3;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    invoke-virtual {v4}, Lcom/android/camera/CropImage;->finish()V

    .line 628
    return-void

    .line 539
    .end local v19           #extras:Landroid/os/Bundle;
    .restart local v22       #outputStream:Ljava/io/OutputStream;
    .restart local v24       #scheme:Ljava/lang/String;
    :cond_b0
    :try_start_b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3$1;->this$1:Lcom/android/camera/CropImage$3;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    iget-object v4, v4, Lcom/android/camera/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3$1;->this$1:Lcom/android/camera/CropImage$3;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    invoke-static {v5}, Lcom/android/camera/CropImage;->access$1000(Lcom/android/camera/CropImage;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_c7
    .catchall {:try_start_b0 .. :try_end_c7} :catchall_d2
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_c7} :catch_c9

    move-result-object v22

    goto :goto_51

    .line 544
    .end local v24           #scheme:Ljava/lang/String;
    :catch_c9
    move-exception v4

    .line 548
    if-eqz v22, :cond_76

    .line 550
    :try_start_cc
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_d0

    goto :goto_76

    .line 551
    :catch_d0
    move-exception v4

    goto :goto_76

    .line 548
    :catchall_d2
    move-exception v4

    if-eqz v22, :cond_d8

    .line 550
    :try_start_d5
    invoke-virtual/range {v22 .. v22}, Ljava/io/OutputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_22b

    .line 553
    :cond_d8
    :goto_d8
    throw v4

    .line 562
    .end local v22           #outputStream:Ljava/io/OutputStream;
    :cond_d9
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 563
    .restart local v19       #extras:Landroid/os/Bundle;
    const-string v4, "rect"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3$1;->this$1:Lcom/android/camera/CropImage$3;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    iget-object v5, v5, Lcom/android/camera/CropImage;->mCrop:Lcom/android/camera/HighlightView;

    invoke-virtual {v5}, Lcom/android/camera/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    new-instance v21, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3$1;->this$1:Lcom/android/camera/CropImage$3;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    iget-object v4, v4, Lcom/android/camera/CropImage;->mImage:Lcom/android/camera/ImageManager$IImage;

    invoke-interface {v4}, Lcom/android/camera/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 581
    .local v21, oldPath:Ljava/io/File;
    new-instance v17, Ljava/io/File;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 583
    .local v17, directory:Ljava/io/File;
    const/16 v25, 0x0

    .line 584
    .local v25, x:I
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    .line 585
    .local v20, fileName:Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "."

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v20

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 588
    :cond_131
    add-int/lit8 v25, v25, 0x1

    .line 589
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 592
    .local v16, candidate:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v18

    .line 593
    .local v18, exists:Z
    if-nez v18, :cond_131

    .line 598
    :try_start_172
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3$1;->this$1:Lcom/android/camera/CropImage$3;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3$1;->this$1:Lcom/android/camera/CropImage$3;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    invoke-virtual {v6}, Lcom/android/camera/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3$1;->this$1:Lcom/android/camera/CropImage$3;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    iget-object v7, v7, Lcom/android/camera/CropImage;->mImage:Lcom/android/camera/ImageManager$IImage;

    invoke-interface {v7}, Lcom/android/camera/ImageManager$IImage;->getTitle()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3$1;->this$1:Lcom/android/camera/CropImage$3;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    iget-object v8, v8, Lcom/android/camera/CropImage;->mImage:Lcom/android/camera/ImageManager$IImage;

    invoke-interface {v8}, Lcom/android/camera/ImageManager$IImage;->getDescription()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3$1;->this$1:Lcom/android/camera/CropImage$3;

    move-object v9, v0

    iget-object v9, v9, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    iget-object v9, v9, Lcom/android/camera/CropImage;->mImage:Lcom/android/camera/ImageManager$IImage;

    invoke-interface {v9}, Lcom/android/camera/ImageManager$IImage;->getDateTaken()J

    move-result-wide v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v4 .. v14}, Lcom/android/camera/ImageManager;->addImage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 609
    .local v5, newUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3$1;->this$1:Lcom/android/camera/CropImage$3;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3$1;->this$1:Lcom/android/camera/CropImage$3;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    invoke-virtual {v7}, Lcom/android/camera/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3$1;->this$1:Lcom/android/camera/CropImage$3;

    move-object v9, v0

    iget-object v9, v9, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    iget-object v9, v9, Lcom/android/camera/CropImage;->mCroppedImage:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/camera/ImageManager;->storeImage(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;ILandroid/graphics/Bitmap;[B)Lcom/android/camera/ImageManager$IAddImage_cancelable;

    move-result-object v15

    .line 617
    .local v15, cancelable:Lcom/android/camera/ImageManager$IAddImage_cancelable;
    invoke-interface {v15}, Lcom/android/camera/ImageManager$IAddImage_cancelable;->get()V

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CropImage$3$1;->this$1:Lcom/android/camera/CropImage$3;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/camera/CropImage$3;->this$0:Lcom/android/camera/CropImage;

    const/4 v6, -0x1

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5           #newUri:Landroid/net/Uri;
    invoke-virtual {v7, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/android/camera/CropImage;->setResult(ILandroid/content/Intent;)V
    :try_end_223
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_223} :catch_225

    goto/16 :goto_a5

    .line 621
    .end local v15           #cancelable:Lcom/android/camera/ImageManager$IAddImage_cancelable;
    :catch_225
    move-exception v4

    goto/16 :goto_a5

    .line 551
    .end local v16           #candidate:Ljava/lang/String;
    .end local v17           #directory:Ljava/io/File;
    .end local v18           #exists:Z
    .end local v19           #extras:Landroid/os/Bundle;
    .end local v20           #fileName:Ljava/lang/String;
    .end local v21           #oldPath:Ljava/io/File;
    .end local v25           #x:I
    .restart local v22       #outputStream:Ljava/io/OutputStream;
    .restart local v24       #scheme:Ljava/lang/String;
    :catch_228
    move-exception v4

    goto/16 :goto_76

    .end local v24           #scheme:Ljava/lang/String;
    :catch_22b
    move-exception v5

    goto/16 :goto_d8
.end method
