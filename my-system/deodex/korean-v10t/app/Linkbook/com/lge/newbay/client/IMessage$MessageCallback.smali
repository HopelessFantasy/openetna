.class public interface abstract Lcom/lge/newbay/client/IMessage$MessageCallback;
.super Ljava/lang/Object;
.source "IMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/IMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageCallback"
.end annotation


# virtual methods
.method public abstract notifyMessage(Lcom/lge/newbay/client/IMessage$SnMessage;)Z
.end method

.method public abstract notifyMessageError(Lcom/lge/feed/atom/Entry;Ljava/lang/Exception;)Z
.end method

.method public abstract notifyMessageFinished()V
.end method

.method public abstract notifyMessageStarted(Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;)V
.end method
