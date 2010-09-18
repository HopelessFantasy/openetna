.class Lcom/android/music/MediaPlaybackService$MultiPlayer;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiPlayer"
.end annotation


# instance fields
.field errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field listener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsInitialized:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

.field final synthetic this$0:Lcom/android/music/MediaPlaybackService;


# direct methods
.method public constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .registers 4
    .parameter

    .prologue
    .line 1693
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1689
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1691
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 1778
    new-instance v0, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer$1;-><init>(Lcom/android/music/MediaPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 1792
    new-instance v0, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer$2;-><init>(Lcom/android/music/MediaPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 1798
    new-instance v0, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;

    invoke-direct {v0, p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer$3;-><init>(Lcom/android/music/MediaPlaybackService$MultiPlayer;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1694
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 1695
    return-void
.end method

.method static synthetic access$1800(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/music/MediaPlaybackService$MultiPlayer;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1688
    iput-boolean p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/android/music/MediaPlaybackService$MultiPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/music/MediaPlaybackService$MultiPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1688
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method


# virtual methods
.method public duration()J
    .registers 3

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 1746
    iget-boolean v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    return v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 1771
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1768
    return-void
.end method

.method public position()J
    .registers 3

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public release()V
    .registers 2

    .prologue
    .line 1762
    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService$MultiPlayer;->stop()V

    .line 1763
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 1764
    return-void
.end method

.method public seek(J)J
    .registers 5
    .parameter "whereto"

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1833
    return-wide p1
.end method

.method public setDataSource(Ljava/lang/String;)V
    .registers 7
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 1721
    :try_start_1
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 1722
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1723
    const-string v1, "content://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1724
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->this$0:Lcom/android/music/MediaPlaybackService;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1728
    :goto_1f
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1729
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2a} :catch_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_2a} :catch_47

    .line 1739
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1740
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1742
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 1743
    :goto_3b
    return-void

    .line 1726
    :cond_3c
    :try_start_3c
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_41} :catch_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_41} :catch_47

    goto :goto_1f

    .line 1730
    :catch_42
    move-exception v1

    move-object v0, v1

    .line 1732
    .local v0, ex:Ljava/io/IOException;
    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    goto :goto_3b

    .line 1734
    .end local v0           #ex:Ljava/io/IOException;
    :catch_47
    move-exception v1

    move-object v0, v1

    .line 1736
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    iput-boolean v4, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    goto :goto_3b
.end method

.method public setDataSourceAsync(Ljava/lang/String;)V
    .registers 6
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 1699
    :try_start_1
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 1700
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1701
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 1702
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->preparedlistener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1703
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1d} :catch_34

    .line 1713
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->listener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1714
    iget-object v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1716
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 1717
    :goto_2e
    return-void

    .line 1704
    :catch_2f
    move-exception v1

    move-object v0, v1

    .line 1706
    .local v0, ex:Ljava/io/IOException;
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    goto :goto_2e

    .line 1708
    .end local v0           #ex:Ljava/io/IOException;
    :catch_34
    move-exception v1

    move-object v0, v1

    .line 1710
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    iput-boolean v3, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    goto :goto_2e
.end method

.method public setHandler(Landroid/os/Handler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 1775
    iput-object p1, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mHandler:Landroid/os/Handler;

    .line 1776
    return-void
.end method

.method public setVolume(F)V
    .registers 3
    .parameter "vol"

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1838
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1751
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 1755
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/MediaPlaybackService$MultiPlayer;->mIsInitialized:Z

    .line 1756
    return-void
.end method
