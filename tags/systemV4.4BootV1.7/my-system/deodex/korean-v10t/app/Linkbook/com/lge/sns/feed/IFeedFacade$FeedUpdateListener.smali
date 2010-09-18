.class public interface abstract Lcom/lge/sns/feed/IFeedFacade$FeedUpdateListener;
.super Ljava/lang/Object;
.source "IFeedFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/feed/IFeedFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FeedUpdateListener"
.end annotation


# virtual methods
.method public abstract onFeedAdded(Lcom/lge/sns/feed/Feed;)V
.end method

.method public abstract onFeedRemoved(Lcom/lge/sns/feed/Feed;)V
.end method

.method public abstract onFeedUpdated(Lcom/lge/sns/feed/Feed;)V
.end method
