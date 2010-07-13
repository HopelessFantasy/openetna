.class public interface abstract Lcom/lge/sns/media/IMediaFacade$MediaUploadCallback;
.super Ljava/lang/Object;
.source "IMediaFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/media/IMediaFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaUploadCallback"
.end annotation


# virtual methods
.method public abstract onMediaPartUploadFinished(Ljava/lang/String;)V
.end method

.method public abstract onMediaPartUploaded(Ljava/lang/String;I)V
.end method

.method public abstract onMediaUploadFail(Ljava/lang/Exception;)V
.end method

.method public abstract onMediaUploadFinished(Ljava/lang/String;)V
.end method

.method public abstract onMediaUploadStarted(Ljava/lang/String;I)V
.end method
