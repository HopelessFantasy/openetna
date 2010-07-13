.class public Lcom/lge/sns/account/DefaultAccountInitializer;
.super Lcom/lge/sns/account/AccountInitializer;
.source "DefaultAccountInitializer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "ctx"
    .parameter "snsId"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/account/AccountInitializer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected getInitializeJob()Ljava/lang/Runnable;
    .registers 6

    .prologue
    .line 34
    iget-object v3, p0, Lcom/lge/sns/account/DefaultAccountInitializer;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {p0}, Lcom/lge/sns/account/DefaultAccountInitializer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v2

    .line 35
    .local v2, profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    iget-object v3, p0, Lcom/lge/sns/account/DefaultAccountInitializer;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {p0}, Lcom/lge/sns/account/DefaultAccountInitializer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/sns/SnsManager;->getMedia(Landroid/content/Context;)Lcom/lge/sns/media/IMediaFacade;

    move-result-object v0

    .line 36
    .local v0, mediaFacade:Lcom/lge/sns/media/IMediaFacade;
    iget-object v3, p0, Lcom/lge/sns/account/DefaultAccountInitializer;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {p0}, Lcom/lge/sns/account/DefaultAccountInitializer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/sns/SnsManager;->getMessage(Landroid/content/Context;)Lcom/lge/sns/message/IMessageFacade;

    move-result-object v1

    .line 37
    .local v1, messageFacade:Lcom/lge/sns/message/IMessageFacade;
    new-instance v3, Lcom/lge/sns/account/DefaultAccountInitializer$1;

    invoke-direct {v3, p0, v2, v1, v0}, Lcom/lge/sns/account/DefaultAccountInitializer$1;-><init>(Lcom/lge/sns/account/DefaultAccountInitializer;Lcom/lge/sns/profile/IProfileFacade;Lcom/lge/sns/message/IMessageFacade;Lcom/lge/sns/media/IMediaFacade;)V

    return-object v3
.end method
