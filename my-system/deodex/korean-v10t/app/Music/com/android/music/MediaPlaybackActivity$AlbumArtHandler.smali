.class public Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;
.super Landroid/os/Handler;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlbumArtHandler"
.end annotation


# instance fields
.field private mAlbumId:I

.field final synthetic this$0:Lcom/android/music/MediaPlaybackActivity;


# direct methods
.method public constructor <init>(Lcom/android/music/MediaPlaybackActivity;Landroid/os/Looper;)V
    .registers 4
    .parameter
    .parameter "looper"

    .prologue
    .line 1380
    iput-object p1, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    .line 1381
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1378
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->mAlbumId:I

    .line 1382
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x4

    .line 1385
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1386
    .local v0, albumid:I
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5d

    iget v3, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->mAlbumId:I

    if-ne v3, v0, :cond_e

    if-gez v0, :cond_5d

    .line 1388
    :cond_e
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$2400(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1389
    .local v2, numsg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$2400(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1390
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$2400(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1391
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v3, v0}, Lcom/android/music/MusicUtils;->getArtwork(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1392
    .local v1, bm:Landroid/graphics/Bitmap;
    if-nez v1, :cond_3d

    .line 1393
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/android/music/MusicUtils;->getArtwork(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1394
    const/4 v0, -0x1

    .line 1396
    :cond_3d
    if-eqz v1, :cond_5b

    .line 1397
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$2400(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1398
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$2400(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1399
    iget-object v3, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->this$0:Lcom/android/music/MediaPlaybackActivity;

    invoke-static {v3}, Lcom/android/music/MediaPlaybackActivity;->access$2400(Lcom/android/music/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1401
    :cond_5b
    iput v0, p0, Lcom/android/music/MediaPlaybackActivity$AlbumArtHandler;->mAlbumId:I

    .line 1403
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v2           #numsg:Landroid/os/Message;
    :cond_5d
    return-void
.end method
