.class public interface abstract Lcom/lge/sns/message/IMessageFacade$ThreadUpdateListener;
.super Ljava/lang/Object;
.source "IMessageFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/message/IMessageFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ThreadUpdateListener"
.end annotation


# virtual methods
.method public abstract onThreadAdded(Lcom/lge/sns/message/MessageThread;)V
.end method

.method public abstract onThreadRemoved(Lcom/lge/sns/message/MessageThread;)V
.end method

.method public abstract onThreadUpdated(Lcom/lge/sns/message/MessageThread;)V
.end method
