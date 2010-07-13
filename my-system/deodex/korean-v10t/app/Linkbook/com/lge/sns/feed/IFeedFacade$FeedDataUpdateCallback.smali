.class public interface abstract Lcom/lge/sns/feed/IFeedFacade$FeedDataUpdateCallback;
.super Ljava/lang/Object;
.source "IFeedFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/feed/IFeedFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FeedDataUpdateCallback"
.end annotation


# virtual methods
.method public abstract onFeedDataUpdateFail(Lcom/lge/sns/SnsException;)V
.end method

.method public abstract onFeedDataUpdateFinished(JLjava/lang/String;Landroid/net/Uri;)V
.end method

.method public abstract onFeedDataUpdateStarted()V
.end method
