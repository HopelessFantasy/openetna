.class public interface abstract Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;
.super Ljava/lang/Object;
.source "IProfileFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/IProfileFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProfileUpdateListener"
.end annotation


# virtual methods
.method public abstract onProfileAdded(Lcom/lge/sns/profile/Profile;)V
.end method

.method public abstract onProfileAvatarLoaded(Ljava/lang/String;Ljava/lang/String;[B)V
.end method

.method public abstract onProfileRemoved(Lcom/lge/sns/profile/Profile;)V
.end method

.method public abstract onProfileUpdated(Lcom/lge/sns/profile/Profile;)V
.end method
