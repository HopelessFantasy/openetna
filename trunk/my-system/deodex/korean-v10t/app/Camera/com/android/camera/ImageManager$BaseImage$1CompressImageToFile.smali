.class Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;
.super Lcom/android/camera/ImageManager$BaseCancelable;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IGetBoolean_cancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageManager$BaseImage;->compressImageToFile(Landroid/graphics/Bitmap;[BLandroid/net/Uri;)Lcom/android/camera/ImageManager$IGetBoolean_cancelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompressImageToFile"
.end annotation


# instance fields
.field mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

.field final synthetic this$1:Lcom/android/camera/ImageManager$BaseImage;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$jpegData:[B

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageManager$BaseImage;Landroid/net/Uri;Landroid/graphics/Bitmap;[B)V
    .registers 6
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
    .line 266
    iput-object p1, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->this$1:Lcom/android/camera/ImageManager$BaseImage;

    iput-object p2, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->val$jpegData:[B

    iget-object v0, p1, Lcom/android/camera/ImageManager$BaseImage;->this$0:Lcom/android/camera/ImageManager;

    invoke-direct {p0, v0}, Lcom/android/camera/ImageManager$BaseCancelable;-><init>(Lcom/android/camera/ImageManager;)V

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    return-void
.end method


# virtual methods
.method public doCancelWork()Z
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    if-eqz v0, :cond_c

    .line 272
    :try_start_4
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v0}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_b

    .line 273
    const/4 v0, 0x1

    .line 278
    :goto_a
    return v0

    .line 274
    :catch_b
    move-exception v0

    .line 278
    :cond_c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public get()Z
    .registers 16

    .prologue
    const/4 v14, 0x0

    .line 283
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 284
    .local v2, t1:J
    iget-object v10, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->this$1:Lcom/android/camera/ImageManager$BaseImage;

    iget-object v10, v10, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v11, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->val$uri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 285
    .local v0, delegate:Ljava/io/OutputStream;
    monitor-enter p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_8a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_10} :catch_4b
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_1 .. :try_end_10} :catch_6a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_10} :catch_7a

    .line 286
    :try_start_10
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->checkCanceled()V

    .line 287
    new-instance v10, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    iget-object v11, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->this$1:Lcom/android/camera/ImageManager$BaseImage;

    iget-object v11, v11, Lcom/android/camera/ImageManager$BaseImage;->this$0:Lcom/android/camera/ImageManager;

    invoke-direct {v10, v11, v0}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;-><init>(Lcom/android/camera/ImageManager;Ljava/io/OutputStream;)V

    iput-object v10, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    .line 288
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_48

    .line 289
    :try_start_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 290
    .local v4, t2:J
    iget-object v10, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_5b

    .line 291
    iget-object v10, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v11, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->this$1:Lcom/android/camera/ImageManager$BaseImage;

    invoke-virtual {v11}, Lcom/android/camera/ImageManager$BaseImage;->compressionType()Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v11

    const/16 v12, 0x4b

    iget-object v13, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v10, v11, v12, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 298
    :goto_36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_39
    .catchall {:try_start_1f .. :try_end_39} :catchall_8a
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_39} :catch_4b
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_1f .. :try_end_39} :catch_6a
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_39} :catch_7a

    move-result-wide v6

    .line 300
    .local v6, t3:J
    const/4 v10, 0x1

    .line 309
    iget-object v11, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    if-eqz v11, :cond_44

    .line 311
    :try_start_3f
    iget-object v11, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v11}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_44} :catch_a0

    .line 316
    :cond_44
    :goto_44
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->acknowledgeCancel()V

    .end local v0           #delegate:Ljava/io/OutputStream;
    .end local v2           #t1:J
    .end local v4           #t2:J
    .end local v6           #t3:J
    :goto_47
    return v10

    .line 288
    .restart local v0       #delegate:Ljava/io/OutputStream;
    .restart local v2       #t1:J
    :catchall_48
    move-exception v10

    :try_start_49
    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    :try_start_4a
    throw v10
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_8a
    .catch Ljava/io/FileNotFoundException; {:try_start_4a .. :try_end_4b} :catch_4b
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_4a .. :try_end_4b} :catch_6a
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4b} :catch_7a

    .line 301
    .end local v0           #delegate:Ljava/io/OutputStream;
    .end local v2           #t1:J
    :catch_4b
    move-exception v10

    move-object v1, v10

    .line 309
    .local v1, ex:Ljava/io/FileNotFoundException;
    iget-object v10, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    if-eqz v10, :cond_56

    .line 311
    :try_start_51
    iget-object v10, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v10}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_56} :catch_9e

    .line 316
    :cond_56
    :goto_56
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->acknowledgeCancel()V

    move v10, v14

    goto :goto_47

    .line 293
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    .restart local v0       #delegate:Ljava/io/OutputStream;
    .restart local v2       #t1:J
    .restart local v4       #t2:J
    :cond_5b
    :try_start_5b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 294
    .local v8, x1:J
    iget-object v10, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    iget-object v11, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->val$jpegData:[B

    invoke-virtual {v10, v11}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->write([B)V

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_69
    .catchall {:try_start_5b .. :try_end_69} :catchall_8a
    .catch Ljava/io/FileNotFoundException; {:try_start_5b .. :try_end_69} :catch_4b
    .catch Lcom/android/camera/ImageManager$CanceledException; {:try_start_5b .. :try_end_69} :catch_6a
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_69} :catch_7a

    goto :goto_36

    .line 303
    .end local v0           #delegate:Ljava/io/OutputStream;
    .end local v2           #t1:J
    .end local v4           #t2:J
    .end local v8           #x1:J
    :catch_6a
    move-exception v10

    move-object v1, v10

    .line 309
    .local v1, ex:Lcom/android/camera/ImageManager$CanceledException;
    iget-object v10, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    if-eqz v10, :cond_75

    .line 311
    :try_start_70
    iget-object v10, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v10}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_75} :catch_9c

    .line 316
    :cond_75
    :goto_75
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->acknowledgeCancel()V

    move v10, v14

    goto :goto_47

    .line 305
    .end local v1           #ex:Lcom/android/camera/ImageManager$CanceledException;
    :catch_7a
    move-exception v10

    move-object v1, v10

    .line 309
    .local v1, ex:Ljava/io/IOException;
    iget-object v10, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    if-eqz v10, :cond_85

    .line 311
    :try_start_80
    iget-object v10, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v10}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_85} :catch_9a

    .line 316
    :cond_85
    :goto_85
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->acknowledgeCancel()V

    move v10, v14

    goto :goto_47

    .line 309
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_8a
    move-exception v10

    iget-object v11, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    if-eqz v11, :cond_94

    .line 311
    :try_start_8f
    iget-object v11, p0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->mOutputStream:Lcom/android/camera/ImageManager$ThreadSafeOutputStream;

    invoke-virtual {v11}, Lcom/android/camera/ImageManager$ThreadSafeOutputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_94} :catch_98

    .line 316
    :cond_94
    :goto_94
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;->acknowledgeCancel()V

    throw v10

    .line 312
    :catch_98
    move-exception v11

    goto :goto_94

    .restart local v1       #ex:Ljava/io/IOException;
    :catch_9a
    move-exception v10

    goto :goto_85

    .local v1, ex:Lcom/android/camera/ImageManager$CanceledException;
    :catch_9c
    move-exception v10

    goto :goto_75

    .local v1, ex:Ljava/io/FileNotFoundException;
    :catch_9e
    move-exception v10

    goto :goto_56

    .end local v1           #ex:Ljava/io/FileNotFoundException;
    .restart local v0       #delegate:Ljava/io/OutputStream;
    .restart local v2       #t1:J
    .restart local v4       #t2:J
    .restart local v6       #t3:J
    :catch_a0
    move-exception v11

    goto :goto_44
.end method
