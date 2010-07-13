.class public interface abstract Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;
.super Ljava/lang/Object;
.source "IProfileFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/IProfileFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FriendEntryCallback"
.end annotation


# virtual methods
.method public abstract onFirendEntryLoadFinished()V
.end method

.method public abstract onFirendEntryLoadStarted(ZZ)V
.end method

.method public abstract onFirendEntryLoaded(Lcom/lge/sns/profile/FriendEntry;)V
.end method

.method public abstract onFriendEntryLoadError(Ljava/lang/Exception;)V
.end method
