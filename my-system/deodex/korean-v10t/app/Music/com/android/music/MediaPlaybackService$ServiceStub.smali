.class Lcom/android/music/MediaPlaybackService$ServiceStub;
.super Lcom/android/music/IMediaPlaybackService$Stub;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceStub"
.end annotation


# instance fields
.field mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/music/MediaPlaybackService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .registers 3
    .parameter "service"

    .prologue
    .line 1849
    invoke-direct {p0}, Lcom/android/music/IMediaPlaybackService$Stub;-><init>()V

    .line 1850
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 1851
    return-void
.end method


# virtual methods
.method public duration()J
    .registers 3

    .prologue
    .line 1922
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public enqueue([II)V
    .registers 4
    .parameter "list"
    .parameter "action"

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->enqueue([II)V

    .line 1905
    return-void
.end method

.method public getAlbumId()I
    .registers 2

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAlbumId()I

    move-result v0

    return v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistId()I
    .registers 2

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getArtistId()I

    move-result v0

    return v0
.end method

.method public getArtistName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioId()I
    .registers 2

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getAudioId()I

    move-result v0

    return v0
.end method

.method public getMediaMountedCount()I
    .registers 2

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getMediaMountedCount()I

    move-result v0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()[I
    .registers 2

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getQueue()[I

    move-result-object v0

    return-object v0
.end method

.method public getQueuePosition()I
    .registers 2

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getQueuePosition()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .registers 2

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .registers 2

    .prologue
    .line 1931
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getShuffleMode()I

    move-result v0

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 1871
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public moveQueueItem(II)V
    .registers 4
    .parameter "from"
    .parameter "to"

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->moveQueueItem(II)V

    .line 1911
    return-void
.end method

.method public next()V
    .registers 2

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/music/MediaPlaybackService;->next(Z)V

    .line 1887
    return-void
.end method

.method public open([II)V
    .registers 4
    .parameter "list"
    .parameter "position"

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->open([II)V

    .line 1863
    return-void
.end method

.method public openFile(Ljava/lang/String;Z)V
    .registers 4
    .parameter "path"
    .parameter "oneShot"

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->open(Ljava/lang/String;Z)Z

    .line 1860
    return-void
.end method

.method public openFileAsync(Ljava/lang/String;)V
    .registers 3
    .parameter "path"

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackService;->openAsync(Ljava/lang/String;)V

    .line 1856
    return-void
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 1878
    return-void
.end method

.method public play()V
    .registers 2

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 1881
    return-void
.end method

.method public position()J
    .registers 3

    .prologue
    .line 1919
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prev()V
    .registers 2

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->prev()V

    .line 1884
    return-void
.end method

.method public removeTrack(I)I
    .registers 3
    .parameter "id"

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackService;->removeTrack(I)I

    move-result v0

    return v0
.end method

.method public removeTracks(II)I
    .registers 4
    .parameter "first"
    .parameter "last"

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->removeTracks(II)I

    move-result v0

    return v0
.end method

.method public seek(J)J
    .registers 5
    .parameter "pos"

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1, p2}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setQueuePosition(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackService;->setQueuePosition(I)V

    .line 1869
    return-void
.end method

.method public setRepeatMode(I)V
    .registers 3
    .parameter "repeatmode"

    .prologue
    .line 1940
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackService;->setRepeatMode(I)V

    .line 1941
    return-void
.end method

.method public setShuffleMode(I)V
    .registers 3
    .parameter "shufflemode"

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0, p1}, Lcom/android/music/MediaPlaybackService;->setShuffleMode(I)V

    .line 1929
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {p0}, Lcom/android/music/MediaPlaybackService;->stop()V

    .line 1875
    return-void
.end method
