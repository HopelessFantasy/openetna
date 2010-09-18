.class public interface abstract Lcom/lge/sns/message/IMessageFacade$MessageUpdateListener;
.super Ljava/lang/Object;
.source "IMessageFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/message/IMessageFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageUpdateListener"
.end annotation


# virtual methods
.method public abstract onMessageAdded(Lcom/lge/sns/message/Message;)V
.end method

.method public abstract onMessageRemoved(Lcom/lge/sns/message/Message;)V
.end method

.method public abstract onMessageUpdated(Lcom/lge/sns/message/Message;)V
.end method
