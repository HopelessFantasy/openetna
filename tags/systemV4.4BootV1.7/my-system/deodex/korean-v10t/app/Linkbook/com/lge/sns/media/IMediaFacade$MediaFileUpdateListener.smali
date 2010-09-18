.class public interface abstract Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;
.super Ljava/lang/Object;
.source "IMediaFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/media/IMediaFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaFileUpdateListener"
.end annotation


# virtual methods
.method public abstract mediaFileAdded(Lcom/lge/sns/media/MediaFile;)V
.end method

.method public abstract mediaFileRemoved(Lcom/lge/sns/media/MediaFile;)V
.end method

.method public abstract mediaFileUpdated(Lcom/lge/sns/media/MediaFile;)V
.end method

.method public abstract mediaThumbnailUpdated(Lcom/lge/sns/media/MediaFile;)V
.end method
