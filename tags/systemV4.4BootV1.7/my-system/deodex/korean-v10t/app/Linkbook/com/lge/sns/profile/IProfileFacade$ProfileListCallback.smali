.class public interface abstract Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;
.super Ljava/lang/Object;
.source "IProfileFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/IProfileFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProfileListCallback"
.end annotation


# virtual methods
.method public abstract onLoadFriends(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/ProfileListItem;",
            ">;Z)V"
        }
    .end annotation
.end method
