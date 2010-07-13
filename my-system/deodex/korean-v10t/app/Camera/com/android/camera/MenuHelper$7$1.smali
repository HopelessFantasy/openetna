.class Lcom/android/camera/MenuHelper$7$1;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Lcom/android/camera/MenuHelper$MenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/MenuHelper$7;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/MenuHelper$7;


# direct methods
.method constructor <init>(Lcom/android/camera/MenuHelper$7;)V
    .registers 2
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/camera/MenuHelper$7$1;->this$0:Lcom/android/camera/MenuHelper$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/net/Uri;Lcom/android/camera/ImageManager$IImage;)V
    .registers 38
    .parameter "u"
    .parameter "image"

    .prologue
    .line 300
    if-nez p2, :cond_3

    .line 449
    .end local p1
    :goto_2
    return-void

    .line 303
    .restart local p1
    :cond_3
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/MenuHelper$7$1;->this$0:Lcom/android/camera/MenuHelper$7;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/camera/MenuHelper$7;->val$activity:Landroid/app/Activity;

    move-object/from16 v28, v0

    move-object v0, v6

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 305
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/MenuHelper$7$1;->this$0:Lcom/android/camera/MenuHelper$7;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/camera/MenuHelper$7;->val$activity:Landroid/app/Activity;

    move-object/from16 v28, v0

    const v29, 0x7f030004

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 307
    .local v8, d:Landroid/view/View;
    const v28, 0x7f0b001c

    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    .line 308
    .local v22, imageView:Landroid/widget/ImageView;
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/ImageManager$IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 310
    const v28, 0x7f0b001d

    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    .line 311
    .local v27, textView:Landroid/widget/TextView;
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/ImageManager$IImage;->getDisplayName()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    invoke-static/range {p2 .. p2}, Lcom/android/camera/MenuHelper;->getImageFileSize(Lcom/android/camera/ImageManager$IImage;)J

    move-result-wide v23

    .line 314
    .local v23, length:J
    const-wide/16 v28, 0x0

    cmp-long v28, v23, v28

    if-gez v28, :cond_180

    const-string v28, ""

    move-object/from16 v25, v28

    .line 316
    .local v25, lengthString:Ljava/lang/String;
    :goto_64
    const v28, 0x7f0b001e

    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    const/4 v15, 0x0

    .line 320
    .local v15, dimensionWidth:I
    const/4 v14, 0x0

    .line 321
    .local v14, dimensionHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/MenuHelper$7$1;->this$0:Lcom/android/camera/MenuHelper$7;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/camera/MenuHelper$7;->val$isImage:Z

    move/from16 v28, v0

    if-eqz v28, :cond_198

    .line 322
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/ImageManager$IImage;->getWidth()I

    move-result v15

    .line 323
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/ImageManager$IImage;->getHeight()I

    move-result v14

    .line 324
    const v28, 0x7f0b0020

    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 325
    const v28, 0x7f0b0022

    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 326
    const v28, 0x7f0b0024

    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 327
    const v28, 0x7f0b0026

    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 328
    const v28, 0x7f0b0028

    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    .line 417
    :goto_da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/MenuHelper$7$1;->this$0:Lcom/android/camera/MenuHelper$7;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/camera/MenuHelper$7;->val$activity:Landroid/app/Activity;

    move-object/from16 v28, v0

    const v29, 0x7f090093

    invoke-virtual/range {v28 .. v29}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    const/16 v30, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 420
    .local v16, dimensionsString:Ljava/lang/String;
    const v28, 0x7f0b001f

    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    const-string v11, ""

    .line 424
    .local v11, dateString:Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/ImageManager$IImage;->getDateTaken()J

    move-result-wide v12

    .line 425
    .local v12, dateTaken:J
    const-wide/16 v28, 0x0

    cmp-long v28, v12, v28

    if-eqz v28, :cond_375

    .line 426
    new-instance v9, Ljava/util/Date;

    invoke-interface/range {p2 .. p2}, Lcom/android/camera/ImageManager$IImage;->getDateTaken()J

    move-result-wide v28

    move-object v0, v9

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 427
    .local v9, date:Ljava/util/Date;
    new-instance v10, Ljava/text/SimpleDateFormat;

    invoke-direct {v10}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 428
    .local v10, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v10, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 430
    const v28, 0x7f0b002b

    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    .end local v9           #date:Ljava/util/Date;
    .end local v10           #dateFormat:Ljava/text/SimpleDateFormat;
    :goto_14f
    const v28, 0x7f090099

    new-instance v29, Lcom/android/camera/MenuHelper$7$1$1;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/MenuHelper$7$1$1;-><init>(Lcom/android/camera/MenuHelper$7$1;)V

    move-object v0, v6

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 444
    const v28, 0x108009b

    move-object v0, v6

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v28

    const v29, 0x7f09008a

    invoke-virtual/range {v28 .. v29}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 314
    .end local v11           #dateString:Ljava/lang/String;
    .end local v12           #dateTaken:J
    .end local v14           #dimensionHeight:I
    .end local v15           #dimensionWidth:I
    .end local v16           #dimensionsString:Ljava/lang/String;
    .end local v25           #lengthString:Ljava/lang/String;
    .restart local p1
    :cond_180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/MenuHelper$7$1;->this$0:Lcom/android/camera/MenuHelper$7;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/camera/MenuHelper$7;->val$activity:Landroid/app/Activity;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v23

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v25, v28

    goto/16 :goto_64

    .line 330
    .end local p1
    .restart local v14       #dimensionHeight:I
    .restart local v15       #dimensionWidth:I
    .restart local v25       #lengthString:Ljava/lang/String;
    :cond_198
    new-instance v26, Landroid/media/MediaMetadataRetriever;

    invoke-direct/range {v26 .. v26}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 332
    .local v26, retriever:Landroid/media/MediaMetadataRetriever;
    const/16 v28, 0x1

    :try_start_19f
    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setMode(I)V

    .line 333
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V
    :try_end_1b1
    .catchall {:try_start_19f .. :try_end_1b1} :catchall_314
    .catch Ljava/lang/RuntimeException; {:try_start_19f .. :try_end_1b1} :catch_2f7

    .line 335
    const/16 v28, 0x14

    :try_start_1b3
    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 338
    const/16 v28, 0x13

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1cc
    .catchall {:try_start_1b3 .. :try_end_1cc} :catchall_314
    .catch Ljava/lang/NumberFormatException; {:try_start_1b3 .. :try_end_1cc} :catch_2dc
    .catch Ljava/lang/RuntimeException; {:try_start_1b3 .. :try_end_1cc} :catch_2f7

    move-result v14

    .line 347
    :goto_1cd
    const/16 v28, 0x9

    :try_start_1cf
    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 349
    .local v17, durationMs:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/MenuHelper$7$1;->this$0:Lcom/android/camera/MenuHelper$7;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/camera/MenuHelper$7;->val$activity:Landroid/app/Activity;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/camera/MenuHelper;->formatDuration(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v18

    .line 351
    .local v18, durationValue:Ljava/lang/String;
    const v28, 0x7f0b0021

    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_202
    .catchall {:try_start_1cf .. :try_end_202} :catchall_314
    .catch Ljava/lang/NumberFormatException; {:try_start_1cf .. :try_end_202} :catch_2e3
    .catch Ljava/lang/RuntimeException; {:try_start_1cf .. :try_end_202} :catch_2f7

    .line 359
    .end local v17           #durationMs:I
    .end local v18           #durationValue:Ljava/lang/String;
    :goto_202
    :try_start_202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/MenuHelper$7$1;->this$0:Lcom/android/camera/MenuHelper$7;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/camera/MenuHelper$7;->val$activity:Landroid/app/Activity;

    move-object/from16 v28, v0

    const v29, 0x7f090096

    invoke-virtual/range {v28 .. v29}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x11

    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 364
    .local v21, frame_rate:Ljava/lang/String;
    const v28, 0x7f0b0023

    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_24a
    .catchall {:try_start_202 .. :try_end_24a} :catchall_314
    .catch Ljava/lang/NumberFormatException; {:try_start_202 .. :try_end_24a} :catch_300
    .catch Ljava/lang/RuntimeException; {:try_start_202 .. :try_end_24a} :catch_2f7

    .line 372
    .end local v21           #frame_rate:Ljava/lang/String;
    :goto_24a
    const/16 v28, 0x10

    :try_start_24c
    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 375
    .local v3, bitRate:J
    const-wide/32 v28, 0xf4240

    cmp-long v28, v3, v28

    if-gez v28, :cond_319

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/MenuHelper$7$1;->this$0:Lcom/android/camera/MenuHelper$7;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/camera/MenuHelper$7;->val$activity:Landroid/app/Activity;

    move-object/from16 v28, v0

    const v29, 0x7f090097

    invoke-virtual/range {v28 .. v29}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const-wide/16 v31, 0x3e8

    div-long v31, v3, v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 384
    .local v5, bps:Ljava/lang/String;
    :goto_28a
    const v28, 0x7f0b0025

    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_29c
    .catchall {:try_start_24c .. :try_end_29c} :catchall_314
    .catch Ljava/lang/NumberFormatException; {:try_start_24c .. :try_end_29c} :catch_34d
    .catch Ljava/lang/RuntimeException; {:try_start_24c .. :try_end_29c} :catch_2f7

    .line 391
    .end local v3           #bitRate:J
    .end local v5           #bps:Ljava/lang/String;
    :goto_29c
    const/16 v28, 0x12

    :try_start_29e
    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v20

    .line 393
    .local v20, format:Ljava/lang/String;
    const v28, 0x7f0b0027

    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    const/16 v28, 0xc

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    .line 399
    .local v7, codec:Ljava/lang/String;
    if-nez v7, :cond_361

    .line 400
    const v28, 0x7f0b0028

    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V
    :try_end_2d4
    .catchall {:try_start_29e .. :try_end_2d4} :catchall_314
    .catch Ljava/lang/RuntimeException; {:try_start_29e .. :try_end_2d4} :catch_2f7

    .line 410
    :goto_2d4
    :try_start_2d4
    invoke-virtual/range {v26 .. v26}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2d7
    .catch Ljava/lang/RuntimeException; {:try_start_2d4 .. :try_end_2d7} :catch_2d9

    goto/16 :goto_da

    .line 411
    :catch_2d9
    move-exception v28

    goto/16 :goto_da

    .line 341
    .end local v7           #codec:Ljava/lang/String;
    .end local v20           #format:Ljava/lang/String;
    :catch_2dc
    move-exception v28

    move-object/from16 v19, v28

    .line 342
    .local v19, e:Ljava/lang/NumberFormatException;
    const/4 v15, 0x0

    .line 343
    const/4 v14, 0x0

    goto/16 :goto_1cd

    .line 353
    .end local v19           #e:Ljava/lang/NumberFormatException;
    :catch_2e3
    move-exception v28

    move-object/from16 v19, v28

    .line 354
    .restart local v19       #e:Ljava/lang/NumberFormatException;
    const v28, 0x7f0b0022

    :try_start_2e9
    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V
    :try_end_2f5
    .catchall {:try_start_2e9 .. :try_end_2f5} :catchall_314
    .catch Ljava/lang/RuntimeException; {:try_start_2e9 .. :try_end_2f5} :catch_2f7

    goto/16 :goto_202

    .line 406
    .end local v19           #e:Ljava/lang/NumberFormatException;
    :catch_2f7
    move-exception v28

    .line 410
    :try_start_2f8
    invoke-virtual/range {v26 .. v26}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2fb
    .catch Ljava/lang/RuntimeException; {:try_start_2f8 .. :try_end_2fb} :catch_2fd

    goto/16 :goto_da

    .line 411
    :catch_2fd
    move-exception v28

    goto/16 :goto_da

    .line 366
    :catch_300
    move-exception v28

    move-object/from16 v19, v28

    .line 367
    .restart local v19       #e:Ljava/lang/NumberFormatException;
    const v28, 0x7f0b0022

    :try_start_306
    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V
    :try_end_312
    .catchall {:try_start_306 .. :try_end_312} :catchall_314
    .catch Ljava/lang/RuntimeException; {:try_start_306 .. :try_end_312} :catch_2f7

    goto/16 :goto_24a

    .line 409
    .end local v19           #e:Ljava/lang/NumberFormatException;
    :catchall_314
    move-exception v28

    .line 410
    :try_start_315
    invoke-virtual/range {v26 .. v26}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_318
    .catch Ljava/lang/RuntimeException; {:try_start_315 .. :try_end_318} :catch_386

    .line 413
    :goto_318
    throw v28

    .line 380
    .restart local v3       #bitRate:J
    :cond_319
    :try_start_319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/MenuHelper$7$1;->this$0:Lcom/android/camera/MenuHelper$7;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/camera/MenuHelper$7;->val$activity:Landroid/app/Activity;

    move-object/from16 v28, v0

    const v29, 0x7f090098

    invoke-virtual/range {v28 .. v29}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-wide v0, v3

    long-to-double v0, v0

    move-wide/from16 v31, v0

    const-wide v33, 0x412e848000000000L

    div-double v31, v31, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_34a
    .catchall {:try_start_319 .. :try_end_34a} :catchall_314
    .catch Ljava/lang/NumberFormatException; {:try_start_319 .. :try_end_34a} :catch_34d
    .catch Ljava/lang/RuntimeException; {:try_start_319 .. :try_end_34a} :catch_2f7

    move-result-object v5

    .restart local v5       #bps:Ljava/lang/String;
    goto/16 :goto_28a

    .line 386
    .end local v3           #bitRate:J
    .end local v5           #bps:Ljava/lang/String;
    :catch_34d
    move-exception v28

    move-object/from16 v19, v28

    .line 387
    .restart local v19       #e:Ljava/lang/NumberFormatException;
    const v28, 0x7f0b0024

    :try_start_353
    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_29c

    .line 403
    .end local v19           #e:Ljava/lang/NumberFormatException;
    .restart local v7       #codec:Ljava/lang/String;
    .restart local v20       #format:Ljava/lang/String;
    :cond_361
    const v28, 0x7f0b0029

    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_373
    .catchall {:try_start_353 .. :try_end_373} :catchall_314
    .catch Ljava/lang/RuntimeException; {:try_start_353 .. :try_end_373} :catch_2f7

    goto/16 :goto_2d4

    .line 433
    .end local v7           #codec:Ljava/lang/String;
    .end local v20           #format:Ljava/lang/String;
    .end local v26           #retriever:Landroid/media/MediaMetadataRetriever;
    .restart local v11       #dateString:Ljava/lang/String;
    .restart local v12       #dateTaken:J
    .restart local v16       #dimensionsString:Ljava/lang/String;
    :cond_375
    const v28, 0x7f0b002a

    move-object v0, v8

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_14f

    .line 411
    .end local v11           #dateString:Ljava/lang/String;
    .end local v12           #dateTaken:J
    .end local v16           #dimensionsString:Ljava/lang/String;
    .restart local v26       #retriever:Landroid/media/MediaMetadataRetriever;
    :catch_386
    move-exception v29

    goto :goto_318
.end method
