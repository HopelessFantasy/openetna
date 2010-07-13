.class final Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;
.super Lcom/android/camera/ImageManager$BaseCancelable;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IGetBoolean_cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageManager$Image;->saveImageContents(Landroid/graphics/Bitmap;[BIZLandroid/database/Cursor;)Lcom/android/camera/ImageManager$IGetBoolean_cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SaveImageContentsCancelable"
.end annotation


# instance fields
.field mCurrentCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

.field final synthetic this$1:Lcom/android/camera/ImageManager$Image;

.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$image:Landroid/graphics/Bitmap;

.field final synthetic val$jpegData:[B

.field final synthetic val$orientation:I


# direct methods
.method constructor <init>(Lcom/android/camera/ImageManager$Image;Landroid/graphics/Bitmap;[BLandroid/database/Cursor;I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1949
    iput-object p1, p0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->this$1:Lcom/android/camera/ImageManager$Image;

    iput-object p2, p0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->val$image:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->val$jpegData:[B

    iput-object p4, p0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->val$cursor:Landroid/database/Cursor;

    iput p5, p0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->val$orientation:I

    iget-object v0, p1, Lcom/android/camera/ImageManager$Image;->this$0:Lcom/android/camera/ImageManager;

    invoke-direct {p0, v0}, Lcom/android/camera/ImageManager$BaseCancelable;-><init>(Lcom/android/camera/ImageManager;)V

    .line 1947
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->mCurrentCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    .line 1950
    return-void
.end method


# virtual methods
.method public doCancelWork()Z
    .registers 2

    .prologue
    .line 1953
    monitor-enter p0

    .line 1954
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->mCurrentCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    if-eqz v0, :cond_a

    .line 1955
    iget-object v0, p0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->mCurrentCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    invoke-interface {v0}, Lcom/android/camera/ImageManager$IGetBoolean_cancelable;->cancel()Z

    .line 1956
    :cond_a
    monitor-exit p0

    .line 1957
    const/4 v0, 0x1

    return v0

    .line 1956
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public get()Z
    .registers 24

    .prologue
    .line 1962
    const/16 v18, 0x0

    .line 1964
    .local v18, thumbnail:Landroid/graphics/Bitmap;
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1965
    .local v6, t1:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->this$1:Lcom/android/camera/ImageManager$Image;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->this$1:Lcom/android/camera/ImageManager$Image;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/camera/ImageManager$Image;->mId:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v20 .. v22}, Lcom/android/camera/ImageManager$BaseImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v19

    .line 1966
    .local v19, uri:Landroid/net/Uri;
    monitor-enter p0
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_141
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_2 .. :try_end_23} :catch_64

    .line 1967
    :try_start_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->checkCanceled()V

    .line 1968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->this$1:Lcom/android/camera/ImageManager$Image;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->val$image:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->val$jpegData:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ImageManager$Image;->compressImageToFile(Landroid/graphics/Bitmap;[BLandroid/net/Uri;)Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->mCurrentCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    .line 1969
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_23 .. :try_end_4b} :catchall_61

    .line 1971
    :try_start_4b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1972
    .local v8, t2:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->mCurrentCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/camera/ImageManager$IGetBoolean_cancelable;->get()Z
    :try_end_58
    .catchall {:try_start_4b .. :try_end_58} :catchall_141
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_4b .. :try_end_58} :catch_64

    move-result v20

    if-nez v20, :cond_6d

    .line 1973
    const/16 v20, 0x0

    .line 2032
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->acknowledgeCancel()V

    .end local v6           #t1:J
    .end local v8           #t2:J
    .end local v19           #uri:Landroid/net/Uri;
    :goto_60
    return v20

    .line 1969
    .restart local v6       #t1:J
    .restart local v19       #uri:Landroid/net/Uri;
    :catchall_61
    move-exception v20

    :try_start_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    :try_start_63
    throw v20
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_141
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_63 .. :try_end_64} :catch_64

    .line 2020
    .end local v6           #t1:J
    .end local v19           #uri:Landroid/net/Uri;
    :catch_64
    move-exception v20

    move-object/from16 v4, v20

    .line 2022
    .local v4, ex:Lcom/android/camera/ImageManager$CanceledException;
    const/16 v20, 0x0

    .line 2032
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->acknowledgeCancel()V

    goto :goto_60

    .line 1975
    .end local v4           #ex:Lcom/android/camera/ImageManager$CanceledException;
    .restart local v6       #t1:J
    .restart local v8       #t2:J
    .restart local v19       #uri:Landroid/net/Uri;
    :cond_6d
    :try_start_6d
    monitor-enter p0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_141
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_6d .. :try_end_6e} :catch_64

    .line 1977
    :try_start_6e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->val$cursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    monitor-enter v20
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_13e

    .line 1978
    :try_start_75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->val$cursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->val$cursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1980
    .local v5, filePath:Ljava/lang/String;
    monitor-exit v20
    :try_end_8d
    .catchall {:try_start_75 .. :try_end_8d} :catchall_13b

    .line 1984
    const/16 v17, 0x0

    .line 1985
    .local v17, thumbData:[B
    :try_start_8f
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v20

    monitor-enter v20
    :try_end_94
    .catchall {:try_start_8f .. :try_end_94} :catchall_13e

    .line 1986
    :try_start_94
    invoke-static {}, Landroid/media/ExifInterface;->createInstance()Landroid/media/ExifInterface;

    move-result-object v16

    .line 1987
    .local v16, tempExif:Landroid/media/ExifInterface;
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->setFilename(Ljava/lang/String;)V

    .line 1988
    invoke-virtual/range {v16 .. v16}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v17

    .line 1990
    monitor-exit v20
    :try_end_a3
    .catchall {:try_start_94 .. :try_end_a3} :catchall_146

    .line 1992
    if-eqz v17, :cond_b6

    .line 1993
    const/16 v20, 0x0

    :try_start_a7
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 1996
    :cond_b6
    if-nez v18, :cond_c6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->val$image:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c6

    .line 1997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->val$image:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    .line 1999
    :cond_c6
    if-nez v18, :cond_e7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->val$jpegData:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_e7

    .line 2000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->val$jpegData:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->val$jpegData:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    invoke-static/range {v20 .. v22}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 2002
    :cond_e7
    monitor-exit p0
    :try_end_e8
    .catchall {:try_start_a7 .. :try_end_e8} :catchall_13e

    .line 2004
    :try_start_e8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2005
    .local v10, t3:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->this$1:Lcom/android/camera/ImageManager$Image;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->this$1:Lcom/android/camera/ImageManager$Image;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/ImageManager$Image;->fullSizeImageId()J

    move-result-wide v21

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ImageManager$BaseImageList;->storeThumbnail(Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    .line 2006
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2007
    .local v12, t4:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->checkCanceled()V
    :try_end_112
    .catchall {:try_start_e8 .. :try_end_112} :catchall_141
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_e8 .. :try_end_112} :catch_64

    .line 2010
    :try_start_112
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->val$orientation:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 2011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->this$1:Lcom/android/camera/ImageManager$Image;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/ImageManager$Image;->saveMiniThumb(Landroid/graphics/Bitmap;)V
    :try_end_12d
    .catchall {:try_start_112 .. :try_end_12d} :catchall_141
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_12d} :catch_149
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_112 .. :try_end_12d} :catch_64

    .line 2015
    :goto_12d
    :try_start_12d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 2016
    .local v14, t5:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->checkCanceled()V
    :try_end_134
    .catchall {:try_start_12d .. :try_end_134} :catchall_141
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_12d .. :try_end_134} :catch_64

    .line 2019
    const/16 v20, 0x1

    .line 2032
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->acknowledgeCancel()V

    goto/16 :goto_60

    .line 1980
    .end local v5           #filePath:Ljava/lang/String;
    .end local v10           #t3:J
    .end local v12           #t4:J
    .end local v14           #t5:J
    .end local v16           #tempExif:Landroid/media/ExifInterface;
    .end local v17           #thumbData:[B
    :catchall_13b
    move-exception v21

    :try_start_13c
    monitor-exit v20
    :try_end_13d
    .catchall {:try_start_13c .. :try_end_13d} :catchall_13b

    :try_start_13d
    throw v21

    .line 2002
    :catchall_13e
    move-exception v20

    monitor-exit p0
    :try_end_140
    .catchall {:try_start_13d .. :try_end_140} :catchall_13e

    :try_start_140
    throw v20
    :try_end_141
    .catchall {:try_start_140 .. :try_end_141} :catchall_141
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_140 .. :try_end_141} :catch_64

    .line 2032
    .end local v6           #t1:J
    .end local v8           #t2:J
    .end local v19           #uri:Landroid/net/Uri;
    :catchall_141
    move-exception v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;->acknowledgeCancel()V

    throw v20

    .line 1990
    .restart local v5       #filePath:Ljava/lang/String;
    .restart local v6       #t1:J
    .restart local v8       #t2:J
    .restart local v17       #thumbData:[B
    .restart local v19       #uri:Landroid/net/Uri;
    :catchall_146
    move-exception v21

    :try_start_147
    monitor-exit v20
    :try_end_148
    .catchall {:try_start_147 .. :try_end_148} :catchall_146

    :try_start_148
    throw v21
    :try_end_149
    .catchall {:try_start_148 .. :try_end_149} :catchall_13e

    .line 2012
    .restart local v10       #t3:J
    .restart local v12       #t4:J
    .restart local v16       #tempExif:Landroid/media/ExifInterface;
    :catch_149
    move-exception v20

    goto :goto_12d
.end method
