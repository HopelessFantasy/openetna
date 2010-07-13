.class Lcom/android/camera/ImageManager$1AddImageCancelable;
.super Lcom/android/camera/ImageManager$BaseCancelable;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IAddImage_cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageManager;->storeImage(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;ILandroid/graphics/Bitmap;[B)Lcom/android/camera/ImageManager$IAddImage_cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddImageCancelable"
.end annotation


# instance fields
.field private mSaveImageCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

.field final synthetic this$0:Lcom/android/camera/ImageManager;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$jpegData:[B

.field final synthetic val$orientation:I

.field final synthetic val$source:Landroid/graphics/Bitmap;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageManager;Landroid/graphics/Bitmap;[BLandroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;I)V
    .registers 8
    .parameter
    .parameter
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
    .line 3908
    iput-object p1, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->this$0:Lcom/android/camera/ImageManager;

    iput-object p2, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$source:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$jpegData:[B

    iput-object p4, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$ctx:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    iput p7, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$orientation:I

    invoke-direct {p0, p1}, Lcom/android/camera/ImageManager$BaseCancelable;-><init>(Lcom/android/camera/ImageManager;)V

    return-void
.end method


# virtual methods
.method public doCancelWork()Z
    .registers 2

    .prologue
    .line 3916
    iget-object v0, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    if-eqz v0, :cond_9

    .line 3917
    iget-object v0, p0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    invoke-interface {v0}, Lcom/android/camera/ImageManager$IGetBoolean_cancelable;->cancel()Z

    .line 3919
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public get()V
    .registers 23

    .prologue
    .line 3923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$source:Landroid/graphics/Bitmap;

    move-object v4, v0

    if-nez v4, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$jpegData:[B

    move-object v4, v0

    if-nez v4, :cond_16

    .line 3924
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "source cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3928
    :cond_16
    :try_start_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 3929
    .local v16, t1:J
    monitor-enter p0
    :try_end_1b
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_16 .. :try_end_1b} :catch_30

    .line 3930
    :try_start_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mCancel:Z

    move v4, v0

    if-eqz v4, :cond_4c

    .line 3931
    new-instance v4, Lcom/android/camera/ImageManager$CanceledException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->this$0:Lcom/android/camera/ImageManager;

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/android/camera/ImageManager$CanceledException;-><init>(Lcom/android/camera/ImageManager;)V

    throw v4

    .line 3933
    :catchall_2d
    move-exception v4

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw v4
    :try_end_30
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_2f .. :try_end_30} :catch_30

    .line 3968
    .end local v16           #t1:J
    :catch_30
    move-exception v4

    move-object v13, v4

    .line 3972
    .local v13, ex:Lcom/android/camera/ImageManager$CanceledException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    move-object v4, v0

    if-eqz v4, :cond_48

    .line 3976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3978
    :cond_48
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$1AddImageCancelable;->acknowledgeCancel()V

    .line 3980
    .end local v13           #ex:Lcom/android/camera/ImageManager$CanceledException;
    :goto_4b
    return-void

    .line 3933
    .restart local v16       #t1:J
    :cond_4c
    :try_start_4c
    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_2d

    .line 3934
    :try_start_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    move-object v4, v0

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 3936
    .local v14, id:J
    new-instance v2, Lcom/android/camera/ImageManager$ImageList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->this$0:Lcom/android/camera/ImageManager;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$ctx:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    move-object v5, v0

    invoke-static {}, Lcom/android/camera/ImageManager;->access$1200()Landroid/net/Uri;

    move-result-object v6

    invoke-static {}, Lcom/android/camera/ImageManager;->access$1300()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/ImageManager$ImageList;-><init>(Lcom/android/camera/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V

    .line 3937
    .local v2, il:Lcom/android/camera/ImageManager$BaseImageList;
    new-instance v3, Lcom/android/camera/ImageManager$Image;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->this$0:Lcom/android/camera/ImageManager;

    move-object v4, v0

    const-wide/16 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    move-object v9, v0

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$BaseImageList;->getCount()I

    move-result v11

    const/4 v12, 0x0

    move-wide v5, v14

    move-object v10, v2

    invoke-direct/range {v3 .. v12}, Lcom/android/camera/ImageManager$Image;-><init>(Lcom/android/camera/ImageManager;JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$BaseImageList;II)V

    .line 3938
    .local v3, image:Lcom/android/camera/ImageManager$Image;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 3939
    .local v18, t5:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$cr:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$uri:Landroid/net/Uri;

    move-object v5, v0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "mini_thumb_magic"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "_data"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3945
    .local v8, c:Landroid/database/Cursor;
    const/4 v4, 0x0

    invoke-interface {v8, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3947
    monitor-enter p0
    :try_end_b8
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_4d .. :try_end_b8} :catch_30

    .line 3948
    :try_start_b8
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$1AddImageCancelable;->checkCanceled()V

    .line 3949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$source:Landroid/graphics/Bitmap;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$jpegData:[B

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->val$orientation:I

    move v6, v0

    const/4 v7, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/camera/ImageManager$Image;->saveImageContents(Landroid/graphics/Bitmap;[BIZLandroid/database/Cursor;)Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    .line 3950
    monitor-exit p0
    :try_end_d5
    .catchall {:try_start_b8 .. :try_end_d5} :catchall_f6

    .line 3952
    :try_start_d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->mSaveImageCancelable:Lcom/android/camera/ImageManager$IGetBoolean_cancelable;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/camera/ImageManager$IGetBoolean_cancelable;->get()Z

    move-result v4

    if-eqz v4, :cond_f9

    .line 3953
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 3956
    .local v20, t6:J
    invoke-virtual {v2}, Lcom/android/camera/ImageManager$ImageList;->deactivate()V

    .line 3957
    const/4 v4, 0x1

    invoke-interface {v8, v4, v14, v15}, Landroid/database/Cursor;->updateLong(IJ)Z

    .line 3958
    invoke-interface {v8}, Landroid/database/Cursor;->commitUpdates()Z

    .line 3959
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3960
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_f4
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_d5 .. :try_end_f4} :catch_30

    goto/16 :goto_4b

    .line 3950
    .end local v20           #t6:J
    :catchall_f6
    move-exception v4

    :try_start_f7
    monitor-exit p0
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_f6

    :try_start_f8
    throw v4

    .line 3964
    :cond_f9
    invoke-virtual {v2}, Lcom/android/camera/ImageManager$ImageList;->deactivate()V

    .line 3965
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3966
    new-instance v4, Lcom/android/camera/ImageManager$CanceledException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$1AddImageCancelable;->this$0:Lcom/android/camera/ImageManager;

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/android/camera/ImageManager$CanceledException;-><init>(Lcom/android/camera/ImageManager;)V

    throw v4
    :try_end_10a
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_f8 .. :try_end_10a} :catch_30
.end method
