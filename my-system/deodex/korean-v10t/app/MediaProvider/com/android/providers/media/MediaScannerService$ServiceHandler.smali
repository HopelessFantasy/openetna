.class final Lcom/android/providers/media/MediaScannerService$ServiceHandler;
.super Landroid/os/Handler;
.source "MediaScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaScannerService;


# direct methods
.method private constructor <init>(Lcom/android/providers/media/MediaScannerService;)V
    .registers 2
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/media/MediaScannerService;Lcom/android/providers/media/MediaScannerService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;-><init>(Lcom/android/providers/media/MediaScannerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .parameter "msg"

    .prologue
    const-string v9, "external"

    const-string v9, "/media"

    const-string v12, "MediaScannerService"

    .line 247
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 248
    .local v0, arguments:Landroid/os/Bundle;
    const-string v9, "filepath"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, filePath:Ljava/lang/String;
    if-eqz v4, :cond_3b

    .line 252
    :try_start_12
    const-string v9, "listener"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 253
    .local v1, binder:Landroid/os/IBinder;
    if-nez v1, :cond_35

    const/4 v9, 0x0

    move-object v5, v9

    .line 255
    .local v5, listener:Landroid/media/IMediaScannerListener;
    :goto_1c
    iget-object v9, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-string v10, "mimetype"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v4, v10}, Lcom/android/providers/media/MediaScannerService;->access$100(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 256
    .local v7, uri:Landroid/net/Uri;
    if-eqz v5, :cond_2d

    .line 257
    invoke-interface {v5, v4, v7}, Landroid/media/IMediaScannerListener;->scanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2d} :catch_fc

    .line 312
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v5           #listener:Landroid/media/IMediaScannerListener;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_2d
    :goto_2d
    iget-object v9, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Lcom/android/providers/media/MediaScannerService;->stopSelf(I)V

    .line 313
    return-void

    .line 253
    .restart local v1       #binder:Landroid/os/IBinder;
    :cond_35
    :try_start_35
    invoke-static {v1}, Landroid/media/IMediaScannerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerListener;

    move-result-object v9

    move-object v5, v9

    goto :goto_1c

    .line 260
    .end local v1           #binder:Landroid/os/IBinder;
    :cond_3b
    const-string v9, "volume"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 261
    .local v8, volume:Ljava/lang/String;
    const/4 v2, 0x0

    .line 263
    .local v2, directories:[Ljava/lang/String;
    const-string v9, "internal"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_107

    .line 265
    const/4 v9, 0x1

    new-array v2, v9, [Ljava/lang/String;

    .end local v2           #directories:[Ljava/lang/String;
    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/media"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    .line 276
    .restart local v2       #directories:[Ljava/lang/String;
    :cond_67
    :goto_67
    if-eqz v2, :cond_9e

    .line 277
    const-string v9, "MediaScannerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "start scanning volume "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v9, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-static {v9, v2, v8}, Lcom/android/providers/media/MediaScannerService;->access$200(Lcom/android/providers/media/MediaScannerService;[Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v9, "MediaScannerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "done scanning volume "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_9e
    const-string v9, "internal"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2d

    .line 290
    new-instance v6, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/media"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .local v6, mediaDir:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_11f

    .line 293
    const/4 v9, 0x1

    new-array v2, v9, [Ljava/lang/String;

    .end local v2           #directories:[Ljava/lang/String;
    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/media"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    .line 297
    .restart local v2       #directories:[Ljava/lang/String;
    const-string v9, "MediaScannerService"

    const-string v10, "start scanning /data/media"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v9, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-string v10, "external"

    invoke-static {v9, v2, v10}, Lcom/android/providers/media/MediaScannerService;->access$200(Lcom/android/providers/media/MediaScannerService;[Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v9, "MediaScannerService"

    const-string v10, "done scanning /data/media"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_fa} :catch_fc

    goto/16 :goto_2d

    .line 308
    .end local v2           #directories:[Ljava/lang/String;
    .end local v6           #mediaDir:Ljava/io/File;
    .end local v8           #volume:Ljava/lang/String;
    :catch_fc
    move-exception v9

    move-object v3, v9

    .line 309
    .local v3, e:Ljava/lang/Exception;
    const-string v9, "MediaScannerService"

    const-string v9, "Exception in handleMessage"

    invoke-static {v12, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2d

    .line 269
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #directories:[Ljava/lang/String;
    .restart local v8       #volume:Ljava/lang/String;
    :cond_107
    :try_start_107
    const-string v9, "external"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_67

    .line 271
    const/4 v9, 0x1

    new-array v2, v9, [Ljava/lang/String;

    .end local v2           #directories:[Ljava/lang/String;
    const/4 v9, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v9

    .restart local v2       #directories:[Ljava/lang/String;
    goto/16 :goto_67

    .line 304
    .restart local v6       #mediaDir:Ljava/io/File;
    :cond_11f
    const-string v9, "MediaScannerService"

    const-string v10, "Directory not found: /data/media"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_126} :catch_fc

    goto/16 :goto_2d
.end method
