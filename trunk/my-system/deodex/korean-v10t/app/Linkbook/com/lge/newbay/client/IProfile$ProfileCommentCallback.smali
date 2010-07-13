.class public interface abstract Lcom/lge/newbay/client/IProfile$ProfileCommentCallback;
.super Ljava/lang/Object;
.source "IProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/IProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProfileCommentCallback"
.end annotation


# virtual methods
.method public abstract notifyProfileComment(Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;)Z
.end method

.method public abstract notifyProfileCommentError(Lcom/lge/feed/atom/Entry;Ljava/lang/Exception;)Z
.end method

.method public abstract notifyProfileCommentFinished()V
.end method

.method public abstract notifyProfileCommentStarted(Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;)V
.end method
