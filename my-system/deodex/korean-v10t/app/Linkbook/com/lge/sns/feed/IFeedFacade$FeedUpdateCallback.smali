.class public interface abstract Lcom/lge/sns/feed/IFeedFacade$FeedUpdateCallback;
.super Ljava/lang/Object;
.source "IFeedFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/feed/IFeedFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FeedUpdateCallback"
.end annotation


# virtual methods
.method public abstract onFeedUpdateFail(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/SnsException;)V
.end method

.method public abstract onFeedUpdateFinished(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onFeedUpdateStarted(Ljava/lang/String;Ljava/lang/String;)V
.end method
