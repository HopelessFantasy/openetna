.class public interface abstract Lcom/android/mms/ui/SlideViewInterface;
.super Ljava/lang/Object;
.source "SlideViewInterface.java"

# interfaces
.implements Lcom/android/mms/ui/ViewInterface;


# virtual methods
.method public abstract pauseAudio()V
.end method

.method public abstract pauseVideo()V
.end method

.method public abstract seekAudio(I)V
.end method

.method public abstract seekVideo(I)V
.end method

.method public abstract setAttachSizeCounter(Lcom/android/mms/model/SlideshowModel;)V
.end method

.method public abstract setAudio(Lcom/android/mms/model/AudioModel;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/AudioModel;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract setAudio(Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/SlideshowModel;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract setDrmAudio(Lcom/android/mms/model/AudioModel;I)V
.end method

.method public abstract setDrmImage(Lcom/android/mms/model/ImageModel;Landroid/graphics/Bitmap;I)V
.end method

.method public abstract setDrmVideo(Lcom/android/mms/model/VideoModel;I)V
.end method

.method public abstract setImage(Lcom/android/mms/model/ImageModel;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract setImage(Lcom/android/mms/model/SlideshowModel;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract setImageRegionFit(Ljava/lang/String;)V
.end method

.method public abstract setImageVisibility(Z)V
.end method

.method public abstract setText(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setTextVisibility(Z)V
.end method

.method public abstract setVideo(Lcom/android/mms/model/SlideshowModel;Ljava/lang/String;Landroid/net/Uri;)V
.end method

.method public abstract setVideo(Lcom/android/mms/model/VideoModel;Ljava/lang/String;Landroid/net/Uri;)V
.end method

.method public abstract setVideoVisibility(Z)V
.end method

.method public abstract startAudio()V
.end method

.method public abstract startVideo()V
.end method

.method public abstract stopAudio()V
.end method

.method public abstract stopVideo()V
.end method
