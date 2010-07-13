.class Lcom/android/camera/ImageLoader$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageLoader;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ImageLoader;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageLoader;)V
    .registers 2
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/camera/ImageLoader$1;->this$0:Lcom/android/camera/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 188
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/camera/ImageLoader$1;->this$0:Lcom/android/camera/ImageLoader;

    invoke-static {v5}, Lcom/android/camera/ImageLoader;->access$000(Lcom/android/camera/ImageLoader;)Z

    move-result v5

    if-nez v5, :cond_8b

    .line 189
    const/4 v4, 0x0

    .line 190
    .local v4, workItem:Lcom/android/camera/ImageLoader$WorkItem;
    iget-object v5, p0, Lcom/android/camera/ImageLoader$1;->this$0:Lcom/android/camera/ImageLoader;

    invoke-static {v5}, Lcom/android/camera/ImageLoader;->access$100(Lcom/android/camera/ImageLoader;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 191
    :try_start_10
    iget-object v5, p0, Lcom/android/camera/ImageLoader$1;->this$0:Lcom/android/camera/ImageLoader;

    invoke-static {v5}, Lcom/android/camera/ImageLoader;->access$100(Lcom/android/camera/ImageLoader;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_72

    .line 192
    iget-object v5, p0, Lcom/android/camera/ImageLoader$1;->this$0:Lcom/android/camera/ImageLoader;

    invoke-static {v5}, Lcom/android/camera/ImageLoader;->access$100(Lcom/android/camera/ImageLoader;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/camera/ImageLoader$WorkItem;

    move-object v4, v0

    .line 193
    iget-object v5, p0, Lcom/android/camera/ImageLoader$1;->this$0:Lcom/android/camera/ImageLoader;

    invoke-static {v5}, Lcom/android/camera/ImageLoader;->access$200(Lcom/android/camera/ImageLoader;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    :goto_34
    monitor-exit v6
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_7e

    .line 202
    if-eqz v4, :cond_0

    .line 205
    const/4 v1, 0x0

    .line 207
    .local v1, b:Landroid/graphics/Bitmap;
    :try_start_38
    iget-object v5, v4, Lcom/android/camera/ImageLoader$WorkItem;->mImage:Lcom/android/camera/ImageManager$IImage;

    invoke-interface {v5}, Lcom/android/camera/ImageManager$IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3d} :catch_8c

    move-result-object v1

    .line 212
    :goto_3e
    if-nez v1, :cond_40

    .line 216
    :cond_40
    iget-object v5, p0, Lcom/android/camera/ImageLoader$1;->this$0:Lcom/android/camera/ImageLoader;

    invoke-static {v5}, Lcom/android/camera/ImageLoader;->access$100(Lcom/android/camera/ImageLoader;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 217
    :try_start_47
    iget-object v6, p0, Lcom/android/camera/ImageLoader$1;->this$0:Lcom/android/camera/ImageLoader;

    invoke-static {v6}, Lcom/android/camera/ImageLoader;->access$200(Lcom/android/camera/ImageLoader;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 218
    monitor-exit v5
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_81

    .line 220
    iget-object v5, v4, Lcom/android/camera/ImageLoader$WorkItem;->mOnLoadedRunnable:Lcom/android/camera/ImageLoader$LoadedCallback;

    if-eqz v5, :cond_0

    .line 221
    iget-boolean v5, v4, Lcom/android/camera/ImageLoader$WorkItem;->mPostBack:Z

    if-eqz v5, :cond_84

    .line 222
    move-object v3, v4

    .line 223
    .local v3, w1:Lcom/android/camera/ImageLoader$WorkItem;
    move-object v2, v1

    .line 224
    .local v2, bitmap:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/camera/ImageLoader$1;->this$0:Lcom/android/camera/ImageLoader;

    invoke-static {v5}, Lcom/android/camera/ImageLoader;->access$000(Lcom/android/camera/ImageLoader;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 225
    iget-object v5, p0, Lcom/android/camera/ImageLoader$1;->this$0:Lcom/android/camera/ImageLoader;

    invoke-static {v5}, Lcom/android/camera/ImageLoader;->access$300(Lcom/android/camera/ImageLoader;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/camera/ImageLoader$1$1;

    invoke-direct {v6, p0, v3, v2}, Lcom/android/camera/ImageLoader$1$1;-><init>(Lcom/android/camera/ImageLoader$1;Lcom/android/camera/ImageLoader$WorkItem;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 197
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #w1:Lcom/android/camera/ImageLoader$WorkItem;
    :cond_72
    :try_start_72
    iget-object v5, p0, Lcom/android/camera/ImageLoader$1;->this$0:Lcom/android/camera/ImageLoader;

    invoke-static {v5}, Lcom/android/camera/ImageLoader;->access$100(Lcom/android/camera/ImageLoader;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_7b
    .catchall {:try_start_72 .. :try_end_7b} :catchall_7e
    .catch Ljava/lang/InterruptedException; {:try_start_72 .. :try_end_7b} :catch_7c

    goto :goto_34

    .line 198
    :catch_7c
    move-exception v5

    goto :goto_34

    .line 201
    :catchall_7e
    move-exception v5

    :try_start_7f
    monitor-exit v6
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v5

    .line 218
    .restart local v1       #b:Landroid/graphics/Bitmap;
    :catchall_81
    move-exception v6

    :try_start_82
    monitor-exit v5
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw v6

    .line 232
    :cond_84
    iget-object v5, v4, Lcom/android/camera/ImageLoader$WorkItem;->mOnLoadedRunnable:Lcom/android/camera/ImageLoader$LoadedCallback;

    invoke-interface {v5, v1}, Lcom/android/camera/ImageLoader$LoadedCallback;->run(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 237
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v4           #workItem:Lcom/android/camera/ImageLoader$WorkItem;
    :cond_8b
    return-void

    .line 208
    .restart local v1       #b:Landroid/graphics/Bitmap;
    .restart local v4       #workItem:Lcom/android/camera/ImageLoader$WorkItem;
    :catch_8c
    move-exception v5

    goto :goto_3e
.end method
