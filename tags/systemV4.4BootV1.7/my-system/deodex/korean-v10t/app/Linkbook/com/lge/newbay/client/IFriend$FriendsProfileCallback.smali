.class public interface abstract Lcom/lge/newbay/client/IFriend$FriendsProfileCallback;
.super Ljava/lang/Object;
.source "IFriend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/newbay/client/IFriend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FriendsProfileCallback"
.end annotation


# virtual methods
.method public abstract notifyFriendsProfile(Lcom/lge/newbay/client/IProfile$SnsUserProfile;)Z
.end method

.method public abstract notifyFriendsProfileError(Lcom/lge/feed/atom/Entry;Ljava/lang/Exception;)Z
.end method

.method public abstract notifyFriendsProfileFinished()V
.end method

.method public abstract notifyFriendsProfileStarted()V
.end method
