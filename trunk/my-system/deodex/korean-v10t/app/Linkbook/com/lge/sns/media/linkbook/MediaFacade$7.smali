.class Lcom/lge/sns/media/linkbook/MediaFacade$7;
.super Ljava/lang/Object;
.source "MediaFacade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/media/linkbook/MediaFacade;->getThumbnailBitmap(Lcom/lge/sns/media/MediaFile;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$mf:Lcom/lge/sns/media/MediaFile;


# direct methods
.method constructor <init>(Lcom/lge/sns/media/linkbook/MediaFacade;Lcom/lge/sns/media/MediaFile;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2058
    iput-object p1, p0, Lcom/lge/sns/media/linkbook/MediaFacade$7;->this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

    iput-object p2, p0, Lcom/lge/sns/media/linkbook/MediaFacade$7;->val$mf:Lcom/lge/sns/media/MediaFile;

    iput-object p3, p0, Lcom/lge/sns/media/linkbook/MediaFacade$7;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 2060
    :try_start_0
    iget-object v4, p0, Lcom/lge/sns/media/linkbook/MediaFacade$7;->this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

    iget-object v5, p0, Lcom/lge/sns/media/linkbook/MediaFacade$7;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v5}, Lcom/lge/sns/media/MediaFile;->getThumbnailLink()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x52

    const/16 v7, 0x52

    invoke-static {v4, v5, v6, v7}, Lcom/lge/sns/media/linkbook/MediaFacade;->access$500(Lcom/lge/sns/media/linkbook/MediaFacade;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2061
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2a

    .line 2063
    iget-object v4, p0, Lcom/lge/sns/media/linkbook/MediaFacade$7;->this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

    iget-object v5, p0, Lcom/lge/sns/media/linkbook/MediaFacade$7;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-static {}, Lcom/lge/sns/media/IMediaFacade$BitmapDecoder;->getInstance()Lcom/lge/sns/media/IMediaFacade$BitmapDecoder;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/lge/sns/media/linkbook/MediaFacade;->getOrignalMedia(Lcom/lge/sns/media/MediaFile;Lcom/lge/sns/media/IMediaFacade$MediaDecoder;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 2064
    .local v2, org:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/lge/sns/media/linkbook/MediaFacade$7;->this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

    const/16 v5, 0x52

    const/16 v6, 0x52

    invoke-static {v4, v2, v5, v6}, Lcom/lge/sns/media/linkbook/MediaFacade;->access$600(Lcom/lge/sns/media/linkbook/MediaFacade;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2066
    .end local v2           #org:Landroid/graphics/Bitmap;
    :cond_2a
    if-eqz v0, :cond_49

    .line 2067
    sget-object v4, Lcom/lge/sns/media/linkbook/MediaFacade;->thumbnailCache:Lcom/lge/util/LRUHashMap;

    iget-object v5, p0, Lcom/lge/sns/media/linkbook/MediaFacade$7;->val$key:Ljava/lang/String;

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5, v6}, Lcom/lge/util/LRUHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2068
    iget-object v4, p0, Lcom/lge/sns/media/linkbook/MediaFacade$7;->this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

    invoke-static {v4, v0}, Lcom/lge/sns/media/linkbook/MediaFacade;->access$700(Lcom/lge/sns/media/linkbook/MediaFacade;Landroid/graphics/Bitmap;)[B

    move-result-object v3

    .line 2069
    .local v3, raw:[B
    iget-object v4, p0, Lcom/lge/sns/media/linkbook/MediaFacade$7;->this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

    iget-object v5, p0, Lcom/lge/sns/media/linkbook/MediaFacade$7;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v5}, Lcom/lge/sns/media/MediaFile;->getId()J

    move-result-wide v5

    invoke-static {v4, v5, v6, v3}, Lcom/lge/sns/media/linkbook/MediaFacade;->access$800(Lcom/lge/sns/media/linkbook/MediaFacade;J[B)Z
    :try_end_49
    .catchall {:try_start_0 .. :try_end_49} :catchall_80
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_49} :catch_60

    .line 2075
    .end local v3           #raw:[B
    :cond_49
    iget-object v4, p0, Lcom/lge/sns/media/linkbook/MediaFacade$7;->this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

    iget-object v4, v4, Lcom/lge/sns/media/linkbook/MediaFacade;->thumbnailLoading:Ljava/util/Set;

    monitor-enter v4

    .line 2076
    :try_start_4e
    iget-object v5, p0, Lcom/lge/sns/media/linkbook/MediaFacade$7;->this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

    iget-object v5, v5, Lcom/lge/sns/media/linkbook/MediaFacade;->thumbnailLoading:Ljava/util/Set;

    iget-object v6, p0, Lcom/lge/sns/media/linkbook/MediaFacade$7;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v6}, Lcom/lge/sns/media/MediaFile;->getThumbnailLink()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2077
    monitor-exit v4

    .line 2079
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_5c
    return-void

    .line 2077
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :catchall_5d
    move-exception v5

    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_4e .. :try_end_5f} :catchall_5d

    throw v5

    .line 2071
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_60
    move-exception v4

    move-object v1, v4

    .line 2072
    .local v1, e:Ljava/lang/Throwable;
    :try_start_62
    invoke-static {}, Lcom/lge/sns/CacheManager;->getInstance()Lcom/lge/sns/CacheManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/sns/CacheManager;->clearCache()V
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_80

    .line 2075
    iget-object v4, p0, Lcom/lge/sns/media/linkbook/MediaFacade$7;->this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

    iget-object v4, v4, Lcom/lge/sns/media/linkbook/MediaFacade;->thumbnailLoading:Ljava/util/Set;

    monitor-enter v4

    .line 2076
    :try_start_6e
    iget-object v5, p0, Lcom/lge/sns/media/linkbook/MediaFacade$7;->this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

    iget-object v5, v5, Lcom/lge/sns/media/linkbook/MediaFacade;->thumbnailLoading:Ljava/util/Set;

    iget-object v6, p0, Lcom/lge/sns/media/linkbook/MediaFacade$7;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v6}, Lcom/lge/sns/media/MediaFile;->getThumbnailLink()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2077
    monitor-exit v4

    goto :goto_5c

    :catchall_7d
    move-exception v5

    monitor-exit v4
    :try_end_7f
    .catchall {:try_start_6e .. :try_end_7f} :catchall_7d

    throw v5

    .line 2075
    .end local v1           #e:Ljava/lang/Throwable;
    :catchall_80
    move-exception v4

    iget-object v5, p0, Lcom/lge/sns/media/linkbook/MediaFacade$7;->this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

    iget-object v5, v5, Lcom/lge/sns/media/linkbook/MediaFacade;->thumbnailLoading:Ljava/util/Set;

    monitor-enter v5

    .line 2076
    :try_start_86
    iget-object v6, p0, Lcom/lge/sns/media/linkbook/MediaFacade$7;->this$0:Lcom/lge/sns/media/linkbook/MediaFacade;

    iget-object v6, v6, Lcom/lge/sns/media/linkbook/MediaFacade;->thumbnailLoading:Ljava/util/Set;

    iget-object v7, p0, Lcom/lge/sns/media/linkbook/MediaFacade$7;->val$mf:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v7}, Lcom/lge/sns/media/MediaFile;->getThumbnailLink()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2077
    monitor-exit v5
    :try_end_94
    .catchall {:try_start_86 .. :try_end_94} :catchall_95

    throw v4

    :catchall_95
    move-exception v4

    :try_start_96
    monitor-exit v5
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v4
.end method
