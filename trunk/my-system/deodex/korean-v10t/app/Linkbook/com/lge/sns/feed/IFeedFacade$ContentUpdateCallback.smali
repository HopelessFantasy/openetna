.class public interface abstract Lcom/lge/sns/feed/IFeedFacade$ContentUpdateCallback;
.super Ljava/lang/Object;
.source "IFeedFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/feed/IFeedFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContentUpdateCallback"
.end annotation


# virtual methods
.method public abstract onContentUpdateFail(Ljava/lang/String;[Ljava/lang/String;Lcom/lge/sns/SnsException;)V
.end method

.method public abstract onContentUpdateFinished(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onContentUpdateStarted(Ljava/lang/String;[Ljava/lang/String;)V
.end method
