.class Lcom/android/camera/Camera$ImageCapture;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Lcom/android/camera/Camera$Capturer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageCapture"
.end annotation


# instance fields
.field private mAddImageCancelable:Lcom/android/camera/ImageManager$IAddImage_cancelable;

.field private mCancel:Z

.field mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

.field private mCapturing:Z

.field private mLastContentUri:Landroid/net/Uri;

.field private mThreadTimeEnd:J

.field private mThreadTimeStart:J

.field private mWallTimeEnd:J

.field private mWallTimeStart:J

.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 479
    iput-object p1, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput-boolean v0, p0, Lcom/android/camera/Camera$ImageCapture;->mCancel:Z

    .line 465
    iput-boolean v0, p0, Lcom/android/camera/Camera$ImageCapture;->mCapturing:Z

    .line 480
    return-void
.end method

.method static synthetic access$4600(Lcom/android/camera/Camera$ImageCapture;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/android/camera/Camera$ImageCapture;->mCapturing:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/camera/Camera$ImageCapture;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/android/camera/Camera$ImageCapture;->clearLastBitmap()V

    return-void
.end method

.method private capture(Z)V
    .registers 24
    .parameter "captureOnly"

    .prologue
    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/camera/Camera;->access$3702(Lcom/android/camera/Camera;Z)Z

    .line 610
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/Camera$ImageCapture;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Camera;->access$3800(Lcom/android/camera/Camera;)I

    move-result v17

    add-int/lit8 v17, v17, 0x5a

    invoke-static/range {v17 .. v17}, Lcom/android/camera/ImageManager;->roundOrientation(I)I

    move-result v8

    .line 614
    .local v8, latchedOrientation:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Camera;->access$1200(Lcom/android/camera/Camera;)Z

    move-result v17

    if-eqz v17, :cond_1f4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Camera;->access$3900(Lcom/android/camera/Camera;)Landroid/location/Location;

    move-result-object v17

    move-object/from16 v9, v17

    .line 617
    .local v9, loc:Landroid/location/Location;
    :goto_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Camera;->access$4000(Lcom/android/camera/Camera;)Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v18, "pref_camera_jpeg_quality_key"

    const-string v19, "100"

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 618
    .local v4, jpegQuality:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v17

    const-string v18, "jpeg-quality"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 620
    const-string v17, "100"

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1fa

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v17

    const-string v18, "image-quality"

    const-string v19, "super_fine"

    invoke-virtual/range {v17 .. v19}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_7c
    :goto_7c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Camera;->access$4000(Lcom/android/camera/Camera;)Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v18, "pref_camera_picturesize_key"

    const-string v19, "QSXVGA"

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 629
    .local v14, picture_size:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v17

    const-string v18, "rotation"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v17

    const/16 v18, 0xa00

    const/16 v19, 0x780

    invoke-virtual/range {v17 .. v19}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v17

    const-string v18, "gps-latitude"

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v17

    const-string v18, "gps-longitude"

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v17

    const-string v18, "gps-altitude"

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v17

    const-string v18, "gps-timestamp"

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 651
    if-eqz v9, :cond_17d

    .line 652
    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    .line 653
    .local v5, lat:D
    invoke-virtual {v9}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    .line 654
    .local v10, lon:D
    const-wide/16 v17, 0x0

    cmpl-double v17, v5, v17

    if-nez v17, :cond_105

    const-wide/16 v17, 0x0

    cmpl-double v17, v10, v17

    if-eqz v17, :cond_236

    :cond_105
    const/16 v17, 0x1

    move/from16 v3, v17

    .line 656
    .local v3, hasLatLon:Z
    :goto_109
    if-eqz v3, :cond_24f

    .line 657
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    .line 658
    .local v7, latString:Ljava/lang/String;
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v12

    .line 659
    .local v12, lonString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v17

    const-string v18, "gps-latitude"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v17

    const-string v18, "gps-longitude"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-virtual {v9}, Landroid/location/Location;->hasAltitude()Z

    move-result v17

    if-eqz v17, :cond_23c

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v17

    const-string v18, "gps-altitude"

    invoke-virtual {v9}, Landroid/location/Location;->getAltitude()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :goto_158
    invoke-virtual {v9}, Landroid/location/Location;->getTime()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-eqz v17, :cond_17d

    .line 672
    invoke-virtual {v9}, Landroid/location/Location;->getTime()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    div-long v15, v17, v19

    .line 673
    .local v15, utcTimeSeconds:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v17

    const-string v18, "gps-timestamp"

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    .end local v3           #hasLatLon:Z
    .end local v5           #lat:D
    .end local v7           #latString:Ljava/lang/String;
    .end local v10           #lon:D
    .end local v12           #lonString:Ljava/lang/String;
    .end local v15           #utcTimeSeconds:J
    :cond_17d
    :goto_17d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v13

    .line 685
    .local v13, pictureSize:Landroid/hardware/Camera$Size;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Camera;->access$1400(Lcom/android/camera/Camera;)Lcom/android/camera/VideoPreview;

    move-result-object v17

    move-object v0, v13

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    move-object v0, v13

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/VideoPreview;->setAspectRatio(II)V

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Camera;->access$3600(Lcom/android/camera/Camera;)Landroid/hardware/Camera;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Camera;->access$4100(Lcom/android/camera/Camera;)V

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Camera;->access$3600(Lcom/android/camera/Camera;)Landroid/hardware/Camera;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/camera/Camera;->access$4200(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ShutterCallback;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/camera/Camera;->access$4300(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$RawPictureCallback;

    move-result-object v19

    new-instance v20, Lcom/android/camera/Camera$JpegPictureCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/android/camera/Camera$JpegPictureCallback;-><init>(Lcom/android/camera/Camera;Landroid/location/Location;)V

    invoke-virtual/range {v17 .. v20}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 690
    return-void

    .line 614
    .end local v4           #jpegQuality:Ljava/lang/String;
    .end local v9           #loc:Landroid/location/Location;
    .end local v13           #pictureSize:Landroid/hardware/Camera$Size;
    .end local v14           #picture_size:Ljava/lang/String;
    :cond_1f4
    const/16 v17, 0x0

    move-object/from16 v9, v17

    goto/16 :goto_3b

    .line 622
    .restart local v4       #jpegQuality:Ljava/lang/String;
    .restart local v9       #loc:Landroid/location/Location;
    :cond_1fa
    const-string v17, "95"

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_218

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v17

    const-string v18, "image-quality"

    const-string v19, "fine"

    invoke-virtual/range {v17 .. v19}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7c

    .line 624
    :cond_218
    const-string v17, "85"

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7c

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v17

    const-string v18, "image-quality"

    const-string v19, "normal"

    invoke-virtual/range {v17 .. v19}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7c

    .line 654
    .restart local v5       #lat:D
    .restart local v10       #lon:D
    .restart local v14       #picture_size:Ljava/lang/String;
    :cond_236
    const/16 v17, 0x0

    move/from16 v3, v17

    goto/16 :goto_109

    .line 667
    .restart local v3       #hasLatLon:Z
    .restart local v7       #latString:Ljava/lang/String;
    .restart local v12       #lonString:Ljava/lang/String;
    :cond_23c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/Camera;->access$1500(Lcom/android/camera/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v17

    const-string v18, "gps-altitude"

    const-string v19, "0"

    invoke-virtual/range {v17 .. v19}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_158

    .line 676
    .end local v7           #latString:Ljava/lang/String;
    .end local v12           #lonString:Ljava/lang/String;
    :cond_24f
    const/4 v9, 0x0

    goto/16 :goto_17d
.end method

.method private clearLastBitmap()V
    .registers 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 727
    iget-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 728
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    .line 730
    :cond_c
    return-void
.end method

.method private startTiming()V
    .registers 3

    .prologue
    .line 500
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera$ImageCapture;->mWallTimeStart:J

    .line 501
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera$ImageCapture;->mThreadTimeStart:J

    .line 502
    return-void
.end method

.method private stopTiming()V
    .registers 3

    .prologue
    .line 505
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera$ImageCapture;->mThreadTimeEnd:J

    .line 506
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Camera$ImageCapture;->mWallTimeEnd:J

    .line 507
    return-void
.end method

.method private storeImage([BLandroid/location/Location;)V
    .registers 18
    .parameter "data"
    .parameter "loc"

    .prologue
    .line 514
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 515
    .local v5, dateTaken:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v6}, Lcom/android/camera/Camera;->access$2900(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 516
    .local v3, name:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera/Camera;->access$3000()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, ""

    const/4 v8, 0x0

    sget-object v9, Lcom/android/camera/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    move-object/from16 v7, p2

    move-object v10, v3

    invoke-virtual/range {v0 .. v10}, Lcom/android/camera/ImageManager;->addImage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->mLastContentUri:Landroid/net/Uri;

    .line 528
    iget-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->mLastContentUri:Landroid/net/Uri;

    if-nez v0, :cond_3a

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera$ImageCapture;->mCancel:Z

    .line 532
    :cond_3a
    iget-boolean v0, p0, Lcom/android/camera/Camera$ImageCapture;->mCancel:Z

    if-nez v0, :cond_5c

    .line 533
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/Camera$ImageCapture;->mLastContentUri:Landroid/net/Uri;

    iget-object v9, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera/Camera;->access$3000()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v13, p1

    invoke-virtual/range {v7 .. v13}, Lcom/android/camera/ImageManager;->storeImage(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;ILandroid/graphics/Bitmap;[B)Lcom/android/camera/ImageManager$IAddImage_cancelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->mAddImageCancelable:Lcom/android/camera/ImageManager$IAddImage_cancelable;

    .line 535
    iget-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->mAddImageCancelable:Lcom/android/camera/ImageManager$IAddImage_cancelable;

    invoke-interface {v0}, Lcom/android/camera/ImageManager$IAddImage_cancelable;->get()V

    .line 536
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->mAddImageCancelable:Lcom/android/camera/ImageManager$IAddImage_cancelable;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5c} :catch_5d

    .line 548
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #dateTaken:J
    :cond_5c
    :goto_5c
    return-void

    .line 545
    :catch_5d
    move-exception v0

    move-object v14, v0

    .line 546
    .local v14, ex:Ljava/lang/Exception;
    const-string v0, "camera"

    const-string v1, "Exception while compressing image."

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5c
.end method


# virtual methods
.method public dismissFreezeFrame()V
    .registers 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$400(Lcom/android/camera/Camera;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 493
    iget-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$500(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 497
    :goto_13
    return-void

    .line 495
    :cond_14
    iget-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$2800(Lcom/android/camera/Camera;)V

    goto :goto_13
.end method

.method public getLastBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLastCaptureUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->mLastContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public initiate(Z)V
    .registers 3
    .parameter "captureOnly"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->access$3600(Lcom/android/camera/Camera;)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_9

    .line 598
    :goto_8
    return-void

    .line 594
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Camera$ImageCapture;->mCancel:Z

    .line 595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/Camera$ImageCapture;->mCapturing:Z

    .line 597
    invoke-direct {p0, p1}, Lcom/android/camera/Camera$ImageCapture;->capture(Z)V

    goto :goto_8
.end method

.method public onSnap()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 693
    iget-object v1, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$2100(Lcom/android/camera/Camera;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 723
    :goto_b
    return-void

    .line 700
    :cond_c
    iget-object v1, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$400(Lcom/android/camera/Camera;)I

    move-result v1

    if-eq v1, v3, :cond_1c

    iget-object v1, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$400(Lcom/android/camera/Camera;)I

    move-result v1

    if-ne v1, v4, :cond_2b

    .line 701
    :cond_1c
    iget-object v1, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1, v2}, Lcom/android/camera/Camera;->access$1702(Lcom/android/camera/Camera;Z)Z

    .line 702
    iget-object v1, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$500(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_b

    .line 708
    :cond_2b
    iget-object v1, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)I

    move-result v1

    if-ge v1, v2, :cond_3f

    .line 709
    iget-object v1, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Camera;->access$1000(Lcom/android/camera/Camera;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/Camera;->access$900(Lcom/android/camera/Camera;I)V

    goto :goto_b

    .line 713
    :cond_3f
    iget-object v1, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1, v3}, Lcom/android/camera/Camera;->access$402(Lcom/android/camera/Camera;I)I

    .line 715
    iget-object v1, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1, v2}, Lcom/android/camera/Camera;->access$1702(Lcom/android/camera/Camera;Z)Z

    .line 717
    iget-object v1, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$3100(Lcom/android/camera/Camera;)Z

    move-result v0

    .line 718
    .local v0, getContentAction:Z
    if-eqz v0, :cond_5b

    .line 719
    iget-object v1, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$2300(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageCapture;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera$ImageCapture;->initiate(Z)V

    goto :goto_b

    .line 721
    :cond_5b
    iget-object v1, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Camera;->access$2300(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$ImageCapture;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera$ImageCapture;->initiate(Z)V

    goto :goto_b
.end method

.method public setCapturingLocked(Z)V
    .registers 2
    .parameter "capturing"

    .prologue
    .line 487
    iput-boolean p1, p0, Lcom/android/camera/Camera$ImageCapture;->mCapturing:Z

    .line 488
    return-void
.end method

.method public storeImage([BLandroid/hardware/Camera;Landroid/location/Location;)V
    .registers 11
    .parameter "data"
    .parameter "camera"
    .parameter "loc"

    .prologue
    const/4 v6, 0x0

    .line 551
    iget-object v2, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Camera;->access$3100(Lcom/android/camera/Camera;)Z

    move-result v0

    .line 553
    .local v0, captureOnly:Z
    if-nez v0, :cond_3c

    .line 554
    invoke-direct {p0, p1, p3}, Lcom/android/camera/Camera$ImageCapture;->storeImage([BLandroid/location/Location;)V

    .line 555
    iget-object v2, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.camera.NEW_PICTURE"

    iget-object v5, p0, Lcom/android/camera/Camera$ImageCapture;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 556
    iget-object v2, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v3}, Lcom/android/camera/Camera;->access$600(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$Capturer;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/Camera$Capturer;->getLastCaptureUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/android/camera/Camera;->access$3200(Lcom/android/camera/Camera;[BLandroid/net/Uri;)V

    .line 557
    invoke-virtual {p0}, Lcom/android/camera/Camera$ImageCapture;->dismissFreezeFrame()V

    .line 580
    :goto_2c
    iput-boolean v6, p0, Lcom/android/camera/Camera$ImageCapture;->mCapturing:Z

    .line 581
    iget-object v2, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Camera;->access$2100(Lcom/android/camera/Camera;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 582
    iget-object v2, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Camera;->access$3500(Lcom/android/camera/Camera;)V

    .line 584
    :cond_3b
    return-void

    .line 559
    :cond_3c
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 560
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x4

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 566
    array-length v2, p1

    invoke-static {p1, v6, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/Camera$ImageCapture;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    .line 576
    iget-object v2, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Camera;->access$3300(Lcom/android/camera/Camera;)V

    .line 577
    iget-object v2, p0, Lcom/android/camera/Camera$ImageCapture;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Camera;->access$3400(Lcom/android/camera/Camera;)V

    goto :goto_2c
.end method
