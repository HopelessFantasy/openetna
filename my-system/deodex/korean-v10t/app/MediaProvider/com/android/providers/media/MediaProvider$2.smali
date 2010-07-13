.class Lcom/android/providers/media/MediaProvider$2;
.super Landroid/os/Handler;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/MediaProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 301
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v1}, Lcom/android/providers/media/MediaProvider;->access$300(Lcom/android/providers/media/MediaProvider;)Ljava/util/Stack;

    move-result-object v1

    monitor-enter v1

    .line 302
    :try_start_7
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v2}, Lcom/android/providers/media/MediaProvider;->access$300(Lcom/android/providers/media/MediaProvider;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$ThumbData;

    .line 303
    .local v0, d:Lcom/android/providers/media/MediaProvider$ThumbData;
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_2d

    .line 305
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v1, v0}, Lcom/android/providers/media/MediaProvider;->access$400(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$ThumbData;)V

    .line 306
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v1}, Lcom/android/providers/media/MediaProvider;->access$500(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    .line 307
    :try_start_20
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$2;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v2}, Lcom/android/providers/media/MediaProvider;->access$500(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashSet;

    move-result-object v2

    iget-object v3, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 308
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_30

    .line 309
    return-void

    .line 303
    .end local v0           #d:Lcom/android/providers/media/MediaProvider$ThumbData;
    :catchall_2d
    move-exception v2

    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v2

    .line 308
    .restart local v0       #d:Lcom/android/providers/media/MediaProvider$ThumbData;
    :catchall_30
    move-exception v2

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v2
.end method
