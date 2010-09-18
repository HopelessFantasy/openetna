.class public interface abstract Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;
.super Ljava/lang/Object;
.source "IMediaFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/media/IMediaFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaFolderUpdateListener"
.end annotation


# virtual methods
.method public abstract mediaFolderAdded(Lcom/lge/sns/media/MediaFolder;)V
.end method

.method public abstract mediaFolderRemoved(Lcom/lge/sns/media/MediaFolder;)V
.end method

.method public abstract mediaFolderUpdated(Lcom/lge/sns/media/MediaFolder;)V
.end method
